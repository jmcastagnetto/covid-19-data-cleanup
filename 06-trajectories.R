library(tidyverse)

world <- readRDS("data/covid-19_ts_combined.rds") %>%
  filter(confirmed > 2) %>%
  as_tibble()

mk_plots <- function(data, continent_str) {
  df <- data %>%
    filter(continent == continent_str) %>%
    group_by(continent, who_region, world_bank_income_group, iso3c, country_region, ts) %>%
    summarise(
      confirmed = sum(confirmed, na.rm = TRUE),
      recovered = sum(recovered, na.rm = TRUE),
      deaths = sum(deaths, na.rma = TRUE)
    ) %>%
    mutate(
      wk_before_confirmed = lag(confirmed, 7) - (lag(recovered, 7) + lag(deaths, 7)),
      new_confirmed = (confirmed - (recovered + deaths)) - wk_before_confirmed,  # 7 days lag,
      max_confirmed = max(confirmed, na.rm = TRUE),
      max_new_confirmed = max(new_confirmed, na.rm = TRUE),
      world_bank_income_group = fct_relevel(
        world_bank_income_group,
        "High income",
        "Upper middle income",
        "Lower middle income",
        "Low income"
      )
    ) %>%
    left_join(
      countrycode::codelist %>% select(iso3c, region),
      by = "iso3c"
    ) %>%
    filter(
      !is.na(new_confirmed)
    )

  lbls <- df %>%
    group_by(
      continent, region, who_region, world_bank_income_group, iso3c, country_region
    ) %>%
    summarise(
      max_confirmed = unique(max_confirmed),
      max_new_confirmed = unique(max_new_confirmed)
    )

  ggplot(df,
         aes(x = confirmed, y = new_confirmed, color = iso3c)) +
    geom_line(show.legend = FALSE, size = 0.5) +
    scale_x_log10() +
    scale_y_log10() +
    annotation_logticks() +
    # geom_point(
    #   data = lbls,
    #   aes(x = max_confirmed, y = max_new_confirmed),
    #   show.legend = FALSE
    # ) +
    ggrepel::geom_text_repel(
      data = lbls,
      aes(x = max_confirmed, y = max_new_confirmed, label = iso3c),
      alpha = 0.7,
      show.legend = FALSE
    ) +
    theme_bw(14) +
    facet_wrap(~region+world_bank_income_group, scales = "free") +
    labs(
      x = "Confirmed cases",
      y = "New confirmed cases (7 days after)",
      title = paste("COVID-19 trajectories in", continent_str,
                    "- by World Bank Income Classification and Subregion"),
      subtitle = paste("Considering data with 3 or more confirmed cases - Last updated on",
                       lubridate::now(tzone = "UTC"), "UTC"),
      caption = "@jmcastagnetto, Jesús M. Castagnetto"
    )
}

save_plot <- function(data, continent_str) {
  fname = paste0("plots/covid-19-trajectories-", tolower(continent_str), ".png")
  p1 <- mk_plots(data, continent_str)
  ggsave(
    plot = p1,
    filename = fname,
    height = 12,
    width = 10
  )
}

save_plot(world, "Asia")
save_plot(world, "Europe")
save_plot(world, "Africa")
save_plot(world, "Oceania")
save_plot(world, "Americas")

