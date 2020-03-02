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

Data source commit reference:
[e8bf3663264fade63738ab6590dec32dd8538415](https://api.github.com/repos/CSSEGISandData/COVID-19/git/commits/e8bf3663264fade63738ab6590dec32dd8538415)

There are couple of quick tables (with naive rate estimates):

[For cases in
China](https://github.com/jmcastagnetto/covid-19-data-cleanup/blob/master/latest_china_rates.md)

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 15%" />
<col style="width: 10%" />
<col style="width: 7%" />
<col style="width: 10%" />
<col style="width: 14%" />
<col style="width: 11%" />
<col style="width: 14%" />
</colgroup>
<thead>
<tr class="header">
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
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Hubei</td>
<td style="text-align: right;">66907</td>
<td style="text-align: right;">2761</td>
<td style="text-align: right;">31536</td>
<td style="text-align: right;">75.71</td>
<td style="text-align: right;">4.13</td>
<td style="text-align: right;">47.13</td>
</tr>
<tr class="even">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Guangdong</td>
<td style="text-align: right;">1349</td>
<td style="text-align: right;">7</td>
<td style="text-align: right;">1016</td>
<td style="text-align: right;">1.53</td>
<td style="text-align: right;">0.52</td>
<td style="text-align: right;">75.32</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Henan</td>
<td style="text-align: right;">1272</td>
<td style="text-align: right;">22</td>
<td style="text-align: right;">1198</td>
<td style="text-align: right;">1.44</td>
<td style="text-align: right;">1.73</td>
<td style="text-align: right;">94.18</td>
</tr>
<tr class="even">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Zhejiang</td>
<td style="text-align: right;">1205</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">1046</td>
<td style="text-align: right;">1.36</td>
<td style="text-align: right;">0.08</td>
<td style="text-align: right;">86.80</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Hunan</td>
<td style="text-align: right;">1018</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">866</td>
<td style="text-align: right;">1.15</td>
<td style="text-align: right;">0.39</td>
<td style="text-align: right;">85.07</td>
</tr>
<tr class="even">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Anhui</td>
<td style="text-align: right;">990</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">873</td>
<td style="text-align: right;">1.12</td>
<td style="text-align: right;">0.61</td>
<td style="text-align: right;">88.18</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Jiangxi</td>
<td style="text-align: right;">935</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">831</td>
<td style="text-align: right;">1.06</td>
<td style="text-align: right;">0.11</td>
<td style="text-align: right;">88.88</td>
</tr>
<tr class="even">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Shandong</td>
<td style="text-align: right;">758</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">443</td>
<td style="text-align: right;">0.86</td>
<td style="text-align: right;">0.79</td>
<td style="text-align: right;">58.44</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Jiangsu</td>
<td style="text-align: right;">631</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">536</td>
<td style="text-align: right;">0.71</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">84.94</td>
</tr>
<tr class="even">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Chongqing</td>
<td style="text-align: right;">576</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">450</td>
<td style="text-align: right;">0.65</td>
<td style="text-align: right;">1.04</td>
<td style="text-align: right;">78.12</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Sichuan</td>
<td style="text-align: right;">538</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">365</td>
<td style="text-align: right;">0.61</td>
<td style="text-align: right;">0.56</td>
<td style="text-align: right;">67.84</td>
</tr>
<tr class="even">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Heilongjiang</td>
<td style="text-align: right;">480</td>
<td style="text-align: right;">13</td>
<td style="text-align: right;">342</td>
<td style="text-align: right;">0.54</td>
<td style="text-align: right;">2.71</td>
<td style="text-align: right;">71.25</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Beijing</td>
<td style="text-align: right;">413</td>
<td style="text-align: right;">8</td>
<td style="text-align: right;">276</td>
<td style="text-align: right;">0.47</td>
<td style="text-align: right;">1.94</td>
<td style="text-align: right;">66.83</td>
</tr>
<tr class="even">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Shanghai</td>
<td style="text-align: right;">337</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">290</td>
<td style="text-align: right;">0.38</td>
<td style="text-align: right;">0.89</td>
<td style="text-align: right;">86.05</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Hebei</td>
<td style="text-align: right;">318</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">294</td>
<td style="text-align: right;">0.36</td>
<td style="text-align: right;">1.89</td>
<td style="text-align: right;">92.45</td>
</tr>
<tr class="even">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Fujian</td>
<td style="text-align: right;">296</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">247</td>
<td style="text-align: right;">0.33</td>
<td style="text-align: right;">0.34</td>
<td style="text-align: right;">83.45</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Guangxi</td>
<td style="text-align: right;">252</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">181</td>
<td style="text-align: right;">0.29</td>
<td style="text-align: right;">0.79</td>
<td style="text-align: right;">71.83</td>
</tr>
<tr class="even">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Shaanxi</td>
<td style="text-align: right;">245</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">208</td>
<td style="text-align: right;">0.28</td>
<td style="text-align: right;">0.41</td>
<td style="text-align: right;">84.90</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Yunnan</td>
<td style="text-align: right;">174</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">163</td>
<td style="text-align: right;">0.20</td>
<td style="text-align: right;">1.15</td>
<td style="text-align: right;">93.68</td>
</tr>
<tr class="even">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Hainan</td>
<td style="text-align: right;">168</td>
<td style="text-align: right;">5</td>
<td style="text-align: right;">149</td>
<td style="text-align: right;">0.19</td>
<td style="text-align: right;">2.98</td>
<td style="text-align: right;">88.69</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Guizhou</td>
<td style="text-align: right;">146</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">112</td>
<td style="text-align: right;">0.17</td>
<td style="text-align: right;">1.37</td>
<td style="text-align: right;">76.71</td>
</tr>
<tr class="even">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Tianjin</td>
<td style="text-align: right;">136</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">111</td>
<td style="text-align: right;">0.15</td>
<td style="text-align: right;">2.21</td>
<td style="text-align: right;">81.62</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Shanxi</td>
<td style="text-align: right;">133</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">116</td>
<td style="text-align: right;">0.15</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">87.22</td>
</tr>
<tr class="even">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Liaoning</td>
<td style="text-align: right;">122</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">103</td>
<td style="text-align: right;">0.14</td>
<td style="text-align: right;">0.82</td>
<td style="text-align: right;">84.43</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Jilin</td>
<td style="text-align: right;">93</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">78</td>
<td style="text-align: right;">0.11</td>
<td style="text-align: right;">1.08</td>
<td style="text-align: right;">83.87</td>
</tr>
<tr class="even">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Gansu</td>
<td style="text-align: right;">91</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">84</td>
<td style="text-align: right;">0.10</td>
<td style="text-align: right;">2.20</td>
<td style="text-align: right;">92.31</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Xinjiang</td>
<td style="text-align: right;">76</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">64</td>
<td style="text-align: right;">0.09</td>
<td style="text-align: right;">3.95</td>
<td style="text-align: right;">84.21</td>
</tr>
<tr class="even">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Inner Mongolia</td>
<td style="text-align: right;">75</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">52</td>
<td style="text-align: right;">0.08</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">69.33</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Ningxia</td>
<td style="text-align: right;">73</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">69</td>
<td style="text-align: right;">0.08</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">94.52</td>
</tr>
<tr class="even">
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

<table style="width:100%;">
<colgroup>
<col style="width: 16%" />
<col style="width: 33%" />
<col style="width: 7%" />
<col style="width: 5%" />
<col style="width: 7%" />
<col style="width: 10%" />
<col style="width: 8%" />
<col style="width: 10%" />
</colgroup>
<thead>
<tr class="header">
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
<td style="text-align: left;">South Korea</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">3736</td>
<td style="text-align: right;">17</td>
<td style="text-align: right;">30</td>
<td style="text-align: right;">4.23</td>
<td style="text-align: right;">0.46</td>
<td style="text-align: right;">0.80</td>
</tr>
<tr class="even">
<td style="text-align: left;">Italy</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1694</td>
<td style="text-align: right;">34</td>
<td style="text-align: right;">83</td>
<td style="text-align: right;">1.92</td>
<td style="text-align: right;">2.01</td>
<td style="text-align: right;">4.90</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Iran</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">978</td>
<td style="text-align: right;">54</td>
<td style="text-align: right;">175</td>
<td style="text-align: right;">1.11</td>
<td style="text-align: right;">5.52</td>
<td style="text-align: right;">17.89</td>
</tr>
<tr class="even">
<td style="text-align: left;">Others</td>
<td style="text-align: left;">Diamond Princess cruise ship</td>
<td style="text-align: right;">705</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">10</td>
<td style="text-align: right;">0.80</td>
<td style="text-align: right;">0.85</td>
<td style="text-align: right;">1.42</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Japan</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">256</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">32</td>
<td style="text-align: right;">0.29</td>
<td style="text-align: right;">2.34</td>
<td style="text-align: right;">12.50</td>
</tr>
<tr class="even">
<td style="text-align: left;">France</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">130</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">12</td>
<td style="text-align: right;">0.15</td>
<td style="text-align: right;">1.54</td>
<td style="text-align: right;">9.23</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Germany</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">130</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">16</td>
<td style="text-align: right;">0.15</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">12.31</td>
</tr>
<tr class="even">
<td style="text-align: left;">Singapore</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">106</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">72</td>
<td style="text-align: right;">0.12</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">67.92</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Hong Kong</td>
<td style="text-align: left;">Hong Kong</td>
<td style="text-align: right;">96</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">36</td>
<td style="text-align: right;">0.11</td>
<td style="text-align: right;">2.08</td>
<td style="text-align: right;">37.50</td>
</tr>
<tr class="even">
<td style="text-align: left;">Spain</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">84</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0.10</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">2.38</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Bahrain</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">47</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.05</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Kuwait</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">45</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.05</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">US</td>
<td style="text-align: left;">Unassigned Location (From Diamond Princess)</td>
<td style="text-align: right;">44</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.05</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Thailand</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">42</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">28</td>
<td style="text-align: right;">0.05</td>
<td style="text-align: right;">2.38</td>
<td style="text-align: right;">66.67</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Taiwan</td>
<td style="text-align: left;">Taiwan</td>
<td style="text-align: right;">40</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">9</td>
<td style="text-align: right;">0.05</td>
<td style="text-align: right;">2.50</td>
<td style="text-align: right;">22.50</td>
</tr>
<tr class="even">
<td style="text-align: left;">UK</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">36</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">8</td>
<td style="text-align: right;">0.04</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">22.22</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Malaysia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">29</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">18</td>
<td style="text-align: right;">0.03</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">62.07</td>
</tr>
<tr class="even">
<td style="text-align: left;">Switzerland</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">27</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.03</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">United Arab Emirates</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">21</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">5</td>
<td style="text-align: right;">0.02</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">23.81</td>
</tr>
<tr class="even">
<td style="text-align: left;">Iraq</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">19</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.02</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Norway</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">19</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.02</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
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
<td style="text-align: left;">Austria</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">14</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.02</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Canada</td>
<td style="text-align: left;">Toronto, ON</td>
<td style="text-align: right;">14</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0.02</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">14.29</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Sweden</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">14</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.02</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Israel</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">10</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">10.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Lebanon</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">10</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Macau</td>
<td style="text-align: left;">Macau</td>
<td style="text-align: right;">10</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">8</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">80.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Netherlands</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">10</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Australia</td>
<td style="text-align: left;">Queensland</td>
<td style="text-align: right;">9</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">11.11</td>
</tr>
<tr class="odd">
<td style="text-align: left;">US</td>
<td style="text-align: left;">King County, WA</td>
<td style="text-align: right;">9</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">11.11</td>
<td style="text-align: right;">11.11</td>
</tr>
<tr class="even">
<td style="text-align: left;">Canada</td>
<td style="text-align: left;">British Columbia</td>
<td style="text-align: right;">8</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">37.50</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Australia</td>
<td style="text-align: left;">Victoria</td>
<td style="text-align: right;">7</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">57.14</td>
</tr>
<tr class="even">
<td style="text-align: left;">Croatia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">7</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Greece</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">7</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Australia</td>
<td style="text-align: left;">New South Wales</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">66.67</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Ecuador</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
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
<td style="text-align: left;">Oman</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">16.67</td>
</tr>
<tr class="even">
<td style="text-align: left;">Mexico</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">5</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Denmark</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Pakistan</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
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
<td style="text-align: left;">Czech Republic</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Georgia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Iceland</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">India</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">100.00</td>
</tr>
<tr class="odd">
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
<td style="text-align: left;">Qatar</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
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
<td style="text-align: left;">US</td>
<td style="text-align: left;">Chicago, IL</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">66.67</td>
</tr>
<tr class="odd">
<td style="text-align: left;">US</td>
<td style="text-align: left;">Santa Clara, CA</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">33.33</td>
</tr>
<tr class="even">
<td style="text-align: left;">Australia</td>
<td style="text-align: left;">Western Australia</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">50.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Belgium</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">50.00</td>
</tr>
<tr class="even">
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
<td style="text-align: left;">Russia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">100.00</td>
</tr>
<tr class="odd">
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
<td style="text-align: left;">US</td>
<td style="text-align: left;">Snohomish County, WA</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Afghanistan</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Algeria</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
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
<td style="text-align: left;">Belarus</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Cambodia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">100.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Canada</td>
<td style="text-align: left;">London, ON</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">100.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Canada</td>
<td style="text-align: left;">Montreal, QC</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
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
<td style="text-align: left;">Estonia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Ireland</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
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
<td style="text-align: left;">New Zealand</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Nigeria</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">North Macedonia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">San Marino</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
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
<td style="text-align: left;">US</td>
<td style="text-align: left;">Boston, MA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">100.00</td>
</tr>
<tr class="odd">
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
<td style="text-align: left;">US</td>
<td style="text-align: left;">Los Angeles, CA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">US</td>
<td style="text-align: left;">Madison, WI</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
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
<td style="text-align: left;">US</td>
<td style="text-align: left;">Portland, OR</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">US</td>
<td style="text-align: left;">Providence, RI</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">US</td>
<td style="text-align: left;">San Antonio, TX</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">US</td>
<td style="text-align: left;">Tempe, AZ</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">100.00</td>
</tr>
<tr class="odd">
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

An a plot of confirmed cases by country:

![COVID-19 Confirmed cases by
country](covid19-confirmed-cases-by-country.png)
