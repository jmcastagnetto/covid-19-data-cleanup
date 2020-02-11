library(tidyverse)
library(gh)

#-- get the list of CSV files with the timeseries
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

#-- utility functions

get_tsdata <- function(csv_url) {
  read_csv(csv_url,
           col_types = cols(.default = col_character())) %>%
    pivot_longer(
      -c("Province/State", "Country/Region", "Lat", "Long"),
      names_to = "ts",
      values_to = "var"
    ) %>%
    janitor::clean_names() %>%
    mutate(
      ts = lubridate::mdy_hm(ts),
      var = as.integer(var),
      lat = round(as.double(lat), 5),
      long = round(as.double(long), 5)
    ) %>%
    select(2, 1, 3, 4, 5, 6)
}

mk_tsibble <- function(df) {
  tsibble::as_tsibble(
    df,
    key = c("country_region", "province_state", "lat", "long"),
    index = ts
  )
}

#-- get the data
ts_confirmed <- get_tsdata(tsfiles_df[1,]$download_url) %>%
  rename(confirmed = var)
ts_deaths <- get_tsdata(tsfiles_df[2,]$download_url) %>%
  rename(deaths = var)
ts_recovered <- get_tsdata(tsfiles_df[3,]$download_url) %>%
  rename(recovered = var)

#-- extract places
places <- bind_rows(
  ts_confirmed %>% select(1,2,3,4),
  ts_deaths %>% select(1,2,3,4),
  ts_recovered %>% select(1,2,3,4)
) %>%
  distinct() %>%
  arrange(country_region, province_state)

#-- combine all data and make them tsibbles
ts_combined <- as_tibble(ts_confirmed) %>%
  select(-lat, -long) %>%
  left_join(
    ts_deaths %>% select(-lat, -long),
    by = c("country_region", "province_state", "ts")
  ) %>%
  left_join(
    ts_recovered %>% select(-lat, -long),
    by = c("country_region", "province_state", "ts")
  ) %>%
  left_join(
    places,
    by = c("country_region", "province_state")
  ) %>%
  mk_tsibble()

ts_confirmed <- mk_tsibble(ts_confirmed)
ts_deaths <- mk_tsibble(ts_deaths)
ts_recovered <- mk_tsibble(ts_recovered)

#-- save timeseries
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

saveRDS(
  ts_combined,
  file = "data/2019ncov_ts_combined.rds"
)

