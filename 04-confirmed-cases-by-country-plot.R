library(tidyverse)
library(gh)

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
  )

ggplot(country_df,
       aes(x = ts, y = confirmed,
           color = country_region)) +
  geom_line(show.legend = FALSE, size = .5) +
  geom_point(show.legend = FALSE) +
  facet_wrap(~country_region, scales = "free_y") +
  scale_y_continuous(
    labels = scales::label_comma(),
    breaks = scales::breaks_pretty(n = 4)
  ) +
  labs(
    y = "",
    x = "",
    title = "COVID-19: Confirmed cases by Country",
    subtitle = paste0("Data source: https://github.com/CSSEGISandData/2019-nCoV (commit: ", latest_commit_sha, ")"),
    caption = paste("Last update: ", format(Sys.time(), "%Y-%m-%d %R %z"), "/ @jmcastagnetto, Jesús M. Castagnetto")
  ) +
  ggdark::dark_theme_minimal(16) +
  theme(
    plot.margin = unit(rep(1, 4), "cm"),
    axis.text.x = element_text(angle = 90),
    strip.text = element_text(size = 9)
  )

ggsave(
  filename = "covid19-confirmed-cases-by-country.png",
  width = 16,
  height = 12
)
