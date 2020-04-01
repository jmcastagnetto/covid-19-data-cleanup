library(tidyverse)
library(gh)
library(countrycode)

load(
  here::here("data/who_metadata.Rdata")
)

#-- get the list of CSV files with the timeseries
tsfiles <- gh("GET /repos/:owner/:repo/contents/:path",
            owner = "CSSEGISandData",
            repo = "COVID-19",
            path = "/csse_covid_19_data/csse_covid_19_time_series",
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

#-- utility function to parse the timeseries files
get_global_tsdata <- function(csv_url) {
  read_csv(csv_url,
           col_types = cols(.default = col_character())) %>%
    pivot_longer(
      -c("Province/State", "Country/Region", "Lat", "Long"),
      names_to = "ts",
      values_to = "var"
    ) %>%
    janitor::clean_names() %>%
    rename(
      lon = long
    ) %>%
    mutate(
      ts = lubridate::mdy(ts),
      var = as.integer(var),
      lat = round(as.double(lat), 5),
      lon = round(as.double(lon), 5),
      iso3c = countrycode(country_region,
                          origin = "country.name",
                          destination = "iso3c",
                          nomatch = NULL),
      continent = countrycode(country_region,
                              origin = "country.name",
                              destination = "continent",
                              nomatch = NULL)
     ) %>%
    select(8, 7, 2, 1, 3, 4, 5, 6) %>%
    left_join(
      who_metadata %>%
        select(
          iso,
          who_region_code,
          who_region,
          world_bank_income_group,
          world_bank_income_group_code,
          world_bank_income_group_gni_reference_year,
          world_bank_income_group_release_date
        ),
      by = c("iso3c" = "iso")
    ) %>%
    mutate(  # fix manually the case of Kosovo
      continent <- ifelse(continent == "Kosovo", "Europe", continent),
      iso3c <- ifelse(iso3c == "Kosovo", "UNK", iso3c)
    ) %>%
    mutate_at(
      vars(
        continent,
        iso3c, country_region,
        province_state,
        who_region_code,
        who_region,
        world_bank_income_group,
        world_bank_income_group_code,
        world_bank_income_group_gni_reference_year,
        world_bank_income_group_release_date
      ),
      as_factor
    )
}

#-- convert df to tsibble
mk_tsibble <- function(df) {
  tsibble::as_tsibble(
    df,
    key = c("continent", "who_region", "who_region_code",
            "world_bank_income_group",
            "world_bank_income_group_code",
            "world_bank_income_group_gni_reference_year",
            "world_bank_income_group_release_date",
            "country_region", "iso3c",
            "province_state",
            "lat", "lon"),
    index = ts
  )
}

#-- US data files
us_urls <- tsfiles_df[str_detect(tsfiles_df$download_url, "_US"),]$download_url
#-- global data files
global_urls <- tsfiles_df[str_detect(tsfiles_df$download_url, "_global"),]$download_url

# TO DO: code to handle the new US data files

#-- get the data
ts_confirmed <- get_global_tsdata(global_urls[str_detect(global_urls, "_confirmed_")]) %>%
  rename(confirmed = var)
ts_deaths <- get_global_tsdata(global_urls[str_detect(gobal_urls, "_deaths_")]) %>%
  rename(deaths = var)
ts_recovered <- get_global_tsdata(global_urls[str_detect(global_urls, "_recovered_")]) %>%
  rename(recovered = var)

#-- extract places
places <- bind_rows(
  ts_confirmed %>% select(1:6),
  ts_deaths %>% select(1:6),
  ts_recovered %>% select(1:6)
) %>%
  distinct() %>%
  arrange(continent, country_region, iso3c, province_state)

#-- combine all data and make them tsibbles
ts_combined <- as_tibble(ts_confirmed) %>%
  select(-lat, -lon) %>%
  left_join(
    ts_deaths %>% select(-lat, -lon),
    by = c("continent",
           "iso3c", "country_region",
           "province_state", "ts",
           "who_region_code", "who_region",
           "world_bank_income_group",
           "world_bank_income_group_code",
           "world_bank_income_group_gni_reference_year",
           "world_bank_income_group_release_date")
  ) %>%
  left_join(
    ts_recovered %>% select(-lat, -lon),
    by = c("continent",
           "iso3c", "country_region",
           "province_state", "ts",
           "who_region_code", "who_region",
           "world_bank_income_group",
           "world_bank_income_group_code",
           "world_bank_income_group_gni_reference_year",
           "world_bank_income_group_release_date")
  ) %>%
  left_join(
    places,
    by = c("continent",
           "iso3c", "country_region",
           "province_state")
  ) %>%
  select(
    continent,
	iso3c,
	country_region,
	province_state,
	ts,
	confirmed,
	deaths,
	recovered,
	who_region,
	who_region_code,
	world_bank_income_group,
	world_bank_income_group_code,
	world_bank_income_group_gni_reference_year,
	world_bank_income_group_release_date,
	lat,
	lon
  ) %>%
  mk_tsibble()

ts_confirmed <- mk_tsibble(ts_confirmed)
ts_deaths <- mk_tsibble(ts_deaths)
ts_recovered <- mk_tsibble(ts_recovered)

#-- save timeseries
saveRDS(
  ts_confirmed,
  file = "data/covid-19_ts_confirmed.rds"
)
write.csv(
  ts_confirmed,
  file = "data/covid-19_ts_confirmed.csv",
  row.names = FALSE
)

saveRDS(
  ts_deaths,
  file = "data/covid-19_ts_deaths.rds"
)
write.csv(
  ts_deaths,
  file = "data/covid-19_ts_deaths.csv",
  row.names = FALSE
)

saveRDS(
  ts_recovered,
  file = "data/covid-19_ts_recovered.rds"
)
write.csv(
  ts_recovered,
  file = "data/covid-19_ts_recovered.csv",
  row.names = FALSE
)

saveRDS(
  ts_combined,
  file = "data/covid-19_ts_combined.rds"
)
write.csv(
  ts_combined,
  file = "data/covid-19_ts_combined.csv",
  row.names = FALSE
)

#-- process the WHO sitrep ts

who_tsfiles <- gh("GET /repos/:owner/:repo/contents/:path",
              owner = "CSSEGISandData",
              repo = "COVID-19",
              path = "/who_covid_19_situation_reports/who_covid_19_sit_rep_time_series",
              branch = "master")

who_tsfiles_df <- who_tsfiles %>%
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

who_sitrep_raw <- read_csv(
  who_tsfiles_df$download_url,
  col_types = cols(.default = col_character())
)

saveRDS(
  who_sitrep_raw,
  file = "data/covid-19_who_sitrep_raw.rds"
)

ts_who_sitrep <- who_sitrep_raw %>%
  select_if(~ !all(is.na(.))) %>% # remove columns full of NAs
  pivot_longer(
    -c("Province/States", "Country/Region", "WHO region"),
    names_to = "ts",
    values_to = "cases"
  ) %>%
  janitor::clean_names() %>%
  rename(
    province_state = province_states
  ) %>%
  mutate(
    ts = lubridate::mdy(ts),
    cases = as.integer(cases),
    iso3c = countrycode(country_region,
                        origin = "country.name",
                        destination = "iso3c",
                        nomatch = NULL),
    continent = countrycode(country_region,
                            origin = "country.name",
                            destination = "continent",
                            nomatch = NULL)
  ) %>%
  select(
    continent, who_region,
    country_region, iso3c,
    province_state,
    ts, cases
  ) %>%
  left_join(
    who_metadata %>%
      select(
        iso,
        who_region_code,
        world_bank_income_group,
        world_bank_income_group_code,
        world_bank_income_group_gni_reference_year,
        world_bank_income_group_release_date
      ),
    by = c("iso3c" = "iso")
  ) %>%
  mutate_at(
    vars(
      continent,
      iso3c, country_region,
      province_state,
      who_region_code,
      who_region,
      world_bank_income_group,
      world_bank_income_group_code,
      world_bank_income_group_gni_reference_year,
      world_bank_income_group_release_date
    ),
    as_factor
  ) %>%
  tsibble::as_tsibble(
    key = c("continent", "who_region", "who_region_code",
            "world_bank_income_group",
            "world_bank_income_group_code",
            "world_bank_income_group_gni_reference_year",
            "world_bank_income_group_release_date",
            "country_region", "iso3c",
            "province_state"),
    index = ts
  )

saveRDS(
  ts_who_sitrep,
  file = "data/covid-19_ts_who_sitrep.rds"
)

write.csv(
  ts_who_sitrep,
  file = "data/covid-19_ts_who_sitrep.csv",
  row.names = FALSE
)
