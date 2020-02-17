R scripts to process/cleanup data from the repo: https://github.com/CSSEGISandData/COVID-19

*Note of 2020-02-14*: the original data source has changed its data structure, the timeseries data is empty as of the commit referred below.

Data source commit reference: https://github.com/CSSEGISandData/COVID-19/commit/ec22a9197125f68961dae5907f8badc1d95ee621 

- For the cases, I've used the filename to to get the timestamp, because that is more reliable

There are couple of quick tables (with naive rate estimates):

- For cases in China: https://github.com/jmcastagnetto/covid-19-data-cleanup/blob/master/latest_china_rates.md 
- For cases outside China: https://github.com/jmcastagnetto/covid-19-data-cleanup/blob/master/latest_not_china_rates.md

An a plot of confirmed cases by country:

![COVID-19 Confirmed cases by country](covid19-confirmed-cases-by-country.png)
