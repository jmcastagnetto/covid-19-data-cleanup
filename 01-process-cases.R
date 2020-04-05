library(tidyverse)
library(gh)
library(countrycode)

if (!file.exists(here::here("data/who_metadata.Rdata"))) {
  #-- who metadata
  who_metadata <- read_csv(
    here::here("data/xmart.csv"),
    col_types = cols(
      DimensionCode = col_character(),
      DimensionMemberCode = col_character(),
      DisplayString = col_character(),
      DisplaySequence = col_double(),
      URL = col_logical(),
      DS = col_character(),
      FIPS = col_character(),
      GEOMETRY = col_character(),
      IOC = col_character(),
      ISO = col_character(),
      ISO2 = col_character(),
      ITU = col_character(),
      LAND_AREA_KMSQ_2012 = col_character(),
      LANGUAGES_EN_2012 = col_character(),
      MARC = col_character(),
      MORT = col_double(),
      SHORTNAMEES = col_character(),
      SHORTNAMEFR = col_character(),
      WHO = col_character(),
      WHOLEGALSTATUS = col_character(),
      WHO_REGION = col_character(),
      WHO_REGION_CODE = col_character(),
      WMO = col_character(),
      WORLD_BANK_INCOME_GROUP = col_character(),
      WORLD_BANK_INCOME_GROUP_CODE = col_character(),
      WORLD_BANK_INCOME_GROUP_GNI_REFERENCE_YEAR = col_integer(),
      WORLD_BANK_INCOME_GROUP_RELEASE_DATE = col_integer()
    )
  ) %>% janitor::clean_names()

  save(
    who_metadata,
    file = here::here("data/who_metadata.Rdata")
  )
} else {
  load(here::here("data/who_metadata.Rdata"))
}

if (!file.exists(here::here("data/wb_population.Rdata"))) {
  #-- World Bank population estimates (downloaded 2020-03-14)
  wb_pop <- read_csv(
    unz("data/Data_Extract_From_Population_estimates_and_projections.zip",
        "d01e2a1e-423d-4601-b106-bf01b38a8e8f_Data.csv"),
    na = c("", ".", "NA"),
    col_types = cols(
      `Country Name` = col_character(),
      `Country Code` = col_character(),
      `Series Name` = col_character(),
      `Series Code` = col_character(),
      `2020 [YR2020]` = col_number()
    )
  ) %>%
    janitor::clean_names() %>%
    filter(
      !is.na(country_code)
    ) %>%
    rename(
      population_2020 = 5
    )

  save(
    wb_pop,
    file = here::here("data/wb_population.Rdata")
  )
} else {
  load(here::here("data/wb_population.Rdata"))
}

#-- get the list of daily reports
cases <- gh("GET /repos/:owner/:repo/contents/:path",
            owner = "CSSEGISandData",
            repo = "COVID-19",
            path = "/csse_covid_19_data/csse_covid_19_daily_reports", # path changed
            branch = "master")

cases_df <- cases %>%
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

#-- attempt two ways of parsing the timestamp
#   because some files have m/d/y h:m, and others y-m-d h:m:s
parse_timestamp <- function(dt) {
  # try using m/d/y h:m first
  ts <- lubridate::mdy_hm(dt)
  if(is.na(ts)) {
    # try using ymd h:m:s
    ts <- lubridate::ymd_hms(dt)
  }
  return(ts)
}

#-- get the data from the CSV files and parse it
# case files from march onwards, have lat long
get_data <- function(csv) {
  fname <- csv
  ts <- basename(fname) %>%
    str_remove(".csv") %>%
    strptime(format = "%m-%d-%Y") %>%
    strftime()


  if (ts < as.Date("2020-03-22")) {
    # Before and up to 2020-03-21, the CSV files had this format
    # parse columns
    col_spec <- list(
      province_state = col_character(),
      country_region = col_character(),
      update = col_character(),
      confirmed = col_integer(),
      dead = col_integer(),
      recovered = col_integer(),
      lat = col_double(),
      lon = col_double()
    )
    read_csv(fname,
             col_types = col_spec, skip = 1,
             col_names = names(col_spec)) %>%
      mutate(
        update = parse_timestamp(update),
        data_update = ts,
        # add extra columns from after 2020-03-22
        fips = NA,
        admin2 = NA,
        combined_key = NA,
        active = NA
      ) %>%
      select(
        province_state,
        country_region,
        lat,
        lon,
        fips,
        admin2,
        combined_key,
        update,
        confirmed,
        dead,
        recovered,
        active,
        data_update
      )
  } else {
    # From 2020-03-22, the CSV files have this format
    col_spec <- list(
      fips = col_character(),
      admin2 = col_character(),
      province_state = col_character(),
      country_region = col_character(),
      update = col_character(),
      lat = col_double(),
      lon = col_double(),
      confirmed = col_integer(),
      dead = col_integer(),
      recovered = col_integer(),
      active = col_integer(),
      combined_key = col_character()
    )
    read_csv(fname,
             col_types = col_spec, skip = 1,
             col_names = names(col_spec)) %>%
      mutate(
        update = parse_timestamp(update),
        data_update = ts
      ) %>%
      select(
        province_state,
        country_region,
        lat,
        lon,
        fips,
        admin2,
        combined_key,
        update,
        confirmed,
        dead,
        recovered,
        active,
        data_update
      )
  }
}

#-- get all cases in one data frame
cases_raw <- data.frame()

for (fn in cases_df$download_url) {
  d <- get_data(fn)
  cases_raw <- bind_rows(cases_raw, d)
}

# get the places with lat, long
places <- cases_raw %>%
  filter(!is.na(lat) & !is.na(lon)) %>%
  select(country_region, province_state, lat, lon) %>%
  mutate(
    lat = round(as.double(lat), 5),
    lon = round(as.double(lon), 5)
  ) %>%
  distinct(country_region, province_state, .keep_all = TRUE)
  # use this because some places have multiple
  # lat, lon: i.e. Croatia, Luxembourg, Romania

# add lat lon, and reorder
cases_raw <- cases_raw %>%
  select(-lat, -lon) %>%
  left_join(
    places,
    by = c("country_region", "province_state")
  ) %>%
  select(
    country_region,
    province_state,
    fips,
    admin2,
    combined_key,
    update,
    confirmed,
    dead,
    recovered,
    active,
    lat,
    lon,
    data_update
  ) %>%
  mutate( # add iso3 and continent
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
    continent,
    country_region,
    iso3c,
    province_state,
    fips,
    admin2,
    combined_key,
    lat,
    lon,
    update,
    confirmed,
    dead,
    recovered,
    active,
    data_update
  ) %>%
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
  ) %>%
  mutate(
    data_update = lubridate::ymd(data_update)
  )

# save data
saveRDS(
  cases_raw,
  file = "data/covid-19_cases_raw.rds"
)
write_csv(
  cases_raw,
  path = "data/covid-19_cases_raw.csv.gz"
)
