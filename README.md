    ## ── Attaching packages ─────────────────────────────────────── tidyverse 1.3.0 ──

    ## ✔ ggplot2 3.3.0.9000     ✔ purrr   0.3.3     
    ## ✔ tibble  2.1.3          ✔ dplyr   0.8.4     
    ## ✔ tidyr   1.0.2          ✔ stringr 1.4.0     
    ## ✔ readr   1.3.1          ✔ forcats 0.5.0

    ## ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
    ## ✖ dplyr::filter() masks stats::filter()
    ## ✖ dplyr::lag()    masks stats::lag()

R scripts to process/cleanup data from the repo:
<a href="https://github.com/CSSEGISandData/COVID-19" class="uri">https://github.com/CSSEGISandData/COVID-19</a>

**Last updated on** 2020-03-05 09:04:25

**Data source commit reference**:
[37fc5916bade4f6ed3a8d325a5a6125932e86c1f](https://api.github.com/repos/CSSEGISandData/COVID-19/git/commits/37fc5916bade4f6ed3a8d325a5a6125932e86c1f)

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
-   **2020-03-05**: latitude and longitude information started appearing
    in cases files in March, used that to add that information the rest
    of the cases.

------------------------------------------------------------------------

### Confirmed cases by country (Worldwide):

![COVID-19 Confirmed cases by country
(Worldwide)](covid19-confirmed-cases-by-country.png)

### Confirmed cases by country in Africa:

![COVID-19 Confirmed cases by country
(Africa)](africa-covid19-confirmed-cases-by-country.png)

### Confirmed cases by country in Americas:

![COVID-19 Confirmed cases by country
(Americas)](americas-covid19-confirmed-cases-by-country.png)

### Confirmed cases by country in Asia:

![COVID-19 Confirmed cases by country
(Asia)](asia-covid19-confirmed-cases-by-country.png)

### Confirmed cases by country in Europe:

![COVID-19 Confirmed cases by country
(Europe)](europe-covid19-confirmed-cases-by-country.png)

### Confirmed cases by country in Oceania:

![COVID-19 Confirmed cases by country
(Oceania)](oceania-covid19-confirmed-cases-by-country.png)

### Confirmed cases (Other locations):

![COVID-19 Confirmed cases by country
(Others)](others-covid19-confirmed-cases-by-country.png)

------------------------------------------------------------------------

Here are couple of quick tables (with naive rate estimates):

[For cases in
China](https://github.com/jmcastagnetto/covid-19-data-cleanup/blob/master/latest_china_rates.md)

<table>
<colgroup>
<col style="width: 8%" />
<col style="width: 5%" />
<col style="width: 13%" />
<col style="width: 13%" />
<col style="width: 8%" />
<col style="width: 6%" />
<col style="width: 8%" />
<col style="width: 12%" />
<col style="width: 9%" />
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
<th style="text-align: right;">confirmed_pct</th>
<th style="text-align: right;">death_rate</th>
<th style="text-align: right;">recovery_rate</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Hubei</td>
<td style="text-align: right;">67332</td>
<td style="text-align: right;">2871</td>
<td style="text-align: right;">38557</td>
<td style="text-align: right;">70.78</td>
<td style="text-align: right;">4.26</td>
<td style="text-align: right;">57.26</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Guangdong</td>
<td style="text-align: right;">1350</td>
<td style="text-align: right;">7</td>
<td style="text-align: right;">1133</td>
<td style="text-align: right;">1.42</td>
<td style="text-align: right;">0.52</td>
<td style="text-align: right;">83.93</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Henan</td>
<td style="text-align: right;">1272</td>
<td style="text-align: right;">22</td>
<td style="text-align: right;">1234</td>
<td style="text-align: right;">1.34</td>
<td style="text-align: right;">1.73</td>
<td style="text-align: right;">97.01</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Zhejiang</td>
<td style="text-align: right;">1213</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">1114</td>
<td style="text-align: right;">1.28</td>
<td style="text-align: right;">0.08</td>
<td style="text-align: right;">91.84</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Hunan</td>
<td style="text-align: right;">1018</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">916</td>
<td style="text-align: right;">1.07</td>
<td style="text-align: right;">0.39</td>
<td style="text-align: right;">89.98</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Anhui</td>
<td style="text-align: right;">990</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">956</td>
<td style="text-align: right;">1.04</td>
<td style="text-align: right;">0.61</td>
<td style="text-align: right;">96.57</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Jiangxi</td>
<td style="text-align: right;">935</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">884</td>
<td style="text-align: right;">0.98</td>
<td style="text-align: right;">0.11</td>
<td style="text-align: right;">94.55</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Shandong</td>
<td style="text-align: right;">758</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">516</td>
<td style="text-align: right;">0.80</td>
<td style="text-align: right;">0.79</td>
<td style="text-align: right;">68.07</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Jiangsu</td>
<td style="text-align: right;">631</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">577</td>
<td style="text-align: right;">0.66</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">91.44</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Chongqing</td>
<td style="text-align: right;">576</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">502</td>
<td style="text-align: right;">0.61</td>
<td style="text-align: right;">1.04</td>
<td style="text-align: right;">87.15</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Sichuan</td>
<td style="text-align: right;">538</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">406</td>
<td style="text-align: right;">0.57</td>
<td style="text-align: right;">0.56</td>
<td style="text-align: right;">75.46</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Heilongjiang</td>
<td style="text-align: right;">480</td>
<td style="text-align: right;">13</td>
<td style="text-align: right;">373</td>
<td style="text-align: right;">0.50</td>
<td style="text-align: right;">2.71</td>
<td style="text-align: right;">77.71</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Beijing</td>
<td style="text-align: right;">418</td>
<td style="text-align: right;">8</td>
<td style="text-align: right;">297</td>
<td style="text-align: right;">0.44</td>
<td style="text-align: right;">1.91</td>
<td style="text-align: right;">71.05</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Shanghai</td>
<td style="text-align: right;">338</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">298</td>
<td style="text-align: right;">0.36</td>
<td style="text-align: right;">0.89</td>
<td style="text-align: right;">88.17</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Hebei</td>
<td style="text-align: right;">318</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">301</td>
<td style="text-align: right;">0.33</td>
<td style="text-align: right;">1.89</td>
<td style="text-align: right;">94.65</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Fujian</td>
<td style="text-align: right;">296</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">270</td>
<td style="text-align: right;">0.31</td>
<td style="text-align: right;">0.34</td>
<td style="text-align: right;">91.22</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Guangxi</td>
<td style="text-align: right;">252</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">210</td>
<td style="text-align: right;">0.26</td>
<td style="text-align: right;">0.79</td>
<td style="text-align: right;">83.33</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Shaanxi</td>
<td style="text-align: right;">245</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">223</td>
<td style="text-align: right;">0.26</td>
<td style="text-align: right;">0.41</td>
<td style="text-align: right;">91.02</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Yunnan</td>
<td style="text-align: right;">174</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">169</td>
<td style="text-align: right;">0.18</td>
<td style="text-align: right;">1.15</td>
<td style="text-align: right;">97.13</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Hainan</td>
<td style="text-align: right;">168</td>
<td style="text-align: right;">5</td>
<td style="text-align: right;">158</td>
<td style="text-align: right;">0.18</td>
<td style="text-align: right;">2.98</td>
<td style="text-align: right;">94.05</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Guizhou</td>
<td style="text-align: right;">146</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">114</td>
<td style="text-align: right;">0.15</td>
<td style="text-align: right;">1.37</td>
<td style="text-align: right;">78.08</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Tianjin</td>
<td style="text-align: right;">136</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">124</td>
<td style="text-align: right;">0.14</td>
<td style="text-align: right;">2.21</td>
<td style="text-align: right;">91.18</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Shanxi</td>
<td style="text-align: right;">133</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">124</td>
<td style="text-align: right;">0.14</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">93.23</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Liaoning</td>
<td style="text-align: right;">125</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">106</td>
<td style="text-align: right;">0.13</td>
<td style="text-align: right;">0.80</td>
<td style="text-align: right;">84.80</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Jilin</td>
<td style="text-align: right;">93</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">86</td>
<td style="text-align: right;">0.10</td>
<td style="text-align: right;">1.08</td>
<td style="text-align: right;">92.47</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Gansu</td>
<td style="text-align: right;">91</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">87</td>
<td style="text-align: right;">0.10</td>
<td style="text-align: right;">2.20</td>
<td style="text-align: right;">95.60</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Xinjiang</td>
<td style="text-align: right;">76</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">69</td>
<td style="text-align: right;">0.08</td>
<td style="text-align: right;">3.95</td>
<td style="text-align: right;">90.79</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Inner Mongolia</td>
<td style="text-align: right;">75</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">63</td>
<td style="text-align: right;">0.08</td>
<td style="text-align: right;">1.33</td>
<td style="text-align: right;">84.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Ningxia</td>
<td style="text-align: right;">75</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">69</td>
<td style="text-align: right;">0.08</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">92.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Qinghai</td>
<td style="text-align: right;">18</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">18</td>
<td style="text-align: right;">0.02</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">100.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Tibet</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">100.00</td>
</tr>
</tbody>
</table>

[For cases outside
China](https://github.com/jmcastagnetto/covid-19-data-cleanup/blob/master/latest_not_china_rates.md)

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 4%" />
<col style="width: 14%" />
<col style="width: 29%" />
<col style="width: 6%" />
<col style="width: 4%" />
<col style="width: 6%" />
<col style="width: 9%" />
<col style="width: 7%" />
<col style="width: 9%" />
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
<th style="text-align: right;">confirmed_pct</th>
<th style="text-align: right;">death_rate</th>
<th style="text-align: right;">recovery_rate</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">KOR</td>
<td style="text-align: left;">South Korea</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">5621</td>
<td style="text-align: right;">35</td>
<td style="text-align: right;">41</td>
<td style="text-align: right;">5.91</td>
<td style="text-align: right;">0.62</td>
<td style="text-align: right;">0.73</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">ITA</td>
<td style="text-align: left;">Italy</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">3089</td>
<td style="text-align: right;">107</td>
<td style="text-align: right;">276</td>
<td style="text-align: right;">3.25</td>
<td style="text-align: right;">3.46</td>
<td style="text-align: right;">8.93</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">IRN</td>
<td style="text-align: left;">Iran</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">2922</td>
<td style="text-align: right;">92</td>
<td style="text-align: right;">552</td>
<td style="text-align: right;">3.07</td>
<td style="text-align: right;">3.15</td>
<td style="text-align: right;">18.89</td>
</tr>
<tr class="even">
<td style="text-align: left;">Others</td>
<td style="text-align: left;">Others</td>
<td style="text-align: left;">Others</td>
<td style="text-align: left;">Diamond Princess cruise ship</td>
<td style="text-align: right;">706</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">10</td>
<td style="text-align: right;">0.74</td>
<td style="text-align: right;">0.85</td>
<td style="text-align: right;">1.42</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">JPN</td>
<td style="text-align: left;">Japan</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">331</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">43</td>
<td style="text-align: right;">0.35</td>
<td style="text-align: right;">1.81</td>
<td style="text-align: right;">12.99</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">FRA</td>
<td style="text-align: left;">France</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">285</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">12</td>
<td style="text-align: right;">0.30</td>
<td style="text-align: right;">1.40</td>
<td style="text-align: right;">4.21</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">DEU</td>
<td style="text-align: left;">Germany</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">262</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">16</td>
<td style="text-align: right;">0.28</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">6.11</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">ESP</td>
<td style="text-align: left;">Spain</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">222</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0.23</td>
<td style="text-align: right;">0.90</td>
<td style="text-align: right;">0.90</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">SGP</td>
<td style="text-align: left;">Singapore</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">110</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">78</td>
<td style="text-align: right;">0.12</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">70.91</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">HKG</td>
<td style="text-align: left;">Hong Kong</td>
<td style="text-align: left;">Hong Kong</td>
<td style="text-align: right;">105</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">37</td>
<td style="text-align: right;">0.11</td>
<td style="text-align: right;">1.90</td>
<td style="text-align: right;">35.24</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">CHE</td>
<td style="text-align: left;">Switzerland</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">90</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0.09</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">3.33</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">GBR</td>
<td style="text-align: left;">UK</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">85</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">8</td>
<td style="text-align: right;">0.09</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">9.41</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">KWT</td>
<td style="text-align: left;">Kuwait</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">56</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.06</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">NOR</td>
<td style="text-align: left;">Norway</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">56</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.06</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">BHR</td>
<td style="text-align: left;">Bahrain</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">52</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.05</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">MYS</td>
<td style="text-align: left;">Malaysia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">50</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">22</td>
<td style="text-align: right;">0.05</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">44.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">USA</td>
<td style="text-align: left;">US</td>
<td style="text-align: left;">Unassigned Location (From Diamond Princess)</td>
<td style="text-align: right;">45</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.05</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">THA</td>
<td style="text-align: left;">Thailand</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">43</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">31</td>
<td style="text-align: right;">0.05</td>
<td style="text-align: right;">2.33</td>
<td style="text-align: right;">72.09</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">TWN</td>
<td style="text-align: left;">Taiwan</td>
<td style="text-align: left;">Taiwan</td>
<td style="text-align: right;">42</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">12</td>
<td style="text-align: right;">0.04</td>
<td style="text-align: right;">2.38</td>
<td style="text-align: right;">28.57</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">NLD</td>
<td style="text-align: left;">Netherlands</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">38</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.04</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">IRQ</td>
<td style="text-align: left;">Iraq</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">35</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.04</td>
<td style="text-align: right;">5.71</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">SWE</td>
<td style="text-align: left;">Sweden</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">35</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.04</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">USA</td>
<td style="text-align: left;">US</td>
<td style="text-align: left;">King County, WA</td>
<td style="text-align: right;">31</td>
<td style="text-align: right;">9</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.03</td>
<td style="text-align: right;">29.03</td>
<td style="text-align: right;">3.23</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">AUT</td>
<td style="text-align: left;">Austria</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">29</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.03</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">IND</td>
<td style="text-align: left;">India</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">28</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0.03</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">10.71</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">ARE</td>
<td style="text-align: left;">United Arab Emirates</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">27</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">5</td>
<td style="text-align: right;">0.03</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">18.52</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">ISL</td>
<td style="text-align: left;">Iceland</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">26</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.03</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">BEL</td>
<td style="text-align: left;">Belgium</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">23</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.02</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">4.35</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Oceania</td>
<td style="text-align: left;">AUS</td>
<td style="text-align: left;">Australia</td>
<td style="text-align: left;">New South Wales</td>
<td style="text-align: right;">22</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">0.02</td>
<td style="text-align: right;">4.55</td>
<td style="text-align: right;">18.18</td>
</tr>
<tr class="even">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">CAN</td>
<td style="text-align: left;">Canada</td>
<td style="text-align: left;">Toronto, ON</td>
<td style="text-align: right;">19</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0.02</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">10.53</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">SMR</td>
<td style="text-align: left;">San Marino</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">16</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.02</td>
<td style="text-align: right;">6.25</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">VNM</td>
<td style="text-align: left;">Vietnam</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">16</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">16</td>
<td style="text-align: right;">0.02</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">100.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">ISR</td>
<td style="text-align: left;">Israel</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">15</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.02</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">6.67</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">OMN</td>
<td style="text-align: left;">Oman</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">15</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0.02</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">13.33</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">LBN</td>
<td style="text-align: left;">Lebanon</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">13</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">7.69</td>
</tr>
<tr class="even">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">DZA</td>
<td style="text-align: left;">Algeria</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">12</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">CAN</td>
<td style="text-align: left;">Canada</td>
<td style="text-align: left;">British Columbia</td>
<td style="text-align: right;">12</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">25.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Oceania</td>
<td style="text-align: left;">AUS</td>
<td style="text-align: left;">Australia</td>
<td style="text-align: left;">Queensland</td>
<td style="text-align: right;">11</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">9.09</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">USA</td>
<td style="text-align: left;">US</td>
<td style="text-align: left;">Santa Clara, CA</td>
<td style="text-align: right;">11</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">9.09</td>
</tr>
<tr class="even">
<td style="text-align: left;">Oceania</td>
<td style="text-align: left;">AUS</td>
<td style="text-align: left;">Australia</td>
<td style="text-align: left;">Victoria</td>
<td style="text-align: right;">10</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">40.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">HRV</td>
<td style="text-align: left;">Croatia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">10</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">DNK</td>
<td style="text-align: left;">Denmark</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">10</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">ECU</td>
<td style="text-align: left;">Ecuador</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">10</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">MAC</td>
<td style="text-align: left;">Macau</td>
<td style="text-align: left;">Macau</td>
<td style="text-align: right;">10</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">9</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">90.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">USA</td>
<td style="text-align: left;">US</td>
<td style="text-align: left;">Westchester County, NY</td>
<td style="text-align: right;">10</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">GRC</td>
<td style="text-align: left;">Greece</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">9</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">CZE</td>
<td style="text-align: left;">Czech Republic</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">8</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">QAT</td>
<td style="text-align: left;">Qatar</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">8</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">USA</td>
<td style="text-align: left;">US</td>
<td style="text-align: left;">Snohomish County, WA</td>
<td style="text-align: right;">8</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">12.50</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">USA</td>
<td style="text-align: left;">US</td>
<td style="text-align: left;">Los Angeles, CA</td>
<td style="text-align: right;">7</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">BLR</td>
<td style="text-align: left;">Belarus</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">FIN</td>
<td style="text-align: left;">Finland</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">16.67</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">IRL</td>
<td style="text-align: left;">Ireland</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Oceania</td>
<td style="text-align: left;">AUS</td>
<td style="text-align: left;">Australia</td>
<td style="text-align: left;">South Australia</td>
<td style="text-align: right;">5</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">40.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">MEX</td>
<td style="text-align: left;">Mexico</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">5</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">20.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">PAK</td>
<td style="text-align: left;">Pakistan</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">5</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">PRT</td>
<td style="text-align: left;">Portugal</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">5</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">BRA</td>
<td style="text-align: left;">Brazil</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">ROU</td>
<td style="text-align: left;">Romania</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">25.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">SEN</td>
<td style="text-align: left;">Senegal</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">USA</td>
<td style="text-align: left;">US</td>
<td style="text-align: left;">Cook County, IL</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">50.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">AZE</td>
<td style="text-align: left;">Azerbaijan</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">GEO</td>
<td style="text-align: left;">Georgia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Oceania</td>
<td style="text-align: left;">NZL</td>
<td style="text-align: left;">New Zealand</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">PHL</td>
<td style="text-align: left;">Philippines</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">33.33</td>
<td style="text-align: right;">33.33</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">RUS</td>
<td style="text-align: left;">Russia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">66.67</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">BLM</td>
<td style="text-align: left;">Saint Barthelemy</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">USA</td>
<td style="text-align: left;">US</td>
<td style="text-align: left;">Orange County, CA</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Oceania</td>
<td style="text-align: left;">AUS</td>
<td style="text-align: left;">Australia</td>
<td style="text-align: left;">Western Australia</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">50.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">EGY</td>
<td style="text-align: left;">Egypt</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">50.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">EST</td>
<td style="text-align: left;">Estonia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">HUN</td>
<td style="text-align: left;">Hungary</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">IDN</td>
<td style="text-align: left;">Indonesia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">USA</td>
<td style="text-align: left;">US</td>
<td style="text-align: left;">Fulton County, GA</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">USA</td>
<td style="text-align: left;">US</td>
<td style="text-align: left;">Grafton County, NH</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">USA</td>
<td style="text-align: left;">US</td>
<td style="text-align: left;">Hillsborough, FL</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">USA</td>
<td style="text-align: left;">US</td>
<td style="text-align: left;">Placer County, CA</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">50.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">USA</td>
<td style="text-align: left;">US</td>
<td style="text-align: left;">Providence, RI</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">USA</td>
<td style="text-align: left;">US</td>
<td style="text-align: left;">Sacramento County, CA</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">USA</td>
<td style="text-align: left;">US</td>
<td style="text-align: left;">San Benito, CA</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">USA</td>
<td style="text-align: left;">US</td>
<td style="text-align: left;">San Diego County, CA</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">50.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">USA</td>
<td style="text-align: left;">US</td>
<td style="text-align: left;">San Mateo, CA</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">USA</td>
<td style="text-align: left;">US</td>
<td style="text-align: left;">Washington County, OR</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">AFG</td>
<td style="text-align: left;">Afghanistan</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">AND</td>
<td style="text-align: left;">Andorra</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">ARG</td>
<td style="text-align: left;">Argentina</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">ARM</td>
<td style="text-align: left;">Armenia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Oceania</td>
<td style="text-align: left;">AUS</td>
<td style="text-align: left;">Australia</td>
<td style="text-align: left;">Northern Territory</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Oceania</td>
<td style="text-align: left;">AUS</td>
<td style="text-align: left;">Australia</td>
<td style="text-align: left;">Tasmania</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">KHM</td>
<td style="text-align: left;">Cambodia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">100.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">CAN</td>
<td style="text-align: left;">Canada</td>
<td style="text-align: left;">London, ON</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">100.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">CAN</td>
<td style="text-align: left;">Canada</td>
<td style="text-align: left;">Montreal, QC</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">CHL</td>
<td style="text-align: left;">Chile</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">DOM</td>
<td style="text-align: left;">Dominican Republic</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">FRO</td>
<td style="text-align: left;">Faroe Islands</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">GIB</td>
<td style="text-align: left;">Gibraltar</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">JOR</td>
<td style="text-align: left;">Jordan</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">LVA</td>
<td style="text-align: left;">Latvia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">LIE</td>
<td style="text-align: left;">Liechtenstein</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">LTU</td>
<td style="text-align: left;">Lithuania</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">LUX</td>
<td style="text-align: left;">Luxembourg</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">MCO</td>
<td style="text-align: left;">Monaco</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">MAR</td>
<td style="text-align: left;">Morocco</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">NPL</td>
<td style="text-align: left;">Nepal</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">100.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">NGA</td>
<td style="text-align: left;">Nigeria</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">MKD</td>
<td style="text-align: left;">North Macedonia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">POL</td>
<td style="text-align: left;">Poland</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">SAU</td>
<td style="text-align: left;">Saudi Arabia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">LKA</td>
<td style="text-align: left;">Sri Lanka</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">100.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">TUN</td>
<td style="text-align: left;">Tunisia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">UKR</td>
<td style="text-align: left;">Ukraine</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">USA</td>
<td style="text-align: left;">US</td>
<td style="text-align: left;">Berkeley, CA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">USA</td>
<td style="text-align: left;">US</td>
<td style="text-align: left;">Boston, MA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">100.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">USA</td>
<td style="text-align: left;">US</td>
<td style="text-align: left;">Contra Costa County, CA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">USA</td>
<td style="text-align: left;">US</td>
<td style="text-align: left;">Humboldt County, CA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">USA</td>
<td style="text-align: left;">US</td>
<td style="text-align: left;">Madison, WI</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">100.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">USA</td>
<td style="text-align: left;">US</td>
<td style="text-align: left;">Maricopa County, AZ</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">USA</td>
<td style="text-align: left;">US</td>
<td style="text-align: left;">New York City, NY</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">USA</td>
<td style="text-align: left;">US</td>
<td style="text-align: left;">Norfolk County, MA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">USA</td>
<td style="text-align: left;">US</td>
<td style="text-align: left;">San Antonio, TX</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">USA</td>
<td style="text-align: left;">US</td>
<td style="text-align: left;">Sarasota, FL</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">USA</td>
<td style="text-align: left;">US</td>
<td style="text-align: left;">Sonoma County, CA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">USA</td>
<td style="text-align: left;">US</td>
<td style="text-align: left;">Tempe, AZ</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">100.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">USA</td>
<td style="text-align: left;">US</td>
<td style="text-align: left;">Umatilla, OR</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">USA</td>
<td style="text-align: left;">US</td>
<td style="text-align: left;">Wake County, NC</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Oceania</td>
<td style="text-align: left;">AUS</td>
<td style="text-align: left;">Australia</td>
<td style="text-align: left;">From Diamond Princess</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">NaN</td>
<td style="text-align: right;">NaN</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">USA</td>
<td style="text-align: left;">US</td>
<td style="text-align: left;">Lackland, TX (From Diamond Princess)</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">NaN</td>
<td style="text-align: right;">NaN</td>
</tr>
<tr class="even">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">USA</td>
<td style="text-align: left;">US</td>
<td style="text-align: left;">Omaha, NE (From Diamond Princess)</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">NaN</td>
<td style="text-align: right;">NaN</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">USA</td>
<td style="text-align: left;">US</td>
<td style="text-align: left;">Travis, CA (From Diamond Princess)</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">NaN</td>
<td style="text-align: right;">NaN</td>
</tr>
</tbody>
</table>
