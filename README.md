R scripts to process/cleanup data from the repo:
<a href="https://github.com/CSSEGISandData/COVID-19" class="uri">https://github.com/CSSEGISandData/COVID-19</a>

*Notes*

-   **2020-02-27**: changed code to reflect changes in source data
    files.

-   **2020-02-14**: the original data source has changed its data
    structure, the timeseries data is empty as of the commit referred
    below.

-   For the cases, I’ve used the filename to to get the timestamp,
    because that is more reliable

-   **Last updated on** 2020-03-04 09:04:52

-   **Data source commit reference**:
    [05e55a9feb57e4af431d50f933c57192c0509a0a](https://api.github.com/repos/CSSEGISandData/COVID-19/git/commits/05e55a9feb57e4af431d50f933c57192c0509a0a)

There are couple of quick tables (with naive rate estimates):

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
<td style="text-align: right;">67217</td>
<td style="text-align: right;">2835</td>
<td style="text-align: right;">36208</td>
<td style="text-align: right;">72.40</td>
<td style="text-align: right;">4.22</td>
<td style="text-align: right;">53.87</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Guangdong</td>
<td style="text-align: right;">1350</td>
<td style="text-align: right;">7</td>
<td style="text-align: right;">1101</td>
<td style="text-align: right;">1.45</td>
<td style="text-align: right;">0.52</td>
<td style="text-align: right;">81.56</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Henan</td>
<td style="text-align: right;">1272</td>
<td style="text-align: right;">22</td>
<td style="text-align: right;">1231</td>
<td style="text-align: right;">1.37</td>
<td style="text-align: right;">1.73</td>
<td style="text-align: right;">96.78</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Zhejiang</td>
<td style="text-align: right;">1213</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">1093</td>
<td style="text-align: right;">1.31</td>
<td style="text-align: right;">0.08</td>
<td style="text-align: right;">90.11</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Hunan</td>
<td style="text-align: right;">1018</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">906</td>
<td style="text-align: right;">1.10</td>
<td style="text-align: right;">0.39</td>
<td style="text-align: right;">89.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Anhui</td>
<td style="text-align: right;">990</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">936</td>
<td style="text-align: right;">1.07</td>
<td style="text-align: right;">0.61</td>
<td style="text-align: right;">94.55</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Jiangxi</td>
<td style="text-align: right;">935</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">870</td>
<td style="text-align: right;">1.01</td>
<td style="text-align: right;">0.11</td>
<td style="text-align: right;">93.05</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Shandong</td>
<td style="text-align: right;">758</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">511</td>
<td style="text-align: right;">0.82</td>
<td style="text-align: right;">0.79</td>
<td style="text-align: right;">67.41</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Jiangsu</td>
<td style="text-align: right;">631</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">562</td>
<td style="text-align: right;">0.68</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">89.06</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Chongqing</td>
<td style="text-align: right;">576</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">490</td>
<td style="text-align: right;">0.62</td>
<td style="text-align: right;">1.04</td>
<td style="text-align: right;">85.07</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Sichuan</td>
<td style="text-align: right;">538</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">394</td>
<td style="text-align: right;">0.58</td>
<td style="text-align: right;">0.56</td>
<td style="text-align: right;">73.23</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Heilongjiang</td>
<td style="text-align: right;">480</td>
<td style="text-align: right;">13</td>
<td style="text-align: right;">366</td>
<td style="text-align: right;">0.52</td>
<td style="text-align: right;">2.71</td>
<td style="text-align: right;">76.25</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Beijing</td>
<td style="text-align: right;">414</td>
<td style="text-align: right;">8</td>
<td style="text-align: right;">288</td>
<td style="text-align: right;">0.45</td>
<td style="text-align: right;">1.93</td>
<td style="text-align: right;">69.57</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Shanghai</td>
<td style="text-align: right;">338</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">294</td>
<td style="text-align: right;">0.36</td>
<td style="text-align: right;">0.89</td>
<td style="text-align: right;">86.98</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Hebei</td>
<td style="text-align: right;">318</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">300</td>
<td style="text-align: right;">0.34</td>
<td style="text-align: right;">1.89</td>
<td style="text-align: right;">94.34</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Fujian</td>
<td style="text-align: right;">296</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">260</td>
<td style="text-align: right;">0.32</td>
<td style="text-align: right;">0.34</td>
<td style="text-align: right;">87.84</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Guangxi</td>
<td style="text-align: right;">252</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">202</td>
<td style="text-align: right;">0.27</td>
<td style="text-align: right;">0.79</td>
<td style="text-align: right;">80.16</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Shaanxi</td>
<td style="text-align: right;">245</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">216</td>
<td style="text-align: right;">0.26</td>
<td style="text-align: right;">0.41</td>
<td style="text-align: right;">88.16</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Yunnan</td>
<td style="text-align: right;">174</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">169</td>
<td style="text-align: right;">0.19</td>
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
<td style="text-align: right;">155</td>
<td style="text-align: right;">0.18</td>
<td style="text-align: right;">2.98</td>
<td style="text-align: right;">92.26</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Guizhou</td>
<td style="text-align: right;">146</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">114</td>
<td style="text-align: right;">0.16</td>
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
<td style="text-align: right;">0.15</td>
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
<td style="text-align: right;">83</td>
<td style="text-align: right;">0.10</td>
<td style="text-align: right;">1.08</td>
<td style="text-align: right;">89.25</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Gansu</td>
<td style="text-align: right;">91</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">86</td>
<td style="text-align: right;">0.10</td>
<td style="text-align: right;">2.20</td>
<td style="text-align: right;">94.51</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Xinjiang</td>
<td style="text-align: right;">76</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">68</td>
<td style="text-align: right;">0.08</td>
<td style="text-align: right;">3.95</td>
<td style="text-align: right;">89.47</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Inner Mongolia</td>
<td style="text-align: right;">75</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">59</td>
<td style="text-align: right;">0.08</td>
<td style="text-align: right;">1.33</td>
<td style="text-align: right;">78.67</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">CHN</td>
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Ningxia</td>
<td style="text-align: right;">74</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">69</td>
<td style="text-align: right;">0.08</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">93.24</td>
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
<td style="text-align: right;">5186</td>
<td style="text-align: right;">28</td>
<td style="text-align: right;">30</td>
<td style="text-align: right;">5.59</td>
<td style="text-align: right;">0.54</td>
<td style="text-align: right;">0.58</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">ITA</td>
<td style="text-align: left;">Italy</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">2502</td>
<td style="text-align: right;">79</td>
<td style="text-align: right;">160</td>
<td style="text-align: right;">2.69</td>
<td style="text-align: right;">3.16</td>
<td style="text-align: right;">6.39</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">IRN</td>
<td style="text-align: left;">Iran</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">2336</td>
<td style="text-align: right;">77</td>
<td style="text-align: right;">291</td>
<td style="text-align: right;">2.52</td>
<td style="text-align: right;">3.30</td>
<td style="text-align: right;">12.46</td>
</tr>
<tr class="even">
<td style="text-align: left;">Others</td>
<td style="text-align: left;">Others</td>
<td style="text-align: left;">Others</td>
<td style="text-align: left;">Diamond Princess cruise ship</td>
<td style="text-align: right;">706</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">10</td>
<td style="text-align: right;">0.76</td>
<td style="text-align: right;">0.85</td>
<td style="text-align: right;">1.42</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">JPN</td>
<td style="text-align: left;">Japan</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">293</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">43</td>
<td style="text-align: right;">0.32</td>
<td style="text-align: right;">2.05</td>
<td style="text-align: right;">14.68</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">FRA</td>
<td style="text-align: left;">France</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">204</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">12</td>
<td style="text-align: right;">0.22</td>
<td style="text-align: right;">1.96</td>
<td style="text-align: right;">5.88</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">DEU</td>
<td style="text-align: left;">Germany</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">196</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">16</td>
<td style="text-align: right;">0.21</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">8.16</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">ESP</td>
<td style="text-align: left;">Spain</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">165</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0.18</td>
<td style="text-align: right;">0.61</td>
<td style="text-align: right;">1.21</td>
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
<td style="text-align: right;">100</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">37</td>
<td style="text-align: right;">0.11</td>
<td style="text-align: right;">2.00</td>
<td style="text-align: right;">37.00</td>
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
<td style="text-align: left;">CHE</td>
<td style="text-align: left;">Switzerland</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">56</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0.06</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">3.57</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">GBR</td>
<td style="text-align: left;">UK</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">51</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">8</td>
<td style="text-align: right;">0.05</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">15.69</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">BHR</td>
<td style="text-align: left;">Bahrain</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">49</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.05</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
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
<td style="text-align: right;">0.05</td>
<td style="text-align: right;">2.38</td>
<td style="text-align: right;">28.57</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">MYS</td>
<td style="text-align: left;">Malaysia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">36</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">22</td>
<td style="text-align: right;">0.04</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">61.11</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">IRQ</td>
<td style="text-align: left;">Iraq</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">32</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.03</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">NOR</td>
<td style="text-align: left;">Norway</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">32</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.03</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
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
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">NLD</td>
<td style="text-align: left;">Netherlands</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">24</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.03</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">AUT</td>
<td style="text-align: left;">Austria</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">21</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.02</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">SWE</td>
<td style="text-align: left;">Sweden</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">21</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.02</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">USA</td>
<td style="text-align: left;">US</td>
<td style="text-align: left;">King County, WA</td>
<td style="text-align: right;">21</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.02</td>
<td style="text-align: right;">28.57</td>
<td style="text-align: right;">4.76</td>
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
<tr class="even">
<td style="text-align: left;">Oceania</td>
<td style="text-align: left;">AUS</td>
<td style="text-align: left;">Australia</td>
<td style="text-align: left;">New South Wales</td>
<td style="text-align: right;">13</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">30.77</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">BEL</td>
<td style="text-align: left;">Belgium</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">13</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">7.69</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">LBN</td>
<td style="text-align: left;">Lebanon</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">13</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">ISR</td>
<td style="text-align: left;">Israel</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">12</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">8.33</td>
</tr>
<tr class="even">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">OMN</td>
<td style="text-align: left;">Oman</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">12</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">16.67</td>
</tr>
<tr class="odd">
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
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">ISL</td>
<td style="text-align: left;">Iceland</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">11</td>
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
<td style="text-align: left;">Santa Clara, CA</td>
<td style="text-align: right;">11</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">9.09</td>
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
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">SMR</td>
<td style="text-align: left;">San Marino</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">10</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">10.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Oceania</td>
<td style="text-align: left;">AUS</td>
<td style="text-align: left;">Australia</td>
<td style="text-align: left;">Victoria</td>
<td style="text-align: right;">9</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">44.44</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">CAN</td>
<td style="text-align: left;">Canada</td>
<td style="text-align: left;">British Columbia</td>
<td style="text-align: right;">9</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">33.33</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">HRV</td>
<td style="text-align: left;">Croatia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">9</td>
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
<td style="text-align: right;">7</td>
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
<td style="text-align: right;">7</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">QAT</td>
<td style="text-align: left;">Qatar</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">7</td>
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
<td style="text-align: right;">6</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
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
<tr class="even">
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">USA</td>
<td style="text-align: left;">US</td>
<td style="text-align: left;">Snohomish County, WA</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">16.67</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">DZA</td>
<td style="text-align: left;">Algeria</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">5</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">CZE</td>
<td style="text-align: left;">Czech Republic</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">5</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Asia</td>
<td style="text-align: left;">IND</td>
<td style="text-align: left;">India</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">5</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">60.00</td>
</tr>
<tr class="even">
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
<tr class="odd">
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
<tr class="even">
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
<tr class="odd">
<td style="text-align: left;">Oceania</td>
<td style="text-align: left;">AUS</td>
<td style="text-align: left;">Australia</td>
<td style="text-align: left;">South Australia</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">66.67</td>
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
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">ROU</td>
<td style="text-align: left;">Romania</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
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
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">BRA</td>
<td style="text-align: left;">Brazil</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
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
<tr class="even">
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
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">IRL</td>
<td style="text-align: left;">Ireland</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">PRT</td>
<td style="text-align: left;">Portugal</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Africa</td>
<td style="text-align: left;">SEN</td>
<td style="text-align: left;">Senegal</td>
<td style="text-align: left;">NA</td>
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
<td style="text-align: left;">Fulton County, GA</td>
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
<td style="text-align: left;">Grafton County, NH</td>
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
<td style="text-align: left;">Hillsborough, FL</td>
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
<td style="text-align: left;">Tasmania</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Europe</td>
<td style="text-align: left;">BLR</td>
<td style="text-align: left;">Belarus</td>
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
<tr class="even">
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
<tr class="odd">
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
<tr class="even">
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
<tr class="odd">
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
<tr class="even">
<td style="text-align: left;">Oceania</td>
<td style="text-align: left;">NZL</td>
<td style="text-align: left;">New Zealand</td>
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
<tr class="even">
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
<td style="text-align: left;">Humboldt County, CA</td>
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
<td style="text-align: left;">Los Angeles, CA</td>
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
<td style="text-align: left;">Orange, CA</td>
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
<td style="text-align: left;">Placer County, CA</td>
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
<td style="text-align: left;">Americas</td>
<td style="text-align: left;">USA</td>
<td style="text-align: left;">US</td>
<td style="text-align: left;">Westchester County, NY</td>
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
<td style="text-align: left;">From Diamond Princess</td>
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
<td style="text-align: left;">Lackland, TX (From Diamond Princess)</td>
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
<td style="text-align: left;">Omaha, NE (From Diamond Princess)</td>
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

Confirmed cases by country (Worldwide):

![COVID-19 Confirmed cases by country
(Worldwide)](covid19-confirmed-cases-by-country.png)

Confirmed cases by country (Africa):

![COVID-19 Confirmed cases by country
(Africa)](africa-covid19-confirmed-cases-by-country.png)

Confirmed cases by country (Americas):

![COVID-19 Confirmed cases by country
(Americas)](europe-covid19-confirmed-cases-by-country.png)

Confirmed cases by country (Asia):

![COVID-19 Confirmed cases by country
(Asia)](asia-covid19-confirmed-cases-by-country.png)

Confirmed cases by country (Europe):

![COVID-19 Confirmed cases by country
(Europe)](europe-covid19-confirmed-cases-by-country.png)

Confirmed cases by country (Oceania):

![COVID-19 Confirmed cases by country
(Oceania)](oceania-covid19-confirmed-cases-by-country.png)

Confirmed cases by country (Others):

![COVID-19 Confirmed cases by country
(Others)](others-covid19-confirmed-cases-by-country.png)
