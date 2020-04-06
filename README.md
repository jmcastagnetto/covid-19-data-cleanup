R scripts to process/cleanup data from the repo:
<a href="https://github.com/CSSEGISandData/COVID-19" class="uri">https://github.com/CSSEGISandData/COVID-19</a>
into tidy datasets[1]

**Last updated on** 2020-04-06 01:17:54 UTC

**Data source commit reference**:
[3200a6b24301ff12cf13ac969e3c60c8e245c4ce](https://github.com/CSSEGISandData/COVID-19/commit/3200a6b24301ff12cf13ac969e3c60c8e245c4ce)

*Notes*

-   For the cases, I’ve used the filename to to get the timestamp,
    because that is more reliable
-   **2020-02-14**: the original data source has changed its data
    structure, the timeseries data is empty as of the commit referred
    below.
-   **2020-02-27**: changed code to reflect changes in source data
    files.
-   **2020-03-04**: added Continents and ISO-3 country codes, using the
    `countrycode` R package.
-   **2020-03-05**:
    -   Latitude and longitude information started appearing in cases
        files in March, used that to add that information the rest of
        the cases.
    -   Added code to tidy the WHO situation report timeseries
-   **2020-03-12**: source data no longer has the classification
    “Others” for locations not corresponding to countries (i.e. Cruise
    Ships), so the code has been modified to account for that change.
-   **2020-04-01**: the new US only timeseries data files from the
    source, have different number of columns, the file containing the
    deaths has a `Population` column that is not present in the cofirmed
    cases file.
-   **2020-04-05**: csv files are now gzip compressed to avoid hitting
    github’s max file size

------------------------------------------------------------------------

About the processed data files
------------------------------

### Cases

**Files**

-   `covid-19_cases_raw.csv.gz`: CSV with processed cases file
-   `covid-19_cases_raw.RDS`: RDS format version

**Data structure**:

-   continent: Geographical continent
-   who\_region: WHO region
-   country\_region: Country (or region)
-   iso3c: ISO 3166-1 alpha-3 country code
-   province\_state: Province/State/Subnational division
-   confirmed: Cummulative number of confirmed cases
-   dead: Cummulative number of deaths
-   recovered: Cummulative number of recovered cases
-   lat: Latitude
-   lon: Longitude
-   update: Entry timestamp update in “YYYY-MM-DD hh:mm:ss” format
-   data\_update: Data file update date in “YYYY-MM-DD” format
-   who\_region\_code: WHO region code
-   who\_region: WHO region
-   world\_bank\_income\_group: World Bank Income Group
-   world\_bank\_income\_group\_code: World Bank Income Group code
-   world\_bank\_income\_group\_gni\_reference\_year: World Bank Income
    Group GNI reference year
-   world\_bank\_income\_group\_release\_date: World Bank Income Group
    release year

### Global timeseries data

**Files**

-   `covid-19_ts_combined.csv.gz`: CSV with combined timeseries data
-   `covid-19_ts_combined.rds`: RDS version (`tsibble`)

**Data structure**:

-   continent: Geographical continent
-   iso3c: ISO 3166-1 alpha-3 country code
-   country\_region: Country (or region)
-   province\_state: Province/State/Subnational division
-   ts: UTC date in “YYYY-MM-DD” format
-   status: “confirmed”, “deaths”, “recovered”
-   number: number of cases
-   lat: Latitude
-   lon: Longitude
-   who\_region: WHO region
-   who\_region\_code: WHO region code
-   world\_bank\_income\_group: World Bank Income Group
-   world\_bank\_income\_group\_code: World Bank Income Group code
-   world\_bank\_income\_group\_gni\_reference\_year: World Bank Income
    Group GNI reference year
-   world\_bank\_income\_group\_release\_date: World Bank Income Group
    release year

**Files**

-   `covid-19_ts_confirmed.csv.gz`: CSV file with confirmed cases
-   `covid-19_ts_confirmed.rds`: RDS version (`tsibble`)

**Data structure**:

-   continent: Geographical continent
-   iso3c: ISO 3166-1 alpha-3 country code
-   country\_region: Country (or region)
-   province\_state: Province/State/Subnational division
-   ts: UTC date in “YYYY-MM-DD” format
-   confirmed: number of confirmed cases
-   lat: Latitude
-   lon: Longitude
-   who\_region: WHO region
-   who\_region\_code: WHO region code
-   world\_bank\_income\_group: World Bank Income Group
-   world\_bank\_income\_group\_code: World Bank Income Group code
-   world\_bank\_income\_group\_gni\_reference\_year: World Bank Income
    Group GNI reference year
-   world\_bank\_income\_group\_release\_date: World Bank Income Group
    release year

**Files**

-   `covid-19_ts_deaths.csv.gz`: CSV file with deaths
-   `covid-19_ts_deaths.rds`: RDS version (`tsibble`)

**Data structure**:

-   continent: Geographical continent
-   iso3c: ISO 3166-1 alpha-3 country code
-   country\_region: Country (or region)
-   province\_state: Province/State/Subnational division
-   ts: UTC date in “YYYY-MM-DD” format
-   deaths: number of deaths
-   lat: Latitude
-   lon: Longitude
-   who\_region: WHO region
-   who\_region\_code: WHO region code
-   world\_bank\_income\_group: World Bank Income Group
-   world\_bank\_income\_group\_code: World Bank Income Group code
-   world\_bank\_income\_group\_gni\_reference\_year: World Bank Income
    Group GNI reference year
-   world\_bank\_income\_group\_release\_date: World Bank Income Group
    release year

**Files**

-   `covid-19_ts_recovered.csv.gz`: CSV file with recovered cases
-   `covid-19_ts_recovered.rds`: RDS version (`tsibble`)

**Data structure**:

-   continent: Geographical continent
-   iso3c: ISO 3166-1 alpha-3 country code
-   country\_region: Country (or region)
-   province\_state: Province/State/Subnational division
-   ts: UTC date in “YYYY-MM-DD” format
-   recovered: number of people who recovered
-   lat: Latitude
-   lon: Longitude
-   who\_region: WHO region
-   who\_region\_code: WHO region code
-   world\_bank\_income\_group: World Bank Income Group
-   world\_bank\_income\_group\_code: World Bank Income Group code
-   world\_bank\_income\_group\_gni\_reference\_year: World Bank Income
    Group GNI reference year
-   world\_bank\_income\_group\_release\_date: World Bank Income Group
    release year

### US timeseries data

**Files**

-   `covid-19_ts_us_combined.csv.gz`: CSV with combined timeseries data
-   `covid-19_ts_us_combined.rds`: RDS version (`tsibble`)

**Data structure**:

-   continent: Geographical continent
-   iso3c: ISO 3166-1 alpha-3 country code
-   country\_region: Country (or region)
-   province\_state: Province/State/Subnational division
-   ts: UTC date in “YYYY-MM-DD” format
-   status: “confirmed”, “deaths”, “recovered”
-   number: number of cases
-   lat: Latitude
-   lon: Longitude
-   who\_region: WHO region
-   who\_region\_code: WHO region code
-   world\_bank\_income\_group: World Bank Income Group
-   world\_bank\_income\_group\_code: World Bank Income Group code
-   world\_bank\_income\_group\_gni\_reference\_year: World Bank Income
    Group GNI reference year
-   world\_bank\_income\_group\_release\_date: World Bank Income Group
    release year

**Files**

-   `covid-19_ts_us_confirmed.csv.gz`: CSV file with confirmed cases for
    US
-   `covid-19_ts_us_confirmed.rds`: RDS version (`tsibble`)

**Data structure**:

-   continent: Geographical continent
-   iso3c: ISO 3166-1 alpha-3 country code
-   country\_region: Country (or region)
-   province\_state: Province/State/Subnational division
-   ts: UTC date in “YYYY-MM-DD” format
-   confirmed: number of confirmed cases
-   lat: Latitude
-   lon: Longitude
-   who\_region: WHO region
-   who\_region\_code: WHO region code
-   world\_bank\_income\_group: World Bank Income Group
-   world\_bank\_income\_group\_code: World Bank Income Group code
-   world\_bank\_income\_group\_gni\_reference\_year: World Bank Income
    Group GNI reference year
-   world\_bank\_income\_group\_release\_date: World Bank Income Group
    release year

**Files**

-   `covid-19_ts_us_deaths.csv.gz`: CSV file with deaths for US
-   `covid-19_ts_us_deaths.rds`: RDS version (`tsibble`)

**Data structure**:

-   continent: Geographical continent
-   iso3c: ISO 3166-1 alpha-3 country code
-   country\_region: Country (or region)
-   province\_state: Province/State/Subnational division
-   ts: UTC date in “YYYY-MM-DD” format
-   deaths: number of deaths
-   lat: Latitude
-   lon: Longitude
-   who\_region: WHO region
-   who\_region\_code: WHO region code
-   world\_bank\_income\_group: World Bank Income Group
-   world\_bank\_income\_group\_code: World Bank Income Group code
-   world\_bank\_income\_group\_gni\_reference\_year: World Bank Income
    Group GNI reference year
-   world\_bank\_income\_group\_release\_date: World Bank Income Group
    release year

### WHO situation report data:

**Files**:

-   `covid-19_who_sitrep_raw.rds`: Lightly cleaned WHO situation report
    in RDS format
-   `covid-19_ts_who_sitrep.csv.gz`: Timeseries from WHO situation
    reports
-   `covid-19_ts_who_sitrep.rds`: RDS version (`tsibble`)

**Data structure**:

-   continent: Geographical continent
-   iso3c: ISO 3166-1 alpha-3 country code
-   country\_region: Country (or region)
-   province\_state: Province/State/Subnational division
-   ts: UTC date in “YYYY-MM-DD” format
-   cases: number of cases at ts
-   who\_region: WHO region
-   who\_region\_code: WHO region code
-   world\_bank\_income\_group: World Bank Income Group
-   world\_bank\_income\_group\_code: World Bank Income Group code
-   world\_bank\_income\_group\_gni\_reference\_year: World Bank Income
    Group GNI reference year
-   world\_bank\_income\_group\_release\_date: World Bank Income Group
    release year

### WHO metadata

**Source**:
<a href="https://apps.who.int/gho/data/node.metadata.COUNTRY?lang=en" class="uri">https://apps.who.int/gho/data/node.metadata.COUNTRY?lang=en</a>
(CSV Xmart format)

**Files**:

-   `xmart.csv`: CSV Xmart format (downloaded on 2020-03-09)
-   `who_metadata.Rdata`: Rdata format version

**Data structure**:

-   continent: Geographical continent
-   who\_region: WHO region
-   country\_region: Country (or region)
-   iso3c: ISO 3166-1 alpha-3 country code
-   province\_state: Province/State/Subnational division
-   ts: UTC timestamp in “YYYY-MM-DD hh:mm:ss” format
-   cases: Number of cases
-   who\_region\_code: Code for WHO region
-   world\_bank\_income\_group: World Bank Income Group
-   world\_bank\_income\_group\_code: World Bank Income Group code
-   world\_bank\_income\_group\_gni\_reference\_year: World Bank Income
    Group GNI reference year
-   world\_bank\_income\_group\_release\_date: World Bank Income Group
    release year

### World Bank population estimate for 2020

**Source**:
<a href="https://databank.worldbank.org/source/population-estimates-and-projections" class="uri">https://databank.worldbank.org/source/population-estimates-and-projections</a>

**Files**: -
`Data_Extract_From_Population_estimates_and_projections.zip`: data and
metadata from World Bank (dowloaded on 2020-03-14) -
`wb_population.Rdata`: Rdata format

**Data Structure** (Rdata file):

-   country\_name: Country name
-   country\_code: ISO 3166-1 alpha-3 country code
-   series\_name: World Bank variable name
-   series\_code: World Bank variable code
-   population\_2020: Estimated polution for 2020

------------------------------------------------------------------------

Plots of confirmed cases
------------------------

### Confirmed cases by country (Worldwide):

![COVID-19 Confirmed cases by country
(Worldwide)](plots/covid19-confirmed-cases-by-country.png)

### Africa

#### Confirmed cases by country in Africa:

![COVID-19 Confirmed cases by country
(Africa)](plots/africa-covid19-confirmed-cases-by-country.png)

#### Confirmed cases by country in Africa (per million inhabitants):

![COVID-19 Confirmed cases by country per million
(Africa)](plots/africa-covid19-confirmed-cases-per-million-by-country.png)

#### Trajectories in Africa

![COVID-19 trajectories in
Africa](plots/covid-19-trajectories-africa.png)

### Americas

#### Confirmed cases by country in the Americas:

![COVID-19 Confirmed cases by country
(Americas)](plots/americas-covid19-confirmed-cases-by-country.png)

#### Confirmed cases by country in the Americas per million inhabitants:

![COVID-19 Confirmed cases by country per million
(Americas)](plots/americas-covid19-confirmed-cases-per-million-by-country.png)

#### Trajectories in the Americas

![COVID-19 trajectories in the
Americas](plots/covid-19-trajectories-americas.png)

### Asia

#### Confirmed cases by country in Asia:

![COVID-19 Confirmed cases by country
(Asia)](plots/asia-covid19-confirmed-cases-by-country.png)

#### Confirmed cases by country in Asia per million inhabitants:

![COVID-19 Confirmed cases by country per million
(Asia)](plots/asia-covid19-confirmed-cases-per-million-by-country.png)

#### Trajectories in Asia

![COVID-19 trajectories in Europe](plots/covid-19-trajectories-asia.png)

### Europe

#### Confirmed cases by country in Europe:

![COVID-19 Confirmed cases by country
(Europe)](plots/europe-covid19-confirmed-cases-by-country.png)

#### Confirmed cases by country in Europe per million inhabitants:

![COVID-19 Confirmed cases by country per million
(Europe)](plots/europe-covid19-confirmed-cases-per-million-by-country.png)

#### Trajectories in Europe

![COVID-19 trajectories in
Europe](plots/covid-19-trajectories-europe.png)

### Oceania

#### Confirmed cases by country in Oceania:

![COVID-19 Confirmed cases by country
(Oceania)](plots/oceania-covid19-confirmed-cases-by-country.png)

#### Confirmed cases by country in Oceania per million inhabitants:

![COVID-19 Confirmed cases by country per million
(Oceania)](plots/oceania-covid19-confirmed-cases-per-million-by-country.png)

#### Trajectories in Oceania

![COVID-19 trajectories in
Oceania](plots/covid-19-trajectories-oceania.png)

### Confirmed cases (Other locations):

![COVID-19 Confirmed cases by country
(Others)](plots/others-covid19-confirmed-cases-by-country.png)

------------------------------------------------------------------------

Here are couple of quick tables:

[For cases in
China](https://github.com/jmcastagnetto/covid-19-data-cleanup/blob/master/latest_china_ratios.md)

<table>
<colgroup>
<col style="width: 3%" />
<col style="width: 2%" />
<col style="width: 5%" />
<col style="width: 5%" />
<col style="width: 3%" />
<col style="width: 2%" />
<col style="width: 3%" />
<col style="width: 7%" />
<col style="width: 5%" />
<col style="width: 7%" />
<col style="width: 5%" />
<col style="width: 5%" />
<col style="width: 8%" />
<col style="width: 9%" />
<col style="width: 14%" />
<col style="width: 12%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">continent</th>
<th style="text-align: left;">iso3c</th>
<th style="text-align: left;">country_region</th>
<th style="text-align: left;">province_state</th>
<th style="text-align: right;">confirmed</th>
<th style="text-align: right;">deaths</th>
<th style="text-align: right;">recovered</th>
<th style="text-align: right;">global_confirmed_pct</th>
<th style="text-align: right;">global_death_pct</th>
<th style="text-align: right;">global_recovered_pct</th>
<th style="text-align: left;">who_region_code</th>
<th style="text-align: left;">who_region</th>
<th style="text-align: left;">world_bank_income_group</th>
<th style="text-align: left;">world_bank_income_group_code</th>
<th style="text-align: left;">world_bank_income_group_gni_reference_year</th>
<th style="text-align: left;">world_bank_income_group_release_date</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">China</td>
<td style="text-align: left;">Hubei</td>
<td style="text-align: right;">67803</td>
<td style="text-align: right;">3210</td>
<td style="text-align: right;">63945</td>
<td style="text-align: right;">5.330</td>
<td style="text-align: right;">4.627</td>
<td style="text-align: right;">24.881</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">China</td>
<td style="text-align: left;">Guangdong</td>
<td style="text-align: right;">1524</td>
<td style="text-align: right;">8</td>
<td style="text-align: right;">1387</td>
<td style="text-align: right;">0.120</td>
<td style="text-align: right;">0.012</td>
<td style="text-align: right;">0.540</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">China</td>
<td style="text-align: left;">Henan</td>
<td style="text-align: right;">1276</td>
<td style="text-align: right;">22</td>
<td style="text-align: right;">1251</td>
<td style="text-align: right;">0.100</td>
<td style="text-align: right;">0.032</td>
<td style="text-align: right;">0.487</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">China</td>
<td style="text-align: left;">Zhejiang</td>
<td style="text-align: right;">1263</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">1230</td>
<td style="text-align: right;">0.099</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.479</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">China</td>
<td style="text-align: left;">Hunan</td>
<td style="text-align: right;">1019</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">1014</td>
<td style="text-align: right;">0.080</td>
<td style="text-align: right;">0.006</td>
<td style="text-align: right;">0.395</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">China</td>
<td style="text-align: left;">Anhui</td>
<td style="text-align: right;">990</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">984</td>
<td style="text-align: right;">0.078</td>
<td style="text-align: right;">0.009</td>
<td style="text-align: right;">0.383</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">China</td>
<td style="text-align: left;">Jiangxi</td>
<td style="text-align: right;">937</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">935</td>
<td style="text-align: right;">0.074</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.364</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">China</td>
<td style="text-align: left;">Hong Kong</td>
<td style="text-align: right;">890</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">206</td>
<td style="text-align: right;">0.070</td>
<td style="text-align: right;">0.006</td>
<td style="text-align: right;">0.080</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">China</td>
<td style="text-align: left;">Shandong</td>
<td style="text-align: right;">779</td>
<td style="text-align: right;">7</td>
<td style="text-align: right;">755</td>
<td style="text-align: right;">0.061</td>
<td style="text-align: right;">0.010</td>
<td style="text-align: right;">0.294</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">China</td>
<td style="text-align: left;">Jiangsu</td>
<td style="text-align: right;">651</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">633</td>
<td style="text-align: right;">0.051</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.246</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">China</td>
<td style="text-align: left;">Beijing</td>
<td style="text-align: right;">586</td>
<td style="text-align: right;">8</td>
<td style="text-align: right;">441</td>
<td style="text-align: right;">0.046</td>
<td style="text-align: right;">0.012</td>
<td style="text-align: right;">0.172</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">China</td>
<td style="text-align: left;">Chongqing</td>
<td style="text-align: right;">579</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">570</td>
<td style="text-align: right;">0.046</td>
<td style="text-align: right;">0.009</td>
<td style="text-align: right;">0.222</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">China</td>
<td style="text-align: left;">Sichuan</td>
<td style="text-align: right;">558</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">539</td>
<td style="text-align: right;">0.044</td>
<td style="text-align: right;">0.004</td>
<td style="text-align: right;">0.210</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">China</td>
<td style="text-align: left;">Shanghai</td>
<td style="text-align: right;">531</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">383</td>
<td style="text-align: right;">0.042</td>
<td style="text-align: right;">0.009</td>
<td style="text-align: right;">0.149</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">China</td>
<td style="text-align: left;">Heilongjiang</td>
<td style="text-align: right;">504</td>
<td style="text-align: right;">13</td>
<td style="text-align: right;">469</td>
<td style="text-align: right;">0.040</td>
<td style="text-align: right;">0.019</td>
<td style="text-align: right;">0.182</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">China</td>
<td style="text-align: left;">Fujian</td>
<td style="text-align: right;">350</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">303</td>
<td style="text-align: right;">0.028</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.118</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">China</td>
<td style="text-align: left;">Hebei</td>
<td style="text-align: right;">327</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">310</td>
<td style="text-align: right;">0.026</td>
<td style="text-align: right;">0.009</td>
<td style="text-align: right;">0.121</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">China</td>
<td style="text-align: left;">Shaanxi</td>
<td style="text-align: right;">256</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">245</td>
<td style="text-align: right;">0.020</td>
<td style="text-align: right;">0.004</td>
<td style="text-align: right;">0.095</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">China</td>
<td style="text-align: left;">Guangxi</td>
<td style="text-align: right;">254</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">252</td>
<td style="text-align: right;">0.020</td>
<td style="text-align: right;">0.003</td>
<td style="text-align: right;">0.098</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">China</td>
<td style="text-align: left;">Yunnan</td>
<td style="text-align: right;">184</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">172</td>
<td style="text-align: right;">0.014</td>
<td style="text-align: right;">0.003</td>
<td style="text-align: right;">0.067</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">China</td>
<td style="text-align: left;">Tianjin</td>
<td style="text-align: right;">180</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">144</td>
<td style="text-align: right;">0.014</td>
<td style="text-align: right;">0.004</td>
<td style="text-align: right;">0.056</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">China</td>
<td style="text-align: left;">Hainan</td>
<td style="text-align: right;">168</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">162</td>
<td style="text-align: right;">0.013</td>
<td style="text-align: right;">0.009</td>
<td style="text-align: right;">0.063</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">China</td>
<td style="text-align: left;">Guizhou</td>
<td style="text-align: right;">146</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">144</td>
<td style="text-align: right;">0.011</td>
<td style="text-align: right;">0.003</td>
<td style="text-align: right;">0.056</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">China</td>
<td style="text-align: left;">Liaoning</td>
<td style="text-align: right;">142</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">126</td>
<td style="text-align: right;">0.011</td>
<td style="text-align: right;">0.003</td>
<td style="text-align: right;">0.049</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">China</td>
<td style="text-align: left;">Gansu</td>
<td style="text-align: right;">138</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">131</td>
<td style="text-align: right;">0.011</td>
<td style="text-align: right;">0.003</td>
<td style="text-align: right;">0.051</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">China</td>
<td style="text-align: left;">Shanxi</td>
<td style="text-align: right;">138</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">133</td>
<td style="text-align: right;">0.011</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.052</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">China</td>
<td style="text-align: left;">Inner Mongolia</td>
<td style="text-align: right;">117</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">74</td>
<td style="text-align: right;">0.009</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.029</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">China</td>
<td style="text-align: left;">Jilin</td>
<td style="text-align: right;">98</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">92</td>
<td style="text-align: right;">0.008</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.036</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">China</td>
<td style="text-align: left;">Xinjiang</td>
<td style="text-align: right;">76</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">73</td>
<td style="text-align: right;">0.006</td>
<td style="text-align: right;">0.004</td>
<td style="text-align: right;">0.028</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">China</td>
<td style="text-align: left;">Ningxia</td>
<td style="text-align: right;">75</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">75</td>
<td style="text-align: right;">0.006</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.029</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">China</td>
<td style="text-align: left;">Macau</td>
<td style="text-align: right;">44</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">10</td>
<td style="text-align: right;">0.003</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.004</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">China</td>
<td style="text-align: left;">Qinghai</td>
<td style="text-align: right;">18</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">18</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.007</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">China</td>
<td style="text-align: left;">Tibet</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
</tbody>
</table>

[For cases outside
China](https://github.com/jmcastagnetto/covid-19-data-cleanup/blob/master/latest_not_china_ratios.md)

<table>
<colgroup>
<col style="width: 4%" />
<col style="width: 4%" />
<col style="width: 9%" />
<col style="width: 9%" />
<col style="width: 2%" />
<col style="width: 1%" />
<col style="width: 2%" />
<col style="width: 5%" />
<col style="width: 4%" />
<col style="width: 5%" />
<col style="width: 4%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 8%" />
<col style="width: 12%" />
<col style="width: 10%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">continent</th>
<th style="text-align: left;">iso3c</th>
<th style="text-align: left;">country_region</th>
<th style="text-align: left;">province_state</th>
<th style="text-align: right;">confirmed</th>
<th style="text-align: right;">deaths</th>
<th style="text-align: right;">recovered</th>
<th style="text-align: right;">global_confirmed_pct</th>
<th style="text-align: right;">global_death_pct</th>
<th style="text-align: right;">global_recovered_pct</th>
<th style="text-align: left;">who_region_code</th>
<th style="text-align: left;">who_region</th>
<th style="text-align: left;">world_bank_income_group</th>
<th style="text-align: left;">world_bank_income_group_code</th>
<th style="text-align: left;">world_bank_income_group_gni_reference_year</th>
<th style="text-align: left;">world_bank_income_group_release_date</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">USA</td>
<td style="text-align: left;">US</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">337072</td>
<td style="text-align: right;">9619</td>
<td style="text-align: right;">17448</td>
<td style="text-align: right;">26.497</td>
<td style="text-align: right;">13.865</td>
<td style="text-align: right;">6.789</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">ESP</td>
<td style="text-align: left;">Spain</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">131646</td>
<td style="text-align: right;">12641</td>
<td style="text-align: right;">38080</td>
<td style="text-align: right;">10.349</td>
<td style="text-align: right;">18.222</td>
<td style="text-align: right;">14.817</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">ITA</td>
<td style="text-align: left;">Italy</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">128948</td>
<td style="text-align: right;">15887</td>
<td style="text-align: right;">21815</td>
<td style="text-align: right;">10.137</td>
<td style="text-align: right;">22.901</td>
<td style="text-align: right;">8.488</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">DEU</td>
<td style="text-align: left;">Germany</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">100123</td>
<td style="text-align: right;">1584</td>
<td style="text-align: right;">28700</td>
<td style="text-align: right;">7.871</td>
<td style="text-align: right;">2.283</td>
<td style="text-align: right;">11.167</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">FRA</td>
<td style="text-align: left;">France</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">92839</td>
<td style="text-align: right;">8078</td>
<td style="text-align: right;">16183</td>
<td style="text-align: right;">7.298</td>
<td style="text-align: right;">11.644</td>
<td style="text-align: right;">6.297</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">IRN</td>
<td style="text-align: left;">Iran</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">58226</td>
<td style="text-align: right;">3603</td>
<td style="text-align: right;">19736</td>
<td style="text-align: right;">4.577</td>
<td style="text-align: right;">5.194</td>
<td style="text-align: right;">7.679</td>
<td style="text-align: left;">EMR</td>
<td style="text-align: left;">Eastern Mediterranean</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">GBR</td>
<td style="text-align: left;">United Kingdom</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">47806</td>
<td style="text-align: right;">4934</td>
<td style="text-align: right;">135</td>
<td style="text-align: right;">3.758</td>
<td style="text-align: right;">7.112</td>
<td style="text-align: right;">0.053</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">TUR</td>
<td style="text-align: left;">Turkey</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">27069</td>
<td style="text-align: right;">574</td>
<td style="text-align: right;">1042</td>
<td style="text-align: right;">2.128</td>
<td style="text-align: right;">0.827</td>
<td style="text-align: right;">0.405</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">CHE</td>
<td style="text-align: left;">Switzerland</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">21100</td>
<td style="text-align: right;">715</td>
<td style="text-align: right;">6415</td>
<td style="text-align: right;">1.659</td>
<td style="text-align: right;">1.031</td>
<td style="text-align: right;">2.496</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">BEL</td>
<td style="text-align: left;">Belgium</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">19691</td>
<td style="text-align: right;">1447</td>
<td style="text-align: right;">3751</td>
<td style="text-align: right;">1.548</td>
<td style="text-align: right;">2.086</td>
<td style="text-align: right;">1.460</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">NLD</td>
<td style="text-align: left;">Netherlands</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">17851</td>
<td style="text-align: right;">1766</td>
<td style="text-align: right;">250</td>
<td style="text-align: right;">1.403</td>
<td style="text-align: right;">2.546</td>
<td style="text-align: right;">0.097</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">AUT</td>
<td style="text-align: left;">Austria</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">12051</td>
<td style="text-align: right;">204</td>
<td style="text-align: right;">2998</td>
<td style="text-align: right;">0.947</td>
<td style="text-align: right;">0.294</td>
<td style="text-align: right;">1.167</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">PRT</td>
<td style="text-align: left;">Portugal</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">11278</td>
<td style="text-align: right;">295</td>
<td style="text-align: right;">75</td>
<td style="text-align: right;">0.887</td>
<td style="text-align: right;">0.425</td>
<td style="text-align: right;">0.029</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">BRA</td>
<td style="text-align: left;">Brazil</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">11130</td>
<td style="text-align: right;">486</td>
<td style="text-align: right;">127</td>
<td style="text-align: right;">0.875</td>
<td style="text-align: right;">0.701</td>
<td style="text-align: right;">0.049</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">KOR</td>
<td style="text-align: left;">Korea, South</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">10237</td>
<td style="text-align: right;">183</td>
<td style="text-align: right;">6463</td>
<td style="text-align: right;">0.805</td>
<td style="text-align: right;">0.264</td>
<td style="text-align: right;">2.515</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">ISR</td>
<td style="text-align: left;">Israel</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">8430</td>
<td style="text-align: right;">49</td>
<td style="text-align: right;">477</td>
<td style="text-align: right;">0.663</td>
<td style="text-align: right;">0.071</td>
<td style="text-align: right;">0.186</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">CAN</td>
<td style="text-align: left;">Canada</td>
<td style="text-align: left;">Quebec</td>
<td style="text-align: right;">7944</td>
<td style="text-align: right;">75</td>
<td style="text-align: right;">NA</td>
<td style="text-align: right;">0.624</td>
<td style="text-align: right;">0.108</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">SWE</td>
<td style="text-align: left;">Sweden</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">6830</td>
<td style="text-align: right;">401</td>
<td style="text-align: right;">205</td>
<td style="text-align: right;">0.537</td>
<td style="text-align: right;">0.578</td>
<td style="text-align: right;">0.080</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">NOR</td>
<td style="text-align: left;">Norway</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">5687</td>
<td style="text-align: right;">71</td>
<td style="text-align: right;">32</td>
<td style="text-align: right;">0.447</td>
<td style="text-align: right;">0.102</td>
<td style="text-align: right;">0.012</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">RUS</td>
<td style="text-align: left;">Russia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">5389</td>
<td style="text-align: right;">45</td>
<td style="text-align: right;">355</td>
<td style="text-align: right;">0.424</td>
<td style="text-align: right;">0.065</td>
<td style="text-align: right;">0.138</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">IRL</td>
<td style="text-align: left;">Ireland</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">4994</td>
<td style="text-align: right;">158</td>
<td style="text-align: right;">25</td>
<td style="text-align: right;">0.393</td>
<td style="text-align: right;">0.228</td>
<td style="text-align: right;">0.010</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">CZE</td>
<td style="text-align: left;">Czechia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">4587</td>
<td style="text-align: right;">67</td>
<td style="text-align: right;">96</td>
<td style="text-align: right;">0.361</td>
<td style="text-align: right;">0.097</td>
<td style="text-align: right;">0.037</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">CHL</td>
<td style="text-align: left;">Chile</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">4471</td>
<td style="text-align: right;">34</td>
<td style="text-align: right;">618</td>
<td style="text-align: right;">0.351</td>
<td style="text-align: right;">0.049</td>
<td style="text-align: right;">0.240</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">DNK</td>
<td style="text-align: left;">Denmark</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">4369</td>
<td style="text-align: right;">179</td>
<td style="text-align: right;">1327</td>
<td style="text-align: right;">0.343</td>
<td style="text-align: right;">0.258</td>
<td style="text-align: right;">0.516</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">CAN</td>
<td style="text-align: left;">Canada</td>
<td style="text-align: left;">Ontario</td>
<td style="text-align: right;">4354</td>
<td style="text-align: right;">119</td>
<td style="text-align: right;">NA</td>
<td style="text-align: right;">0.342</td>
<td style="text-align: right;">0.172</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">POL</td>
<td style="text-align: left;">Poland</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">4102</td>
<td style="text-align: right;">94</td>
<td style="text-align: right;">134</td>
<td style="text-align: right;">0.322</td>
<td style="text-align: right;">0.135</td>
<td style="text-align: right;">0.052</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">ROU</td>
<td style="text-align: left;">Romania</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">3864</td>
<td style="text-align: right;">151</td>
<td style="text-align: right;">374</td>
<td style="text-align: right;">0.304</td>
<td style="text-align: right;">0.218</td>
<td style="text-align: right;">0.146</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">MYS</td>
<td style="text-align: left;">Malaysia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">3662</td>
<td style="text-align: right;">61</td>
<td style="text-align: right;">1005</td>
<td style="text-align: right;">0.288</td>
<td style="text-align: right;">0.088</td>
<td style="text-align: right;">0.391</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">ECU</td>
<td style="text-align: left;">Ecuador</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">3646</td>
<td style="text-align: right;">180</td>
<td style="text-align: right;">100</td>
<td style="text-align: right;">0.287</td>
<td style="text-align: right;">0.259</td>
<td style="text-align: right;">0.039</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">IND</td>
<td style="text-align: left;">India</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">3588</td>
<td style="text-align: right;">99</td>
<td style="text-align: right;">229</td>
<td style="text-align: right;">0.282</td>
<td style="text-align: right;">0.143</td>
<td style="text-align: right;">0.089</td>
<td style="text-align: left;">SEAR</td>
<td style="text-align: left;">South-East Asia</td>
<td style="text-align: left;">Lower middle income</td>
<td style="text-align: left;">WB_LMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">PHL</td>
<td style="text-align: left;">Philippines</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">3246</td>
<td style="text-align: right;">152</td>
<td style="text-align: right;">64</td>
<td style="text-align: right;">0.255</td>
<td style="text-align: right;">0.219</td>
<td style="text-align: right;">0.025</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">Lower middle income</td>
<td style="text-align: left;">WB_LMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">PAK</td>
<td style="text-align: left;">Pakistan</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">3157</td>
<td style="text-align: right;">47</td>
<td style="text-align: right;">211</td>
<td style="text-align: right;">0.248</td>
<td style="text-align: right;">0.068</td>
<td style="text-align: right;">0.082</td>
<td style="text-align: left;">EMR</td>
<td style="text-align: left;">Eastern Mediterranean</td>
<td style="text-align: left;">Lower middle income</td>
<td style="text-align: left;">WB_LMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">JPN</td>
<td style="text-align: left;">Japan</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">3139</td>
<td style="text-align: right;">77</td>
<td style="text-align: right;">514</td>
<td style="text-align: right;">0.247</td>
<td style="text-align: right;">0.111</td>
<td style="text-align: right;">0.200</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">LUX</td>
<td style="text-align: left;">Luxembourg</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">2804</td>
<td style="text-align: right;">36</td>
<td style="text-align: right;">500</td>
<td style="text-align: right;">0.220</td>
<td style="text-align: right;">0.052</td>
<td style="text-align: right;">0.195</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Oceania</td>
<td style="text-align: left;">AUS</td>
<td style="text-align: left;">Australia</td>
<td style="text-align: left;">New South Wales</td>
<td style="text-align: right;">2580</td>
<td style="text-align: right;">16</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">0.203</td>
<td style="text-align: right;">0.023</td>
<td style="text-align: right;">0.002</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">SAU</td>
<td style="text-align: left;">Saudi Arabia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">2402</td>
<td style="text-align: right;">34</td>
<td style="text-align: right;">488</td>
<td style="text-align: right;">0.189</td>
<td style="text-align: right;">0.049</td>
<td style="text-align: right;">0.190</td>
<td style="text-align: left;">EMR</td>
<td style="text-align: left;">Eastern Mediterranean</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">PER</td>
<td style="text-align: left;">Peru</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">2281</td>
<td style="text-align: right;">83</td>
<td style="text-align: right;">989</td>
<td style="text-align: right;">0.179</td>
<td style="text-align: right;">0.120</td>
<td style="text-align: right;">0.385</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">IDN</td>
<td style="text-align: left;">Indonesia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">2273</td>
<td style="text-align: right;">198</td>
<td style="text-align: right;">164</td>
<td style="text-align: right;">0.179</td>
<td style="text-align: right;">0.285</td>
<td style="text-align: right;">0.064</td>
<td style="text-align: left;">SEAR</td>
<td style="text-align: left;">South-East Asia</td>
<td style="text-align: left;">Lower middle income</td>
<td style="text-align: left;">WB_LMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">THA</td>
<td style="text-align: left;">Thailand</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">2169</td>
<td style="text-align: right;">23</td>
<td style="text-align: right;">793</td>
<td style="text-align: right;">0.171</td>
<td style="text-align: right;">0.033</td>
<td style="text-align: right;">0.309</td>
<td style="text-align: left;">SEAR</td>
<td style="text-align: left;">South-East Asia</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">FIN</td>
<td style="text-align: left;">Finland</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1927</td>
<td style="text-align: right;">28</td>
<td style="text-align: right;">300</td>
<td style="text-align: right;">0.151</td>
<td style="text-align: right;">0.040</td>
<td style="text-align: right;">0.117</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">SRB</td>
<td style="text-align: left;">Serbia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1908</td>
<td style="text-align: right;">51</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.150</td>
<td style="text-align: right;">0.074</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">MEX</td>
<td style="text-align: left;">Mexico</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1890</td>
<td style="text-align: right;">79</td>
<td style="text-align: right;">633</td>
<td style="text-align: right;">0.149</td>
<td style="text-align: right;">0.114</td>
<td style="text-align: right;">0.246</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">PAN</td>
<td style="text-align: left;">Panama</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1801</td>
<td style="text-align: right;">46</td>
<td style="text-align: right;">13</td>
<td style="text-align: right;">0.142</td>
<td style="text-align: right;">0.066</td>
<td style="text-align: right;">0.005</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">ARE</td>
<td style="text-align: left;">United Arab Emirates</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1799</td>
<td style="text-align: right;">10</td>
<td style="text-align: right;">144</td>
<td style="text-align: right;">0.141</td>
<td style="text-align: right;">0.014</td>
<td style="text-align: right;">0.056</td>
<td style="text-align: left;">EMR</td>
<td style="text-align: left;">Eastern Mediterranean</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">DOM</td>
<td style="text-align: left;">Dominican Republic</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1745</td>
<td style="text-align: right;">82</td>
<td style="text-align: right;">17</td>
<td style="text-align: right;">0.137</td>
<td style="text-align: right;">0.118</td>
<td style="text-align: right;">0.007</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">GRC</td>
<td style="text-align: left;">Greece</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1735</td>
<td style="text-align: right;">73</td>
<td style="text-align: right;">78</td>
<td style="text-align: right;">0.136</td>
<td style="text-align: right;">0.105</td>
<td style="text-align: right;">0.030</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">ZAF</td>
<td style="text-align: left;">South Africa</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1655</td>
<td style="text-align: right;">11</td>
<td style="text-align: right;">95</td>
<td style="text-align: right;">0.130</td>
<td style="text-align: right;">0.016</td>
<td style="text-align: right;">0.037</td>
<td style="text-align: left;">AFR</td>
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">QAT</td>
<td style="text-align: left;">Qatar</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1604</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">123</td>
<td style="text-align: right;">0.126</td>
<td style="text-align: right;">0.006</td>
<td style="text-align: right;">0.048</td>
<td style="text-align: left;">EMR</td>
<td style="text-align: left;">Eastern Mediterranean</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">ISL</td>
<td style="text-align: left;">Iceland</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1486</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">428</td>
<td style="text-align: right;">0.117</td>
<td style="text-align: right;">0.006</td>
<td style="text-align: right;">0.167</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">COL</td>
<td style="text-align: left;">Colombia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1485</td>
<td style="text-align: right;">35</td>
<td style="text-align: right;">88</td>
<td style="text-align: right;">0.117</td>
<td style="text-align: right;">0.050</td>
<td style="text-align: right;">0.034</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">ARG</td>
<td style="text-align: left;">Argentina</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1451</td>
<td style="text-align: right;">44</td>
<td style="text-align: right;">280</td>
<td style="text-align: right;">0.114</td>
<td style="text-align: right;">0.063</td>
<td style="text-align: right;">0.109</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">DZA</td>
<td style="text-align: left;">Algeria</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1320</td>
<td style="text-align: right;">152</td>
<td style="text-align: right;">90</td>
<td style="text-align: right;">0.104</td>
<td style="text-align: right;">0.219</td>
<td style="text-align: right;">0.035</td>
<td style="text-align: left;">AFR</td>
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">SGP</td>
<td style="text-align: left;">Singapore</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1309</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">320</td>
<td style="text-align: right;">0.103</td>
<td style="text-align: right;">0.009</td>
<td style="text-align: right;">0.125</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">UKR</td>
<td style="text-align: left;">Ukraine</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1308</td>
<td style="text-align: right;">37</td>
<td style="text-align: right;">28</td>
<td style="text-align: right;">0.103</td>
<td style="text-align: right;">0.053</td>
<td style="text-align: right;">0.011</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">Lower middle income</td>
<td style="text-align: left;">WB_LMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">CAN</td>
<td style="text-align: left;">Canada</td>
<td style="text-align: left;">British Columbia</td>
<td style="text-align: right;">1203</td>
<td style="text-align: right;">38</td>
<td style="text-align: right;">NA</td>
<td style="text-align: right;">0.095</td>
<td style="text-align: right;">0.055</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">HRV</td>
<td style="text-align: left;">Croatia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1182</td>
<td style="text-align: right;">15</td>
<td style="text-align: right;">125</td>
<td style="text-align: right;">0.093</td>
<td style="text-align: right;">0.022</td>
<td style="text-align: right;">0.049</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">CAN</td>
<td style="text-align: left;">Canada</td>
<td style="text-align: left;">Alberta</td>
<td style="text-align: right;">1181</td>
<td style="text-align: right;">20</td>
<td style="text-align: right;">NA</td>
<td style="text-align: right;">0.093</td>
<td style="text-align: right;">0.029</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">EGY</td>
<td style="text-align: left;">Egypt</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1173</td>
<td style="text-align: right;">78</td>
<td style="text-align: right;">247</td>
<td style="text-align: right;">0.092</td>
<td style="text-align: right;">0.112</td>
<td style="text-align: right;">0.096</td>
<td style="text-align: left;">EMR</td>
<td style="text-align: left;">Eastern Mediterranean</td>
<td style="text-align: left;">Lower middle income</td>
<td style="text-align: left;">WB_LMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Oceania</td>
<td style="text-align: left;">AUS</td>
<td style="text-align: left;">Australia</td>
<td style="text-align: left;">Victoria</td>
<td style="text-align: right;">1135</td>
<td style="text-align: right;">8</td>
<td style="text-align: right;">573</td>
<td style="text-align: right;">0.089</td>
<td style="text-align: right;">0.012</td>
<td style="text-align: right;">0.223</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">EST</td>
<td style="text-align: left;">Estonia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1097</td>
<td style="text-align: right;">15</td>
<td style="text-align: right;">62</td>
<td style="text-align: right;">0.086</td>
<td style="text-align: right;">0.022</td>
<td style="text-align: right;">0.024</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Oceania</td>
<td style="text-align: left;">NZL</td>
<td style="text-align: left;">New Zealand</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1039</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">156</td>
<td style="text-align: right;">0.082</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.061</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">MAR</td>
<td style="text-align: left;">Morocco</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1021</td>
<td style="text-align: right;">70</td>
<td style="text-align: right;">76</td>
<td style="text-align: right;">0.080</td>
<td style="text-align: right;">0.101</td>
<td style="text-align: right;">0.030</td>
<td style="text-align: left;">EMR</td>
<td style="text-align: left;">Eastern Mediterranean</td>
<td style="text-align: left;">Lower middle income</td>
<td style="text-align: left;">WB_LMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">SVN</td>
<td style="text-align: left;">Slovenia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">997</td>
<td style="text-align: right;">28</td>
<td style="text-align: right;">79</td>
<td style="text-align: right;">0.078</td>
<td style="text-align: right;">0.040</td>
<td style="text-align: right;">0.031</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">IRQ</td>
<td style="text-align: left;">Iraq</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">961</td>
<td style="text-align: right;">61</td>
<td style="text-align: right;">279</td>
<td style="text-align: right;">0.076</td>
<td style="text-align: right;">0.088</td>
<td style="text-align: right;">0.109</td>
<td style="text-align: left;">EMR</td>
<td style="text-align: left;">Eastern Mediterranean</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Oceania</td>
<td style="text-align: left;">AUS</td>
<td style="text-align: left;">Australia</td>
<td style="text-align: left;">Queensland</td>
<td style="text-align: right;">907</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">8</td>
<td style="text-align: right;">0.071</td>
<td style="text-align: right;">0.006</td>
<td style="text-align: right;">0.003</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">MDA</td>
<td style="text-align: left;">Moldova</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">864</td>
<td style="text-align: right;">15</td>
<td style="text-align: right;">30</td>
<td style="text-align: right;">0.068</td>
<td style="text-align: right;">0.022</td>
<td style="text-align: right;">0.012</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">Lower middle income</td>
<td style="text-align: left;">WB_LMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">ARM</td>
<td style="text-align: left;">Armenia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">822</td>
<td style="text-align: right;">7</td>
<td style="text-align: right;">57</td>
<td style="text-align: right;">0.065</td>
<td style="text-align: right;">0.010</td>
<td style="text-align: right;">0.022</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">LTU</td>
<td style="text-align: left;">Lithuania</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">811</td>
<td style="text-align: right;">13</td>
<td style="text-align: right;">7</td>
<td style="text-align: right;">0.064</td>
<td style="text-align: right;">0.019</td>
<td style="text-align: right;">0.003</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">HUN</td>
<td style="text-align: left;">Hungary</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">733</td>
<td style="text-align: right;">34</td>
<td style="text-align: right;">66</td>
<td style="text-align: right;">0.058</td>
<td style="text-align: right;">0.049</td>
<td style="text-align: right;">0.026</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Diamond Princess</td>
<td style="text-align: left;">Diamond Princess</td>
<td style="text-align: left;">Diamond Princess</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">712</td>
<td style="text-align: right;">11</td>
<td style="text-align: right;">619</td>
<td style="text-align: right;">0.056</td>
<td style="text-align: right;">0.016</td>
<td style="text-align: right;">0.241</td>
<td style="text-align: left;">NA</td>
<td style="text-align: left;">NA</td>
<td style="text-align: left;">NA</td>
<td style="text-align: left;">NA</td>
<td style="text-align: left;">NA</td>
<td style="text-align: left;">NA</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">BHR</td>
<td style="text-align: left;">Bahrain</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">700</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">431</td>
<td style="text-align: right;">0.055</td>
<td style="text-align: right;">0.006</td>
<td style="text-align: right;">0.168</td>
<td style="text-align: left;">EMR</td>
<td style="text-align: left;">Eastern Mediterranean</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">BIH</td>
<td style="text-align: left;">Bosnia and Herzegovina</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">654</td>
<td style="text-align: right;">23</td>
<td style="text-align: right;">30</td>
<td style="text-align: right;">0.051</td>
<td style="text-align: right;">0.033</td>
<td style="text-align: right;">0.012</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">CMR</td>
<td style="text-align: left;">Cameroon</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">650</td>
<td style="text-align: right;">9</td>
<td style="text-align: right;">17</td>
<td style="text-align: right;">0.051</td>
<td style="text-align: right;">0.013</td>
<td style="text-align: right;">0.007</td>
<td style="text-align: left;">AFR</td>
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">Lower middle income</td>
<td style="text-align: left;">WB_LMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">AZE</td>
<td style="text-align: left;">Azerbaijan</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">584</td>
<td style="text-align: right;">7</td>
<td style="text-align: right;">32</td>
<td style="text-align: right;">0.046</td>
<td style="text-align: right;">0.010</td>
<td style="text-align: right;">0.012</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">KAZ</td>
<td style="text-align: left;">Kazakhstan</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">584</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">42</td>
<td style="text-align: right;">0.046</td>
<td style="text-align: right;">0.009</td>
<td style="text-align: right;">0.016</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">TUN</td>
<td style="text-align: left;">Tunisia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">574</td>
<td style="text-align: right;">22</td>
<td style="text-align: right;">5</td>
<td style="text-align: right;">0.045</td>
<td style="text-align: right;">0.032</td>
<td style="text-align: right;">0.002</td>
<td style="text-align: left;">EMR</td>
<td style="text-align: left;">Eastern Mediterranean</td>
<td style="text-align: left;">Lower middle income</td>
<td style="text-align: left;">WB_LMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">BLR</td>
<td style="text-align: left;">Belarus</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">562</td>
<td style="text-align: right;">8</td>
<td style="text-align: right;">52</td>
<td style="text-align: right;">0.044</td>
<td style="text-align: right;">0.012</td>
<td style="text-align: right;">0.020</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">KWT</td>
<td style="text-align: left;">Kuwait</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">556</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">99</td>
<td style="text-align: right;">0.044</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.039</td>
<td style="text-align: left;">EMR</td>
<td style="text-align: left;">Eastern Mediterranean</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">MKD</td>
<td style="text-align: left;">North Macedonia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">555</td>
<td style="text-align: right;">18</td>
<td style="text-align: right;">23</td>
<td style="text-align: right;">0.044</td>
<td style="text-align: right;">0.026</td>
<td style="text-align: right;">0.009</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">LVA</td>
<td style="text-align: left;">Latvia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">533</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.042</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">BGR</td>
<td style="text-align: left;">Bulgaria</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">531</td>
<td style="text-align: right;">20</td>
<td style="text-align: right;">37</td>
<td style="text-align: right;">0.042</td>
<td style="text-align: right;">0.029</td>
<td style="text-align: right;">0.014</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">LBN</td>
<td style="text-align: left;">Lebanon</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">527</td>
<td style="text-align: right;">18</td>
<td style="text-align: right;">54</td>
<td style="text-align: right;">0.041</td>
<td style="text-align: right;">0.026</td>
<td style="text-align: right;">0.021</td>
<td style="text-align: left;">EMR</td>
<td style="text-align: left;">Eastern Mediterranean</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">AND</td>
<td style="text-align: left;">Andorra</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">501</td>
<td style="text-align: right;">18</td>
<td style="text-align: right;">26</td>
<td style="text-align: right;">0.039</td>
<td style="text-align: right;">0.026</td>
<td style="text-align: right;">0.010</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">SVK</td>
<td style="text-align: left;">Slovakia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">485</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">10</td>
<td style="text-align: right;">0.038</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.004</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">CRI</td>
<td style="text-align: left;">Costa Rica</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">454</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">16</td>
<td style="text-align: right;">0.036</td>
<td style="text-align: right;">0.003</td>
<td style="text-align: right;">0.006</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Oceania</td>
<td style="text-align: left;">AUS</td>
<td style="text-align: left;">Australia</td>
<td style="text-align: left;">Western Australia</td>
<td style="text-align: right;">453</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">92</td>
<td style="text-align: right;">0.036</td>
<td style="text-align: right;">0.004</td>
<td style="text-align: right;">0.036</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CYP</td>
<td style="text-align: left;">Cyprus</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">446</td>
<td style="text-align: right;">9</td>
<td style="text-align: right;">37</td>
<td style="text-align: right;">0.035</td>
<td style="text-align: right;">0.013</td>
<td style="text-align: right;">0.014</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Oceania</td>
<td style="text-align: left;">AUS</td>
<td style="text-align: left;">Australia</td>
<td style="text-align: left;">South Australia</td>
<td style="text-align: right;">407</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">46</td>
<td style="text-align: right;">0.032</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.018</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">URY</td>
<td style="text-align: left;">Uruguay</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">400</td>
<td style="text-align: right;">5</td>
<td style="text-align: right;">93</td>
<td style="text-align: right;">0.031</td>
<td style="text-align: right;">0.007</td>
<td style="text-align: right;">0.036</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">TWN</td>
<td style="text-align: left;">Taiwan*</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">363</td>
<td style="text-align: right;">5</td>
<td style="text-align: right;">50</td>
<td style="text-align: right;">0.029</td>
<td style="text-align: right;">0.007</td>
<td style="text-align: right;">0.019</td>
<td style="text-align: left;">NA</td>
<td style="text-align: left;">NA</td>
<td style="text-align: left;">NA</td>
<td style="text-align: left;">NA</td>
<td style="text-align: left;">NA</td>
<td style="text-align: left;">NA</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">ALB</td>
<td style="text-align: left;">Albania</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">361</td>
<td style="text-align: right;">20</td>
<td style="text-align: right;">104</td>
<td style="text-align: right;">0.028</td>
<td style="text-align: right;">0.029</td>
<td style="text-align: right;">0.040</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">AFG</td>
<td style="text-align: left;">Afghanistan</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">349</td>
<td style="text-align: right;">7</td>
<td style="text-align: right;">15</td>
<td style="text-align: right;">0.027</td>
<td style="text-align: right;">0.010</td>
<td style="text-align: right;">0.006</td>
<td style="text-align: left;">EMR</td>
<td style="text-align: left;">Eastern Mediterranean</td>
<td style="text-align: left;">Low income</td>
<td style="text-align: left;">WB_LI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">BFA</td>
<td style="text-align: left;">Burkina Faso</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">345</td>
<td style="text-align: right;">17</td>
<td style="text-align: right;">90</td>
<td style="text-align: right;">0.027</td>
<td style="text-align: right;">0.025</td>
<td style="text-align: right;">0.035</td>
<td style="text-align: left;">AFR</td>
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">Low income</td>
<td style="text-align: left;">WB_LI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">JOR</td>
<td style="text-align: left;">Jordan</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">345</td>
<td style="text-align: right;">5</td>
<td style="text-align: right;">110</td>
<td style="text-align: right;">0.027</td>
<td style="text-align: right;">0.007</td>
<td style="text-align: right;">0.043</td>
<td style="text-align: left;">EMR</td>
<td style="text-align: left;">Eastern Mediterranean</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">FRA</td>
<td style="text-align: left;">France</td>
<td style="text-align: left;">Reunion</td>
<td style="text-align: right;">344</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">40</td>
<td style="text-align: right;">0.027</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.016</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">UZB</td>
<td style="text-align: left;">Uzbekistan</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">342</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">30</td>
<td style="text-align: right;">0.027</td>
<td style="text-align: right;">0.003</td>
<td style="text-align: right;">0.012</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">Lower middle income</td>
<td style="text-align: left;">WB_LMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">CUB</td>
<td style="text-align: left;">Cuba</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">320</td>
<td style="text-align: right;">8</td>
<td style="text-align: right;">15</td>
<td style="text-align: right;">0.025</td>
<td style="text-align: right;">0.012</td>
<td style="text-align: right;">0.006</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">GBR</td>
<td style="text-align: left;">United Kingdom</td>
<td style="text-align: left;">Channel Islands</td>
<td style="text-align: right;">309</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">27</td>
<td style="text-align: right;">0.024</td>
<td style="text-align: right;">0.009</td>
<td style="text-align: right;">0.011</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">OMN</td>
<td style="text-align: left;">Oman</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">298</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">61</td>
<td style="text-align: right;">0.023</td>
<td style="text-align: right;">0.003</td>
<td style="text-align: right;">0.024</td>
<td style="text-align: left;">EMR</td>
<td style="text-align: left;">Eastern Mediterranean</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">HND</td>
<td style="text-align: left;">Honduras</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">268</td>
<td style="text-align: right;">22</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">0.021</td>
<td style="text-align: right;">0.032</td>
<td style="text-align: right;">0.002</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">Lower middle income</td>
<td style="text-align: left;">WB_LMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">SMR</td>
<td style="text-align: left;">San Marino</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">266</td>
<td style="text-align: right;">32</td>
<td style="text-align: right;">35</td>
<td style="text-align: right;">0.021</td>
<td style="text-align: right;">0.046</td>
<td style="text-align: right;">0.014</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">CAN</td>
<td style="text-align: left;">Canada</td>
<td style="text-align: left;">Nova Scotia</td>
<td style="text-align: right;">262</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">NA</td>
<td style="text-align: right;">0.021</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">CIV</td>
<td style="text-align: left;">Cote d’Ivoire</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">261</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">37</td>
<td style="text-align: right;">0.021</td>
<td style="text-align: right;">0.004</td>
<td style="text-align: right;">0.014</td>
<td style="text-align: left;">AFR</td>
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">Lower middle income</td>
<td style="text-align: left;">WB_LMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">CAN</td>
<td style="text-align: left;">Canada</td>
<td style="text-align: left;">Saskatchewan</td>
<td style="text-align: right;">249</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">NA</td>
<td style="text-align: right;">0.020</td>
<td style="text-align: right;">0.004</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">VNM</td>
<td style="text-align: left;">Vietnam</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">241</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">90</td>
<td style="text-align: right;">0.019</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.035</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">Lower middle income</td>
<td style="text-align: left;">WB_LMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">PSE</td>
<td style="text-align: left;">West Bank and Gaza</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">237</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">25</td>
<td style="text-align: right;">0.019</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.010</td>
<td style="text-align: left;">NA</td>
<td style="text-align: left;">NA</td>
<td style="text-align: left;">Lower middle income</td>
<td style="text-align: left;">WB_LMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">NGA</td>
<td style="text-align: left;">Nigeria</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">232</td>
<td style="text-align: right;">5</td>
<td style="text-align: right;">33</td>
<td style="text-align: right;">0.018</td>
<td style="text-align: right;">0.007</td>
<td style="text-align: right;">0.013</td>
<td style="text-align: left;">AFR</td>
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">Lower middle income</td>
<td style="text-align: left;">WB_LMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">MLT</td>
<td style="text-align: left;">Malta</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">227</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">5</td>
<td style="text-align: right;">0.018</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.002</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">MUS</td>
<td style="text-align: left;">Mauritius</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">227</td>
<td style="text-align: right;">7</td>
<td style="text-align: right;">7</td>
<td style="text-align: right;">0.018</td>
<td style="text-align: right;">0.010</td>
<td style="text-align: right;">0.003</td>
<td style="text-align: left;">AFR</td>
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">SEN</td>
<td style="text-align: left;">Senegal</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">222</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">82</td>
<td style="text-align: right;">0.017</td>
<td style="text-align: right;">0.003</td>
<td style="text-align: right;">0.032</td>
<td style="text-align: left;">AFR</td>
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">Low income</td>
<td style="text-align: left;">WB_LI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">CAN</td>
<td style="text-align: left;">Canada</td>
<td style="text-align: left;">Newfoundland and Labrador</td>
<td style="text-align: right;">217</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">NA</td>
<td style="text-align: right;">0.017</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">GHA</td>
<td style="text-align: left;">Ghana</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">214</td>
<td style="text-align: right;">5</td>
<td style="text-align: right;">31</td>
<td style="text-align: right;">0.017</td>
<td style="text-align: right;">0.007</td>
<td style="text-align: right;">0.012</td>
<td style="text-align: left;">AFR</td>
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">Lower middle income</td>
<td style="text-align: left;">WB_LMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">MNE</td>
<td style="text-align: left;">Montenegro</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">214</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.017</td>
<td style="text-align: right;">0.003</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">CAN</td>
<td style="text-align: left;">Canada</td>
<td style="text-align: left;">Manitoba</td>
<td style="text-align: right;">203</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">NA</td>
<td style="text-align: right;">0.016</td>
<td style="text-align: right;">0.003</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">NER</td>
<td style="text-align: left;">Niger</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">184</td>
<td style="text-align: right;">10</td>
<td style="text-align: right;">13</td>
<td style="text-align: right;">0.014</td>
<td style="text-align: right;">0.014</td>
<td style="text-align: right;">0.005</td>
<td style="text-align: left;">AFR</td>
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">Low income</td>
<td style="text-align: left;">WB_LI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">DNK</td>
<td style="text-align: left;">Denmark</td>
<td style="text-align: left;">Faroe Islands</td>
<td style="text-align: right;">181</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">99</td>
<td style="text-align: right;">0.014</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.039</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">LKA</td>
<td style="text-align: left;">Sri Lanka</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">176</td>
<td style="text-align: right;">5</td>
<td style="text-align: right;">33</td>
<td style="text-align: right;">0.014</td>
<td style="text-align: right;">0.007</td>
<td style="text-align: right;">0.013</td>
<td style="text-align: left;">SEAR</td>
<td style="text-align: left;">South-East Asia</td>
<td style="text-align: left;">Lower middle income</td>
<td style="text-align: left;">WB_LMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">GEO</td>
<td style="text-align: left;">Georgia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">174</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">36</td>
<td style="text-align: right;">0.014</td>
<td style="text-align: right;">0.003</td>
<td style="text-align: right;">0.014</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">Lower middle income</td>
<td style="text-align: left;">WB_LMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">VEN</td>
<td style="text-align: left;">Venezuela</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">159</td>
<td style="text-align: right;">7</td>
<td style="text-align: right;">52</td>
<td style="text-align: right;">0.012</td>
<td style="text-align: right;">0.010</td>
<td style="text-align: right;">0.020</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">BOL</td>
<td style="text-align: left;">Bolivia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">157</td>
<td style="text-align: right;">10</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0.012</td>
<td style="text-align: right;">0.014</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">Lower middle income</td>
<td style="text-align: left;">WB_LMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">COD</td>
<td style="text-align: left;">Congo (Kinshasa)</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">154</td>
<td style="text-align: right;">18</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0.012</td>
<td style="text-align: right;">0.026</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: left;">AFR</td>
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">Low income</td>
<td style="text-align: left;">WB_LI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">FRA</td>
<td style="text-align: left;">France</td>
<td style="text-align: left;">Martinique</td>
<td style="text-align: right;">149</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">50</td>
<td style="text-align: right;">0.012</td>
<td style="text-align: right;">0.006</td>
<td style="text-align: right;">0.019</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">FRA</td>
<td style="text-align: left;">France</td>
<td style="text-align: left;">Mayotte</td>
<td style="text-align: right;">147</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">14</td>
<td style="text-align: right;">0.012</td>
<td style="text-align: right;">0.003</td>
<td style="text-align: right;">0.005</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">KGZ</td>
<td style="text-align: left;">Kyrgyzstan</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">147</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">9</td>
<td style="text-align: right;">0.012</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.004</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">Lower middle income</td>
<td style="text-align: left;">WB_LMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">UNK</td>
<td style="text-align: left;">Kosovo</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">145</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">23</td>
<td style="text-align: right;">0.011</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.009</td>
<td style="text-align: left;">NA</td>
<td style="text-align: left;">NA</td>
<td style="text-align: left;">NA</td>
<td style="text-align: left;">NA</td>
<td style="text-align: left;">NA</td>
<td style="text-align: left;">NA</td>
</tr>
<tr class="even">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">KEN</td>
<td style="text-align: left;">Kenya</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">142</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">0.011</td>
<td style="text-align: right;">0.006</td>
<td style="text-align: right;">0.002</td>
<td style="text-align: left;">AFR</td>
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">Lower middle income</td>
<td style="text-align: left;">WB_LMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">BRN</td>
<td style="text-align: left;">Brunei</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">135</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">73</td>
<td style="text-align: right;">0.011</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.028</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">FRA</td>
<td style="text-align: left;">France</td>
<td style="text-align: left;">Guadeloupe</td>
<td style="text-align: right;">135</td>
<td style="text-align: right;">7</td>
<td style="text-align: right;">31</td>
<td style="text-align: right;">0.011</td>
<td style="text-align: right;">0.010</td>
<td style="text-align: right;">0.012</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">GBR</td>
<td style="text-align: left;">United Kingdom</td>
<td style="text-align: left;">Isle of Man</td>
<td style="text-align: right;">127</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.010</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">GIN</td>
<td style="text-align: left;">Guinea</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">121</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">5</td>
<td style="text-align: right;">0.010</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.002</td>
<td style="text-align: left;">AFR</td>
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">Low income</td>
<td style="text-align: left;">WB_LI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">KHM</td>
<td style="text-align: left;">Cambodia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">114</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">50</td>
<td style="text-align: right;">0.009</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.019</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">Lower middle income</td>
<td style="text-align: left;">WB_LMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">PRY</td>
<td style="text-align: left;">Paraguay</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">104</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">12</td>
<td style="text-align: right;">0.008</td>
<td style="text-align: right;">0.004</td>
<td style="text-align: right;">0.005</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">RWA</td>
<td style="text-align: left;">Rwanda</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">104</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">0.008</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.002</td>
<td style="text-align: left;">AFR</td>
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">Low income</td>
<td style="text-align: left;">WB_LI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">TTO</td>
<td style="text-align: left;">Trinidad and Tobago</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">104</td>
<td style="text-align: right;">7</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.008</td>
<td style="text-align: right;">0.010</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">GBR</td>
<td style="text-align: left;">United Kingdom</td>
<td style="text-align: left;">Gibraltar</td>
<td style="text-align: right;">103</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">52</td>
<td style="text-align: right;">0.008</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.020</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">CAN</td>
<td style="text-align: left;">Canada</td>
<td style="text-align: left;">New Brunswick</td>
<td style="text-align: right;">98</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">NA</td>
<td style="text-align: right;">0.008</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Oceania</td>
<td style="text-align: left;">AUS</td>
<td style="text-align: left;">Australia</td>
<td style="text-align: left;">Australian Capital Territory</td>
<td style="text-align: right;">96</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">28</td>
<td style="text-align: right;">0.008</td>
<td style="text-align: right;">0.003</td>
<td style="text-align: right;">0.011</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">BGD</td>
<td style="text-align: left;">Bangladesh</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">88</td>
<td style="text-align: right;">9</td>
<td style="text-align: right;">33</td>
<td style="text-align: right;">0.007</td>
<td style="text-align: right;">0.013</td>
<td style="text-align: right;">0.013</td>
<td style="text-align: left;">SEAR</td>
<td style="text-align: left;">South-East Asia</td>
<td style="text-align: left;">Lower middle income</td>
<td style="text-align: left;">WB_LMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Oceania</td>
<td style="text-align: left;">AUS</td>
<td style="text-align: left;">Australia</td>
<td style="text-align: left;">Tasmania</td>
<td style="text-align: right;">82</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">5</td>
<td style="text-align: right;">0.006</td>
<td style="text-align: right;">0.003</td>
<td style="text-align: right;">0.002</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">LIE</td>
<td style="text-align: left;">Liechtenstein</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">77</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.006</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">NA</td>
<td style="text-align: left;">NA</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">MCO</td>
<td style="text-align: left;">Monaco</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">73</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0.006</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">MDG</td>
<td style="text-align: left;">Madagascar</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">72</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0.006</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: left;">AFR</td>
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">Low income</td>
<td style="text-align: left;">WB_LI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">NLD</td>
<td style="text-align: left;">Netherlands</td>
<td style="text-align: left;">Aruba</td>
<td style="text-align: right;">64</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.005</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">SLV</td>
<td style="text-align: left;">El Salvador</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">62</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0.005</td>
<td style="text-align: right;">0.004</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">Lower middle income</td>
<td style="text-align: left;">WB_LMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">FRA</td>
<td style="text-align: left;">France</td>
<td style="text-align: left;">French Guiana</td>
<td style="text-align: right;">61</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">22</td>
<td style="text-align: right;">0.005</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.009</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">GTM</td>
<td style="text-align: left;">Guatemala</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">61</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">15</td>
<td style="text-align: right;">0.005</td>
<td style="text-align: right;">0.003</td>
<td style="text-align: right;">0.006</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">DJI</td>
<td style="text-align: left;">Djibouti</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">59</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">9</td>
<td style="text-align: right;">0.005</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.004</td>
<td style="text-align: left;">EMR</td>
<td style="text-align: left;">Eastern Mediterranean</td>
<td style="text-align: left;">Lower middle income</td>
<td style="text-align: left;">WB_LMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">JAM</td>
<td style="text-align: left;">Jamaica</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">58</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">8</td>
<td style="text-align: right;">0.005</td>
<td style="text-align: right;">0.004</td>
<td style="text-align: right;">0.003</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">BRB</td>
<td style="text-align: left;">Barbados</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">56</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">0.004</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.002</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">UGA</td>
<td style="text-align: left;">Uganda</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">52</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.004</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AFR</td>
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">Low income</td>
<td style="text-align: left;">WB_LI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">COG</td>
<td style="text-align: left;">Congo (Brazzaville)</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">45</td>
<td style="text-align: right;">5</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0.004</td>
<td style="text-align: right;">0.007</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: left;">AFR</td>
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">Lower middle income</td>
<td style="text-align: left;">WB_LMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">MLI</td>
<td style="text-align: left;">Mali</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">45</td>
<td style="text-align: right;">5</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.004</td>
<td style="text-align: right;">0.007</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AFR</td>
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">Low income</td>
<td style="text-align: left;">WB_LI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">TGO</td>
<td style="text-align: left;">Togo</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">44</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">20</td>
<td style="text-align: right;">0.003</td>
<td style="text-align: right;">0.004</td>
<td style="text-align: right;">0.008</td>
<td style="text-align: left;">AFR</td>
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">Low income</td>
<td style="text-align: left;">WB_LI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">ETH</td>
<td style="text-align: left;">Ethiopia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">43</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">0.003</td>
<td style="text-align: right;">0.003</td>
<td style="text-align: right;">0.002</td>
<td style="text-align: left;">AFR</td>
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">Low income</td>
<td style="text-align: left;">WB_LI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">FRA</td>
<td style="text-align: left;">France</td>
<td style="text-align: left;">French Polynesia</td>
<td style="text-align: right;">41</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.003</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">ZMB</td>
<td style="text-align: left;">Zambia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">39</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0.003</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: left;">AFR</td>
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">Lower middle income</td>
<td style="text-align: left;">WB_LMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">GBR</td>
<td style="text-align: left;">United Kingdom</td>
<td style="text-align: left;">Bermuda</td>
<td style="text-align: right;">37</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">14</td>
<td style="text-align: right;">0.003</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.005</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">GBR</td>
<td style="text-align: left;">United Kingdom</td>
<td style="text-align: left;">Cayman Islands</td>
<td style="text-align: right;">35</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.003</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">FRA</td>
<td style="text-align: left;">France</td>
<td style="text-align: left;">St Martin</td>
<td style="text-align: right;">32</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">7</td>
<td style="text-align: right;">0.003</td>
<td style="text-align: right;">0.003</td>
<td style="text-align: right;">0.003</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">ERI</td>
<td style="text-align: left;">Eritrea</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">29</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.002</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AFR</td>
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">Low income</td>
<td style="text-align: left;">WB_LI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">BHS</td>
<td style="text-align: left;">Bahamas</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">28</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.002</td>
<td style="text-align: right;">0.006</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Oceania</td>
<td style="text-align: left;">AUS</td>
<td style="text-align: left;">Australia</td>
<td style="text-align: left;">Northern Territory</td>
<td style="text-align: right;">27</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.002</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">NLD</td>
<td style="text-align: left;">Netherlands</td>
<td style="text-align: left;">Sint Maarten</td>
<td style="text-align: right;">25</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.002</td>
<td style="text-align: right;">0.006</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">GUY</td>
<td style="text-align: left;">Guyana</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">24</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.002</td>
<td style="text-align: right;">0.006</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">BEN</td>
<td style="text-align: left;">Benin</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">22</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">5</td>
<td style="text-align: right;">0.002</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.002</td>
<td style="text-align: left;">AFR</td>
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">Low income</td>
<td style="text-align: left;">WB_LI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">CAN</td>
<td style="text-align: left;">Canada</td>
<td style="text-align: left;">Prince Edward Island</td>
<td style="text-align: right;">22</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">NA</td>
<td style="text-align: right;">0.002</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">TZA</td>
<td style="text-align: left;">Tanzania</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">22</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0.002</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: left;">AFR</td>
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">Low income</td>
<td style="text-align: left;">WB_LI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">GAB</td>
<td style="text-align: left;">Gabon</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">21</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.002</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AFR</td>
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">HTI</td>
<td style="text-align: left;">Haiti</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">21</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.002</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">Low income</td>
<td style="text-align: left;">WB_LI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">MMR</td>
<td style="text-align: left;">Burma</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">21</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.002</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">SEAR</td>
<td style="text-align: left;">South-East Asia</td>
<td style="text-align: left;">Lower middle income</td>
<td style="text-align: left;">WB_LMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">MDV</td>
<td style="text-align: left;">Maldives</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">19</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">13</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.005</td>
<td style="text-align: left;">SEAR</td>
<td style="text-align: left;">South-East Asia</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">SYR</td>
<td style="text-align: left;">Syria</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">19</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.003</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: left;">EMR</td>
<td style="text-align: left;">Eastern Mediterranean</td>
<td style="text-align: left;">Low income</td>
<td style="text-align: left;">WB_LI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">FRA</td>
<td style="text-align: left;">France</td>
<td style="text-align: left;">New Caledonia</td>
<td style="text-align: right;">18</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">LBY</td>
<td style="text-align: left;">Libya</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">18</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">EMR</td>
<td style="text-align: left;">Eastern Mediterranean</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">GNB</td>
<td style="text-align: left;">Guinea-Bissau</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">18</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AFR</td>
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">Low income</td>
<td style="text-align: left;">WB_LI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">GNQ</td>
<td style="text-align: left;">Equatorial Guinea</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">16</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AFR</td>
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">NAM</td>
<td style="text-align: left;">Namibia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">16</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: left;">AFR</td>
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">ATG</td>
<td style="text-align: left;">Antigua and Barbuda</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">15</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">AGO</td>
<td style="text-align: left;">Angola</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">14</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.003</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: left;">AFR</td>
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">Lower middle income</td>
<td style="text-align: left;">WB_LMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">MNG</td>
<td style="text-align: left;">Mongolia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">14</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">Lower middle income</td>
<td style="text-align: left;">WB_LMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">LCA</td>
<td style="text-align: left;">Saint Lucia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">14</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">DMA</td>
<td style="text-align: left;">Dominica</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">14</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">CAN</td>
<td style="text-align: left;">Canada</td>
<td style="text-align: left;">Grand Princess</td>
<td style="text-align: right;">13</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">NA</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">LBR</td>
<td style="text-align: left;">Liberia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">13</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.004</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: left;">AFR</td>
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">Low income</td>
<td style="text-align: left;">WB_LI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Oceania</td>
<td style="text-align: left;">FJI</td>
<td style="text-align: left;">Fiji</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">12</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">SDN</td>
<td style="text-align: left;">Sudan</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">12</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.003</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: left;">EMR</td>
<td style="text-align: left;">Eastern Mediterranean</td>
<td style="text-align: left;">Lower middle income</td>
<td style="text-align: left;">WB_LMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">GRD</td>
<td style="text-align: left;">Grenada</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">12</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">DNK</td>
<td style="text-align: left;">Denmark</td>
<td style="text-align: left;">Greenland</td>
<td style="text-align: right;">11</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">NLD</td>
<td style="text-align: left;">Netherlands</td>
<td style="text-align: left;">Curacao</td>
<td style="text-align: right;">11</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">5</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.002</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">LAO</td>
<td style="text-align: left;">Laos</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">11</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">Lower middle income</td>
<td style="text-align: left;">WB_LMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">SYC</td>
<td style="text-align: left;">Seychelles</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">10</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AFR</td>
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">SUR</td>
<td style="text-align: left;">Suriname</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">10</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">MOZ</td>
<td style="text-align: left;">Mozambique</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">10</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AFR</td>
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">Low income</td>
<td style="text-align: left;">WB_LI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">KNA</td>
<td style="text-align: left;">Saint Kitts and Nevis</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">10</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">TCD</td>
<td style="text-align: left;">Chad</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">9</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AFR</td>
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">Low income</td>
<td style="text-align: left;">WB_LI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">SWZ</td>
<td style="text-align: left;">Eswatini</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">9</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AFR</td>
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">Lower middle income</td>
<td style="text-align: left;">WB_LMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">NPL</td>
<td style="text-align: left;">Nepal</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">9</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">SEAR</td>
<td style="text-align: left;">South-East Asia</td>
<td style="text-align: left;">Low income</td>
<td style="text-align: left;">WB_LI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">ZWE</td>
<td style="text-align: left;">Zimbabwe</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">9</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AFR</td>
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">Low income</td>
<td style="text-align: left;">WB_LI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">MS Zaandam</td>
<td style="text-align: left;">MS Zaandam</td>
<td style="text-align: left;">MS Zaandam</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">9</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.003</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">NA</td>
<td style="text-align: left;">NA</td>
<td style="text-align: left;">NA</td>
<td style="text-align: left;">NA</td>
<td style="text-align: left;">NA</td>
<td style="text-align: left;">NA</td>
</tr>
<tr class="even">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">CAF</td>
<td style="text-align: left;">Central African Republic</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">8</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AFR</td>
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">Low income</td>
<td style="text-align: left;">WB_LI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">CPV</td>
<td style="text-align: left;">Cabo Verde</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">7</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AFR</td>
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">Lower middle income</td>
<td style="text-align: left;">WB_LMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">VAT</td>
<td style="text-align: left;">Holy See</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">7</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">NA</td>
<td style="text-align: left;">NA</td>
<td style="text-align: left;">NA</td>
<td style="text-align: left;">NA</td>
<td style="text-align: left;">NA</td>
<td style="text-align: left;">NA</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">VCT</td>
<td style="text-align: left;">Saint Vincent and the Grenadines</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">7</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">SOM</td>
<td style="text-align: left;">Somalia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">7</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">EMR</td>
<td style="text-align: left;">Eastern Mediterranean</td>
<td style="text-align: left;">Low income</td>
<td style="text-align: left;">WB_LI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">CAN</td>
<td style="text-align: left;">Canada</td>
<td style="text-align: left;">Yukon</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">NA</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">FRA</td>
<td style="text-align: left;">France</td>
<td style="text-align: left;">Saint Barthelemy</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">MRT</td>
<td style="text-align: left;">Mauritania</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: left;">AFR</td>
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">Lower middle income</td>
<td style="text-align: left;">WB_LMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">NIC</td>
<td style="text-align: left;">Nicaragua</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">Lower middle income</td>
<td style="text-align: left;">WB_LMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">GBR</td>
<td style="text-align: left;">United Kingdom</td>
<td style="text-align: left;">Montserrat</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">BWA</td>
<td style="text-align: left;">Botswana</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AFR</td>
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">SLE</td>
<td style="text-align: left;">Sierra Leone</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AFR</td>
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">Low income</td>
<td style="text-align: left;">WB_LI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">BTN</td>
<td style="text-align: left;">Bhutan</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">5</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: left;">SEAR</td>
<td style="text-align: left;">South-East Asia</td>
<td style="text-align: left;">Lower middle income</td>
<td style="text-align: left;">WB_LMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">GBR</td>
<td style="text-align: left;">United Kingdom</td>
<td style="text-align: left;">Turks and Caicos Islands</td>
<td style="text-align: right;">5</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">BLZ</td>
<td style="text-align: left;">Belize</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">5</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">Upper middle income</td>
<td style="text-align: left;">WB_UMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">CAN</td>
<td style="text-align: left;">Canada</td>
<td style="text-align: left;">Northwest Territories</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">NA</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">GMB</td>
<td style="text-align: left;">Gambia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: left;">AFR</td>
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">Low income</td>
<td style="text-align: left;">WB_LI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">MWI</td>
<td style="text-align: left;">Malawi</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AFR</td>
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">Low income</td>
<td style="text-align: left;">WB_LI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">ESH</td>
<td style="text-align: left;">Western Sahara</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">NA</td>
<td style="text-align: left;">NA</td>
<td style="text-align: left;">NA</td>
<td style="text-align: left;">NA</td>
<td style="text-align: left;">NA</td>
<td style="text-align: left;">NA</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">GBR</td>
<td style="text-align: left;">United Kingdom</td>
<td style="text-align: left;">Anguilla</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">GBR</td>
<td style="text-align: left;">United Kingdom</td>
<td style="text-align: left;">British Virgin Islands</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">BDI</td>
<td style="text-align: left;">Burundi</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AFR</td>
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">Low income</td>
<td style="text-align: left;">WB_LI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">NLD</td>
<td style="text-align: left;">Netherlands</td>
<td style="text-align: left;">Bonaire, Sint Eustatius and Saba</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">GBR</td>
<td style="text-align: left;">United Kingdom</td>
<td style="text-align: left;">Falkland Islands (Islas Malvinas)</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">FRA</td>
<td style="text-align: left;">France</td>
<td style="text-align: left;">Saint Pierre and Miquelon</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">EUR</td>
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Oceania</td>
<td style="text-align: left;">PNG</td>
<td style="text-align: left;">Papua New Guinea</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">WPR</td>
<td style="text-align: left;">Western Pacific</td>
<td style="text-align: left;">Lower middle income</td>
<td style="text-align: left;">WB_LMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">TLS</td>
<td style="text-align: left;">Timor-Leste</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">SEAR</td>
<td style="text-align: left;">South-East Asia</td>
<td style="text-align: left;">Lower middle income</td>
<td style="text-align: left;">WB_LMI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">SSD</td>
<td style="text-align: left;">South Sudan</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AFR</td>
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">Low income</td>
<td style="text-align: left;">WB_LI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="even">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">CAN</td>
<td style="text-align: left;">Canada</td>
<td style="text-align: left;">Diamond Princess</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">NA</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.001</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">CAN</td>
<td style="text-align: left;">Canada</td>
<td style="text-align: left;">Recovered</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">NA</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: right;">0.000</td>
<td style="text-align: left;">AMR</td>
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">High income</td>
<td style="text-align: left;">WB_HI</td>
<td style="text-align: left;">2017</td>
<td style="text-align: left;">2018</td>
</tr>
</tbody>
</table>

[1] “Tidy Data” H. Wickham,
<a href="https://www.jstatsoft.org/article/view/v059i10" class="uri">https://www.jstatsoft.org/article/view/v059i10</a>
