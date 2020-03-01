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
[255d845e129bf65093c7c21d012e442c9abb4264](https://api.github.com/repos/CSSEGISandData/COVID-19/git/commits/255d845e129bf65093c7c21d012e442c9abb4264)

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
<td style="text-align: right;">66337</td>
<td style="text-align: right;">2727</td>
<td style="text-align: right;">28993</td>
<td style="text-align: right;">77.12</td>
<td style="text-align: right;">4.11</td>
<td style="text-align: right;">43.71</td>
</tr>
<tr class="even">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Guangdong</td>
<td style="text-align: right;">1349</td>
<td style="text-align: right;">7</td>
<td style="text-align: right;">983</td>
<td style="text-align: right;">1.57</td>
<td style="text-align: right;">0.52</td>
<td style="text-align: right;">72.87</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Henan</td>
<td style="text-align: right;">1272</td>
<td style="text-align: right;">21</td>
<td style="text-align: right;">1170</td>
<td style="text-align: right;">1.48</td>
<td style="text-align: right;">1.65</td>
<td style="text-align: right;">91.98</td>
</tr>
<tr class="even">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Zhejiang</td>
<td style="text-align: right;">1205</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">1016</td>
<td style="text-align: right;">1.40</td>
<td style="text-align: right;">0.08</td>
<td style="text-align: right;">84.32</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Hunan</td>
<td style="text-align: right;">1018</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">846</td>
<td style="text-align: right;">1.18</td>
<td style="text-align: right;">0.39</td>
<td style="text-align: right;">83.10</td>
</tr>
<tr class="even">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Anhui</td>
<td style="text-align: right;">990</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">868</td>
<td style="text-align: right;">1.15</td>
<td style="text-align: right;">0.61</td>
<td style="text-align: right;">87.68</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Jiangxi</td>
<td style="text-align: right;">935</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">811</td>
<td style="text-align: right;">1.09</td>
<td style="text-align: right;">0.11</td>
<td style="text-align: right;">86.74</td>
</tr>
<tr class="even">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Shandong</td>
<td style="text-align: right;">756</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">421</td>
<td style="text-align: right;">0.88</td>
<td style="text-align: right;">0.79</td>
<td style="text-align: right;">55.69</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Jiangsu</td>
<td style="text-align: right;">631</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">523</td>
<td style="text-align: right;">0.73</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">82.88</td>
</tr>
<tr class="even">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Chongqing</td>
<td style="text-align: right;">576</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">438</td>
<td style="text-align: right;">0.67</td>
<td style="text-align: right;">1.04</td>
<td style="text-align: right;">76.04</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Sichuan</td>
<td style="text-align: right;">538</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">351</td>
<td style="text-align: right;">0.63</td>
<td style="text-align: right;">0.56</td>
<td style="text-align: right;">65.24</td>
</tr>
<tr class="even">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Heilongjiang</td>
<td style="text-align: right;">480</td>
<td style="text-align: right;">13</td>
<td style="text-align: right;">301</td>
<td style="text-align: right;">0.56</td>
<td style="text-align: right;">2.71</td>
<td style="text-align: right;">62.71</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Beijing</td>
<td style="text-align: right;">411</td>
<td style="text-align: right;">8</td>
<td style="text-align: right;">271</td>
<td style="text-align: right;">0.48</td>
<td style="text-align: right;">1.95</td>
<td style="text-align: right;">65.94</td>
</tr>
<tr class="even">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Shanghai</td>
<td style="text-align: right;">337</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">287</td>
<td style="text-align: right;">0.39</td>
<td style="text-align: right;">0.89</td>
<td style="text-align: right;">85.16</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Hebei</td>
<td style="text-align: right;">318</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">282</td>
<td style="text-align: right;">0.37</td>
<td style="text-align: right;">1.89</td>
<td style="text-align: right;">88.68</td>
</tr>
<tr class="even">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Fujian</td>
<td style="text-align: right;">296</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">243</td>
<td style="text-align: right;">0.34</td>
<td style="text-align: right;">0.34</td>
<td style="text-align: right;">82.09</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Guangxi</td>
<td style="text-align: right;">252</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">176</td>
<td style="text-align: right;">0.29</td>
<td style="text-align: right;">0.79</td>
<td style="text-align: right;">69.84</td>
</tr>
<tr class="even">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Shaanxi</td>
<td style="text-align: right;">245</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">207</td>
<td style="text-align: right;">0.28</td>
<td style="text-align: right;">0.41</td>
<td style="text-align: right;">84.49</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Yunnan</td>
<td style="text-align: right;">174</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">157</td>
<td style="text-align: right;">0.20</td>
<td style="text-align: right;">1.15</td>
<td style="text-align: right;">90.23</td>
</tr>
<tr class="even">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Hainan</td>
<td style="text-align: right;">168</td>
<td style="text-align: right;">5</td>
<td style="text-align: right;">148</td>
<td style="text-align: right;">0.20</td>
<td style="text-align: right;">2.98</td>
<td style="text-align: right;">88.10</td>
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
<td style="text-align: right;">109</td>
<td style="text-align: right;">0.16</td>
<td style="text-align: right;">2.21</td>
<td style="text-align: right;">80.15</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Shanxi</td>
<td style="text-align: right;">133</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">114</td>
<td style="text-align: right;">0.15</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">85.71</td>
</tr>
<tr class="even">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Liaoning</td>
<td style="text-align: right;">121</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">96</td>
<td style="text-align: right;">0.14</td>
<td style="text-align: right;">0.83</td>
<td style="text-align: right;">79.34</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Jilin</td>
<td style="text-align: right;">93</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">75</td>
<td style="text-align: right;">0.11</td>
<td style="text-align: right;">1.08</td>
<td style="text-align: right;">80.65</td>
</tr>
<tr class="even">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Gansu</td>
<td style="text-align: right;">91</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">82</td>
<td style="text-align: right;">0.11</td>
<td style="text-align: right;">2.20</td>
<td style="text-align: right;">90.11</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Xinjiang</td>
<td style="text-align: right;">76</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">62</td>
<td style="text-align: right;">0.09</td>
<td style="text-align: right;">3.95</td>
<td style="text-align: right;">81.58</td>
</tr>
<tr class="even">
<td style="text-align: left;">Mainland China</td>
<td style="text-align: left;">Inner Mongolia</td>
<td style="text-align: right;">75</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">49</td>
<td style="text-align: right;">0.09</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">65.33</td>
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
<td style="text-align: right;">3150</td>
<td style="text-align: right;">16</td>
<td style="text-align: right;">27</td>
<td style="text-align: right;">3.66</td>
<td style="text-align: right;">0.51</td>
<td style="text-align: right;">0.86</td>
</tr>
<tr class="even">
<td style="text-align: left;">Italy</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1128</td>
<td style="text-align: right;">29</td>
<td style="text-align: right;">46</td>
<td style="text-align: right;">1.31</td>
<td style="text-align: right;">2.57</td>
<td style="text-align: right;">4.08</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Others</td>
<td style="text-align: left;">Diamond Princess cruise ship</td>
<td style="text-align: right;">705</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">10</td>
<td style="text-align: right;">0.82</td>
<td style="text-align: right;">0.85</td>
<td style="text-align: right;">1.42</td>
</tr>
<tr class="even">
<td style="text-align: left;">Iran</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">593</td>
<td style="text-align: right;">43</td>
<td style="text-align: right;">123</td>
<td style="text-align: right;">0.69</td>
<td style="text-align: right;">7.25</td>
<td style="text-align: right;">20.74</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Japan</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">241</td>
<td style="text-align: right;">5</td>
<td style="text-align: right;">32</td>
<td style="text-align: right;">0.28</td>
<td style="text-align: right;">2.07</td>
<td style="text-align: right;">13.28</td>
</tr>
<tr class="even">
<td style="text-align: left;">Singapore</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">102</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">72</td>
<td style="text-align: right;">0.12</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">70.59</td>
</tr>
<tr class="odd">
<td style="text-align: left;">France</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">100</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">12</td>
<td style="text-align: right;">0.12</td>
<td style="text-align: right;">2.00</td>
<td style="text-align: right;">12.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Hong Kong</td>
<td style="text-align: left;">Hong Kong</td>
<td style="text-align: right;">95</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">33</td>
<td style="text-align: right;">0.11</td>
<td style="text-align: right;">2.11</td>
<td style="text-align: right;">34.74</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Germany</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">79</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">16</td>
<td style="text-align: right;">0.09</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">20.25</td>
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
<td style="text-align: left;">Spain</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">45</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0.05</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">4.44</td>
</tr>
<tr class="even">
<td style="text-align: left;">US</td>
<td style="text-align: left;">Unassigned Location (From Diamond Princess)</td>
<td style="text-align: right;">44</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.05</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Thailand</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">42</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">28</td>
<td style="text-align: right;">0.05</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">66.67</td>
</tr>
<tr class="even">
<td style="text-align: left;">Bahrain</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">41</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.05</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Taiwan</td>
<td style="text-align: left;">Taiwan</td>
<td style="text-align: right;">39</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">9</td>
<td style="text-align: right;">0.05</td>
<td style="text-align: right;">2.56</td>
<td style="text-align: right;">23.08</td>
</tr>
<tr class="even">
<td style="text-align: left;">Malaysia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">25</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">18</td>
<td style="text-align: right;">0.03</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">72.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">UK</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">23</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">8</td>
<td style="text-align: right;">0.03</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">34.78</td>
</tr>
<tr class="even">
<td style="text-align: left;">United Arab Emirates</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">21</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">5</td>
<td style="text-align: right;">0.02</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">23.81</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Switzerland</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">18</td>
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
<td style="text-align: left;">Norway</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">15</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.02</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Iraq</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">13</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.02</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Sweden</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">12</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Canada</td>
<td style="text-align: left;">Toronto, ON</td>
<td style="text-align: right;">10</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">20.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Macau</td>
<td style="text-align: left;">Macau</td>
<td style="text-align: right;">10</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">8</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">80.00</td>
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
<td style="text-align: left;">Austria</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">9</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
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
<td style="text-align: left;">Israel</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">7</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">14.29</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Croatia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Netherlands</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
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
<td style="text-align: left;">US</td>
<td style="text-align: left;">Seattle, WA</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.01</td>
<td style="text-align: right;">16.67</td>
<td style="text-align: right;">16.67</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Australia</td>
<td style="text-align: left;">New South Wales</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">100.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Greece</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Lebanon</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Mexico</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Pakistan</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Australia</td>
<td style="text-align: left;">South Australia</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">66.67</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Denmark</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Finland</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">33.33</td>
</tr>
<tr class="odd">
<td style="text-align: left;">India</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">100.00</td>
</tr>
<tr class="even">
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
<td style="text-align: left;">Santa Clara, CA</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">33.33</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Australia</td>
<td style="text-align: left;">Western Australia</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
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
<td style="text-align: left;">Russia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">100.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">US</td>
<td style="text-align: left;">Chicago, IL</td>
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
<td style="text-align: left;">Algeria</td>
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
<td style="text-align: left;">Belgium</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">100.00</td>
</tr>
<tr class="even">
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
<td style="text-align: left;">Egypt</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">100.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Estonia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Georgia</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
<td style="text-align: left;">Iceland</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Ireland</td>
<td style="text-align: left;">NA</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="even">
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
<td style="text-align: left;">Qatar</td>
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
<td style="text-align: left;">San Antonio, TX</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
<td style="text-align: right;">0.00</td>
</tr>
<tr class="odd">
<td style="text-align: left;">US</td>
<td style="text-align: left;">Snohomish County, WA</td>
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
