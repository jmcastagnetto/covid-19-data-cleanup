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

#-- to parse global timeseries data

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
      continent = ifelse(continent == "Kosovo", "Europe", continent),
      iso3c = ifelse(iso3c == "Kosovo", "UNK", iso3c)
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
# mk_global_tsibble <- function(df) {
#   tsibble::as_tsibble(
#     df,
#     key = c("continent", "who_region", "who_region_code",
#             "world_bank_income_group",
#             "world_bank_income_group_code",
#             "world_bank_income_group_gni_reference_year",
#             "world_bank_income_group_release_date",
#             "country_region", "iso3c",
#             "province_state",
#             "lat", "lon"),
#     index = ts
#   )
# }
#

#-- global data files
global_urls <- tsfiles_df[str_detect(tsfiles_df$download_url, "_global"),]$download_url

#-- get the global data
ts_confirmed <- get_global_tsdata(global_urls[str_detect(global_urls, "_confirmed_")]) %>%
  rename(confirmed = var)
ts_deaths <- get_global_tsdata(global_urls[str_detect(global_urls, "_deaths_")]) %>%
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

#-- combine all data
ts_combined <- bind_rows(
  ts_confirmed %>%
    add_column(
      status = "confirmed",
      .before = "confirmed"
    ) %>%
    rename(number = confirmed),
  ts_deaths %>%
    add_column(
      status = "deaths",
      .before = "deaths"
    ) %>%
    rename(number = deaths),
  ts_recovered %>%
    add_column(
      status = "recovered",
      .before = "recovered"
    ) %>%
    rename(number = recovered)
)

#-- save global timeseries
saveRDS(
  ts_confirmed,
  file = "data/covid-19_ts_confirmed.rds"
)
write_csv(
  ts_confirmed,
  path = "data/covid-19_ts_confirmed.csv.gz"
)

saveRDS(
  ts_deaths,
  file = "data/covid-19_ts_deaths.rds"
)
write_csv(
  ts_deaths,
  path = "data/covid-19_ts_deaths.csv.gz"
)

saveRDS(
  ts_recovered,
  file = "data/covid-19_ts_recovered.rds"
)
write_csv(
  ts_recovered,
  path = "data/covid-19_ts_recovered.csv.gz"
)

saveRDS(
  ts_combined,
  file = "data/covid-19_ts_combined.rds"
)
write_csv(
  ts_combined,
  path = "data/covid-19_ts_combined.csv.gz"
)

#-- to parse US timeseries data
# The file with confirmed cases has different columns than the the one
# with deaths. The latter has a "Population" column.

#-- US data files
us_urls <- tsfiles_df[str_detect(tsfiles_df$download_url, "_US"),]$download_url

#-- US confirmed cases
ts_us_confirmed <- read_csv(
  us_urls[str_detect(us_urls, "_confirmed_")],
  col_types = cols(.default = col_character())
) %>%
  pivot_longer(
    -c("UID", "iso2", "iso3", "code3", "FIPS", "Admin2",
       "Province_State", "Country_Region", "Lat", "Long_",
       "Combined_Key"),
    names_to = "ts",
    values_to = "confirmed"
  ) %>%
  janitor::clean_names() %>%
  rename(
    lon = long
  ) %>%
  mutate(
    ts = lubridate::mdy(ts),
    confirmed = as.integer(confirmed),
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
  select(
    continent, country_region, iso3c,
    province_state, uid, iso2, iso3, code3, fips, admin2, combined_key,
    lat, lon,
    ts, confirmed
  )

#-- US deaths data
ts_us_deaths <- read_csv(
  us_urls[str_detect(us_urls, "_deaths_")],
  col_types = cols(.default = col_character())
) %>%
  pivot_longer(
    -c("UID", "iso2", "iso3", "code3", "FIPS", "Admin2",
       "Province_State", "Country_Region", "Lat", "Long_",
       "Combined_Key", "Population"),
    names_to = "ts",
    values_to = "deaths"
  ) %>%
  janitor::clean_names() %>%
  rename(
    lon = long
  ) %>%
  mutate(
    ts = lubridate::mdy(ts),
    deaths = as.integer(deaths),
    population = as.integer(population),
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
  select(
    continent, country_region, iso3c,
    province_state, uid, iso2, iso3, code3, fips, admin2, combined_key,
    lat, lon, population,
    ts, deaths
  )

#-- extract "Population" from ts_us_deaths
us_pop <- ts_us_deaths %>%
  select(fips, population) %>%
  distinct()

pop_column <- ts_us_confirmed %>%
  select(ts, fips) %>%
  left_join(
    us_pop,
    by = "fips"
  ) %>%
  distinct() %>%
  pull(population)

ts_us_confirmed <- ts_us_confirmed %>%
  add_column(
    pop_column,
    .after = "lon"
  ) %>%
  rename(
    population = pop_column
  )

ts_us_combined <- bind_rows(
  ts_us_confirmed %>%
    mutate(status = "confirmed") %>%
    rename(number = confirmed),
  ts_us_deaths %>%
    mutate(status = "deaths") %>%
    rename(number = deaths)
)

#-- save ts US data

saveRDS(
  ts_us_combined,
  file = "data/covid-19_ts_us_combined.rds"
)
write_csv(
  ts_us_combined,
  path = "data/covid-19_ts_us_combined.csv.gz"
)

saveRDS(
  ts_us_confirmed,
  file = "data/covid-19_ts_us_confirmed.rds"
)
write_csv(
  ts_us_confirmed,
  path = "data/covid-19_ts_us_confirmed.csv.gz"
)

saveRDS(
  ts_us_deaths,
  file = "data/covid-19_ts_us_deaths.rds"
)
write_csv(
  ts_us_deaths,
  path = "data/covid-19_ts_us_deaths.csv.gz"
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
  )
  # ) %>%
  # tsibble::as_tsibble(
  #   key = c("continent", "who_region", "who_region_code",
  #           "world_bank_income_group",
  #           "world_bank_income_group_code",
  #           "world_bank_income_group_gni_reference_year",
  #           "world_bank_income_group_release_date",
  #           "country_region", "iso3c",
  #           "province_state"),
  #   index = ts
  # )

saveRDS(
  ts_who_sitrep,
  file = "data/covid-19_ts_who_sitrep.rds"
)

write_csv(
  ts_who_sitrep,
  path = "data/covid-19_ts_who_sitrep.csv.gz"
)
