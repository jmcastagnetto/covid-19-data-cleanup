
### Cases

**Files**

- `covid-19_cases_raw.csv.gz`: CSV with processed cases file
- `covid-19_cases_raw.RDS`: RDS format version

**Data structure**:

- continent: Geographical continent
- who_region: WHO region
- country_region: Country (or region)
- iso3c: ISO 3166-1 alpha-3 country code
- province_state: Province/State/Subnational division
- confirmed: Cummulative number of confirmed cases
- dead: Cummulative number of deaths
- recovered: Cummulative number of recovered cases
- lat: Latitude
- lon: Longitude
- update: Entry timestamp update in "YYYY-MM-DD hh:mm:ss" format
- data_update: Data file update date in "YYYY-MM-DD" format
- who_region_code: WHO region code
- who_region: WHO region
- world_bank_income_group: World Bank Income Group
- world_bank_income_group_code: World Bank Income Group code
- world_bank_income_group_gni_reference_year: World Bank Income Group GNI reference year
- world_bank_income_group_release_date: World Bank Income Group release year

### Global timeseries data

**Files**

- `covid-19_ts_combined.csv.gz`: CSV with combined timeseries data 
- `covid-19_ts_combined.rds`: RDS version (`tsibble`)

**Data structure**:

- continent: Geographical continent
- iso3c: ISO 3166-1 alpha-3 country code
- country_region: Country (or region)
- province_state: Province/State/Subnational division
- ts: UTC date in "YYYY-MM-DD" format
- status: "confirmed", "deaths", "recovered"
- number: number of cases
- lat: Latitude
- lon: Longitude
- who_region: WHO region
- who_region_code: WHO region code
- world_bank_income_group: World Bank Income Group
- world_bank_income_group_code: World Bank Income Group code
- world_bank_income_group_gni_reference_year: World Bank Income Group GNI reference year
- world_bank_income_group_release_date: World Bank Income Group release year

**Files**

- `covid-19_ts_confirmed.csv.gz`: CSV file with confirmed cases
- `covid-19_ts_confirmed.rds`: RDS version (`tsibble`)

**Data structure**:

- continent: Geographical continent
- iso3c: ISO 3166-1 alpha-3 country code
- country_region: Country (or region)
- province_state: Province/State/Subnational division
- ts: UTC date in "YYYY-MM-DD" format
- confirmed: number of confirmed cases
- lat: Latitude
- lon: Longitude
- who_region: WHO region
- who_region_code: WHO region code
- world_bank_income_group: World Bank Income Group
- world_bank_income_group_code: World Bank Income Group code
- world_bank_income_group_gni_reference_year: World Bank Income Group GNI reference year
- world_bank_income_group_release_date: World Bank Income Group release year


**Files**

- `covid-19_ts_deaths.csv.gz`: CSV file with deaths
- `covid-19_ts_deaths.rds`: RDS version (`tsibble`)

**Data structure**:

- continent: Geographical continent
- iso3c: ISO 3166-1 alpha-3 country code
- country_region: Country (or region)
- province_state: Province/State/Subnational division
- ts: UTC date in "YYYY-MM-DD" format
- deaths: number of deaths
- lat: Latitude
- lon: Longitude
- who_region: WHO region
- who_region_code: WHO region code
- world_bank_income_group: World Bank Income Group
- world_bank_income_group_code: World Bank Income Group code
- world_bank_income_group_gni_reference_year: World Bank Income Group GNI reference year
- world_bank_income_group_release_date: World Bank Income Group release year


**Files**

- `covid-19_ts_recovered.csv.gz`: CSV file with recovered cases
- `covid-19_ts_recovered.rds`: RDS version (`tsibble`)

**Data structure**:

- continent: Geographical continent
- iso3c: ISO 3166-1 alpha-3 country code
- country_region: Country (or region)
- province_state: Province/State/Subnational division
- ts: UTC date in "YYYY-MM-DD" format
- recovered: number of people who recovered
- lat: Latitude
- lon: Longitude
- who_region: WHO region
- who_region_code: WHO region code
- world_bank_income_group: World Bank Income Group
- world_bank_income_group_code: World Bank Income Group code
- world_bank_income_group_gni_reference_year: World Bank Income Group GNI reference year
- world_bank_income_group_release_date: World Bank Income Group release year





### US timeseries data

**Files**

- `covid-19_ts_us_combined.csv.gz`: CSV with combined timeseries data 
- `covid-19_ts_us_combined.rds`: RDS version (`tsibble`)

**Data structure**:

- continent: Geographical continent
- iso3c: ISO 3166-1 alpha-3 country code
- country_region: Country (or region)
- province_state: Province/State/Subnational division
- ts: UTC date in "YYYY-MM-DD" format
- status: "confirmed", "deaths", "recovered"
- number: number of cases
- lat: Latitude
- lon: Longitude
- who_region: WHO region
- who_region_code: WHO region code
- world_bank_income_group: World Bank Income Group
- world_bank_income_group_code: World Bank Income Group code
- world_bank_income_group_gni_reference_year: World Bank Income Group GNI reference year
- world_bank_income_group_release_date: World Bank Income Group release year

**Files**

- `covid-19_ts_us_confirmed.csv.gz`: CSV file with confirmed cases for US
- `covid-19_ts_us_confirmed.rds`: RDS version (`tsibble`)

**Data structure**:

- continent: Geographical continent
- iso3c: ISO 3166-1 alpha-3 country code
- country_region: Country (or region)
- province_state: Province/State/Subnational division
- ts: UTC date in "YYYY-MM-DD" format
- confirmed: number of confirmed cases
- lat: Latitude
- lon: Longitude
- who_region: WHO region
- who_region_code: WHO region code
- world_bank_income_group: World Bank Income Group
- world_bank_income_group_code: World Bank Income Group code
- world_bank_income_group_gni_reference_year: World Bank Income Group GNI reference year
- world_bank_income_group_release_date: World Bank Income Group release year

**Files**

- `covid-19_ts_us_deaths.csv.gz`: CSV file with deaths for US
- `covid-19_ts_us_deaths.rds`: RDS version (`tsibble`)

**Data structure**:

- continent: Geographical continent
- iso3c: ISO 3166-1 alpha-3 country code
- country_region: Country (or region)
- province_state: Province/State/Subnational division
- ts: UTC date in "YYYY-MM-DD" format
- deaths: number of deaths
- lat: Latitude
- lon: Longitude
- who_region: WHO region
- who_region_code: WHO region code
- world_bank_income_group: World Bank Income Group
- world_bank_income_group_code: World Bank Income Group code
- world_bank_income_group_gni_reference_year: World Bank Income Group GNI reference year
- world_bank_income_group_release_date: World Bank Income Group release year



### WHO situation report data:

**Files**:

- `covid-19_who_sitrep_raw.rds`: Lightly cleaned WHO situation report in RDS format
- `covid-19_ts_who_sitrep.csv.gz`: Timeseries from WHO situation reports
- `covid-19_ts_who_sitrep.rds`: RDS version (`tsibble`)

**Data structure**:

- continent: Geographical continent
- iso3c: ISO 3166-1 alpha-3 country code
- country_region: Country (or region)
- province_state: Province/State/Subnational division
- ts: UTC date in "YYYY-MM-DD" format
- cases: number of cases at ts 
- who_region: WHO region
- who_region_code: WHO region code
- world_bank_income_group: World Bank Income Group
- world_bank_income_group_code: World Bank Income Group code
- world_bank_income_group_gni_reference_year: World Bank Income Group GNI reference year
- world_bank_income_group_release_date: World Bank Income Group release year

### WHO metadata

**Source**: https://apps.who.int/gho/data/node.metadata.COUNTRY?lang=en (CSV Xmart format)

**Files**:

- `xmart.csv`: CSV Xmart format (downloaded on 2020-03-09)
- `who_metadata.Rdata`: Rdata format version

**Data structure**:

- continent: Geographical continent
- who_region: WHO region
- country_region: Country (or region)
- iso3c: ISO 3166-1 alpha-3 country code
- province_state: Province/State/Subnational division
- ts: UTC timestamp in "YYYY-MM-DD hh:mm:ss" format
- cases: Number of cases
- who_region_code: Code for WHO region
- world_bank_income_group: World Bank Income Group
- world_bank_income_group_code: World Bank Income Group code
- world_bank_income_group_gni_reference_year: World Bank Income Group GNI reference year
- world_bank_income_group_release_date: World Bank Income Group release year


### World Bank population estimate for 2020

**Source**: https://databank.worldbank.org/source/population-estimates-and-projections

**Files**:
  - `Data_Extract_From_Population_estimates_and_projections.zip`: data and metadata from World Bank (dowloaded on 2020-03-14)
  - `wb_population.Rdata`: Rdata format

**Data Structure** (Rdata file):

- country_name: Country name
- country_code: ISO 3166-1 alpha-3 country code
- series_name: World Bank variable name
- series_code: World Bank variable code
- population_2020: Estimated population for 2020
