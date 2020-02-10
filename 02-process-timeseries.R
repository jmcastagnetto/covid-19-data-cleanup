library(tidyverse)
library(gh)

tsfiles <- gh("GET /repos/:owner/:repo/contents/:path",
            owner = "CSSEGISandData",
            repo = "2019-nCoV",
            path = "/time_series",
            branch = "master")

tsfiles_df <- tsfiles %>%
  unlist() %>%
  matrix(ncol = 12, byrow = T) %>%
  as_tibble() %>%
  rename(
    name = V1,
    path = V2,
    sha = V3,
    size = V4,
    url = V5,
    html_url = V6,
    git_url = V7,
    download_url = V8,
    type = V9,
    link_self = V10,
    link_git = V11,
    link_html = V12
  ) %>%
  filter(
    str_detect(name, "\\.csv")
  )

ts_confirmed <- read_csv(
  tsfiles_df[1,]$download_url,
  col_types = cols(.default = col_character())
  ) %>%
  pivot_longer(
    -c("Province/State", "Country/Region", "Lat", "Long"),
    names_to = "ts",
    values_to = "confirmed"
  ) %>%
  mutate(
    ts = lubridate::mdy_hm(ts)
  ) %>%
  janitor::clean_names()

ts_deaths <- read_csv(
  tsfiles_df[2,]$download_url,
  col_types = cols(.default = col_character())
  ) %>%
  pivot_longer(
    -c("Province/State", "Country/Region", "Lat", "Long"),
    names_to = "ts",
    values_to = "confirmed"
  ) %>%
  mutate(
    ts = lubridate::mdy_hm(ts),
    confirmed = as.integer(confirmed)
  ) %>%
  janitor::clean_names() %>%
  select(2, 1, 3, 4, 5, 6)

ts_deaths <- read_csv(
  tsfiles_df[2,]$download_url,
  col_types = cols(.default = col_character())
  ) %>%
  pivot_longer(
    -c("Province/State", "Country/Region", "Lat", "Long"),
    names_to = "ts",
    values_to = "deaths"
  ) %>%
  mutate(
    ts = lubridate::mdy_hm(ts),
    deaths = as.integer(deaths)
  ) %>%
  janitor::clean_names() %>%
  select(2, 1, 3, 4, 5, 6)

ts_recovered <- read_csv(
  tsfiles_df[3,]$download_url,
  col_types = cols(.default = col_character())
  ) %>%
  pivot_longer(
    -c("Province/State", "Country/Region", "Lat", "Long"),
    names_to = "ts",
    values_to = "recovered"
  ) %>%
  mutate(
    ts = lubridate::mdy_hm(ts),
    recovered = as.integer(recovered)
  ) %>%
  janitor::clean_names() %>%
  select(2, 1, 3, 4, 5, 6)

saveRDS(
  ts_confirmed,
  file = "data/2019ncov_ts_confirmed.rds"
)


saveRDS(
  ts_deaths,
  file = "data/2019ncov_ts_deaths.rds"
)

saveRDS(
  ts_recovered,
  file = "data/2019ncov_ts_recovered.rds"
)






