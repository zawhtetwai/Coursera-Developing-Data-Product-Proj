---
title       : Life Expectancy Analysis
subtitle    : 
author      : ZAW HTET WAI
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, shiny, interactive, bootstrap}
ext_widgets : {rCharts: ["libraries/nvd3"]}
mode        : selfcontained # {standalone, draft}
---




## Background

 - To give insight on life expectancy of all countries over the world from year 1990 to 2012.
 - Data are obtained from from the <b>Global Health Observatory (GHO)</b>.
 - Source: http://apps.who.int/gho/data/node.main.3?lang=en
 - For Self-Service App: https://zawhtet.shinyapps.io/LifeExp

---

## Preparation
- Data are cleansed and formatted as 2 sets.
- One for at birth and another for at age 60.


```
##       Country Year Gender lex
## 1 Afghanistan 2012 Female  61
## 2 Afghanistan 2000 Female  56
## 3 Afghanistan 1990 Female  50
## 4     Albania 2012 Female  75
## 5     Albania 2000 Female  73
```

```
##       Country Year Gender lex
## 1 Afghanistan 2012 Female  17
## 2 Afghanistan 2000 Female  16
## 3 Afghanistan 1990 Female  15
## 4     Albania 2012 Female  20
## 5     Albania 2000 Female  18
```

---

## Life Expectancy Analysis at Birth
- South Africa (1990-2012)

<iframe src=' assets/fig/unnamed-chunk-2-1.html ' scrolling='no' frameBorder='0' seamless class='rChart highcharts ' id=iframe- chartbec39652043 ></iframe> <style>iframe.rChart{ width: 100%; height: 400px;}</style>

---

## Life Expectancy Analysis at Age 60
- South Africa (1990-2012)

<iframe src=' assets/fig/unnamed-chunk-3-1.html ' scrolling='no' frameBorder='0' seamless class='rChart highcharts ' id=iframe- chartbec56952a0a ></iframe> <style>iframe.rChart{ width: 100%; height: 400px;}</style>
