R scripts to process/cleanup data from the repo: https://github.com/CSSEGISandData/2019-nCoV

Data source commit reference: https://github.com/CSSEGISandData/COVID-19/commit/2eee1d6c25d8b169739f7d89bc0af062585f63aa

- For the cases, I've used the filename to to get the timestamp, because that is more reliable

There are couple of quick tables (with naive rate estimates):

- For cases in China: https://github.com/jmcastagnetto/2019ncov-data-cleanup/blob/master/latest_china_rates.md 
- For cases outside China: https://github.com/jmcastagnetto/2019ncov-data-cleanup/blob/master/latest_not_china_rates.md

An a plot of confirmed cases by country:

![COVID-19 Confirmed cases by country](covid19-confirmed-cases-by-country.png)
