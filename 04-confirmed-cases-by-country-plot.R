library(tidyverse)
library(gh)
library(countrycode)

meta <- gh("GET /repos/:owner/:repo/git/refs",
           owner = "CSSEGISandData",
           repo = "COVID-19")

latest_commit_sha <- str_sub(meta[[1]]$object$sha, 1, 7)
print(latest_commit_sha)

ts_combined <- readRDS("data/covid-19_ts_combined.rds")

country_df <- as_tibble(ts_combined) %>%
  group_by(country_region, ts) %>%
  summarise(
    confirmed = sum(confirmed, na.rm = TRUE),
    deaths = sum(deaths, na.rm = TRUE),
    recovered = sum(recovered, na.rm = TRUE)
  ) %>%
  ungroup() %>%
  mutate(
    iso3c = countrycode(country_region,
                        origin = "country.name",
                        destination = "iso3c",
                        nomatch = NULL),
    continent = countrycode(country_region,
                            origin = "country.name",
                            destination = "continent",
                            nomatch = NULL),
    country_region = factor(as.character(country_region))
  ) %>%
  arrange(country_region)

mk_plot <- function(df, title_extra = "") {
  ggplot(df,
         aes(x = ts, y = confirmed,
             color = country_region)) +
    geom_line(show.legend = FALSE, size = .5) +
    geom_point(show.legend = FALSE, size = .5) +
    facet_wrap(~country_region, scales = "free_y") +
    scale_y_continuous(
      labels = scales::label_comma(),
      breaks = scales::breaks_pretty(n = 4)
    ) +
    labs(
      y = "",
      x = "",
      title = paste0("COVID-19: Confirmed cases", title_extra),
      subtitle = paste0("Data source: https://github.com/CSSEGISandData/COVID-19 (commit: ", latest_commit_sha, ")"),
      caption = paste("Last update: ", format(lubridate::now(tzone = "UTC"), "%F %T %Z"), "/ @jmcastagnetto, Jesús M. Castagnetto")
    ) +
    ggdark::dark_theme_minimal(12) +
    theme(
      plot.margin = unit(rep(1, 4), "cm"),
      axis.text.x = element_text(angle = 90),
      strip.text = element_text(size = 9)
    )
}

print("Global plot")
#-- big plot
bigplot <- mk_plot(country_df, " by country (Worldwide)")
ggsave(
  plot = bigplot,
  filename = "covid19-confirmed-cases-by-country.png",
  width = 16,
  height = 12
)

print("Asia plot")
#--- split by continent
asia_df <- country_df %>%
  filter(continent == "Asia")
asia_plot <- mk_plot(asia_df, " by country in  Asia")
ggsave(
  plot = asia_plot,
  filename = "asia-covid19-confirmed-cases-by-country.png",
  width = 10,
  height = 8
)

print("Africa plot")
africa_df <- country_df %>%
  filter(continent == "Africa")
africa_plot <- mk_plot(africa_df, " by country in  Africa")
ggsave(
  plot = africa_plot,
  filename = "africa-covid19-confirmed-cases-by-country.png",
  width = 8,
  height = 6
)

print("Europe plot")
europe_df <- country_df %>%
  filter(continent == "Europe")
europe_plot <- mk_plot(europe_df, " by country in  Europe")
ggsave(
  plot = europe_plot,
  filename = "europe-covid19-confirmed-cases-by-country.png",
  width = 10,
  height = 8
)

print("Americas plot")
americas_df <- country_df %>%
  filter(continent == "Americas")
americas_plot <- mk_plot(americas_df, " by country in the Americas")
ggsave(
  plot = americas_plot,
  filename = "americas-covid19-confirmed-cases-by-country.png",
  width = 8,
  height = 6
)

print("Oceania plot")
oceania_df <- country_df %>%
  filter(continent == "Oceania")
oceania_plot <- mk_plot(oceania_df, " by country in Oceania")
ggsave(
  plot = oceania_plot,
  filename = "oceania-covid19-confirmed-cases-by-country.png",
  width = 8,
  height = 6
)

print("Others plot")
others_df <- country_df %>%
  filter(!continent %in% c("Asia", "Americas", "Africa", "Europe", "Ocea"))
others_plot <- mk_plot(others_df, " (Others)")
ggsave(
  plot = others_plot,
  filename = "others-covid19-confirmed-cases-by-country.png",
  width = 8,
  height = 6
)
