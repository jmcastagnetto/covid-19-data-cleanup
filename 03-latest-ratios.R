library(tidyverse)

ts_confirmed <- readRDS("data/covid-19_ts_confirmed.rds")
ts_deaths <- readRDS("data/covid-19_ts_deaths.rds")
ts_recovered <- readRDS("data/covid-19_ts_recovered.rds")

zero_na <- function(x) {
	ifelse(is.na(x), 0, x)
}

# global percentages
latest_ratios <- as_tibble(ts_confirmed) %>%
  filter(ts == max(ts)) %>%
  select(-lat, -lon, -ts) %>%
  left_join(
    as_tibble(ts_deaths) %>%
      filter(ts == max(ts)) %>%
      select(-lat, -lon, -ts),
    by = c("continent",
           "iso3c", "country_region",
           "province_state",
           "who_region_code", "who_region",
           "world_bank_income_group",
           "world_bank_income_group_code",
           "world_bank_income_group_gni_reference_year",
           "world_bank_income_group_release_date")
  ) %>%
  left_join(
    as_tibble(ts_recovered) %>%
      filter(ts == max(ts)) %>%
      select(-lat, -lon, -ts),
    by = c("continent",
           "iso3c", "country_region",
           "province_state",
           "who_region_code", "who_region",
           "world_bank_income_group",
           "world_bank_income_group_code",
           "world_bank_income_group_gni_reference_year",
           "world_bank_income_group_release_date")
  ) %>%
  arrange(desc(confirmed), country_region) %>%
  mutate(
    global_confirmed_pct = 100 * zero_na(confirmed) / sum(confirmed, na.rm = TRUE),
    global_death_pct = 100 * zero_na(deaths) / sum(deaths, na.rm = TRUE),
    global_recovered_pct = 100 * zero_na(recovered) / sum(recovered, na.m = TRUE)
  ) %>%
  select(
    1:5,12:16,6:11
  )

china <- latest_ratios %>%
  filter(iso3c == "CHN")

not_china <- latest_ratios %>%
  filter(iso3c != "CHN")

capture.output(
  knitr::kable(china,
               format = "markdown", digits = 3,
               caption = paste("Latest rates in China:", max(ts_confirmed$ts))
               ),
  file = "latest_china_ratios.md"
)

capture.output(
  knitr::kable(not_china,
               format = "markdown", digits = 3,
               caption = paste("Latest rates outside China:", max(ts_confirmed$ts))
               ),
  file = "latest_not_china_ratios.md"
)

#max(ts_confirmed$ts)
#um(china$confirmed_pct)
