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
      Country Year Gender lex
1 Afghanistan 2012 Female  61
2 Afghanistan 2000 Female  56
3 Afghanistan 1990 Female  50
4     Albania 2012 Female  75
5     Albania 2000 Female  73
```

```
      Country Year Gender lex
1 Afghanistan 2012 Female  17
2 Afghanistan 2000 Female  16
3 Afghanistan 1990 Female  15
4     Albania 2012 Female  20
5     Albania 2000 Female  18
```

---

## Life Expectancy Analysis at Birth
- South Africa (1990-2012)

<iframe srcdoc=' &lt;!doctype HTML&gt;
&lt;meta charset = &#039;utf-8&#039;&gt;
&lt;html&gt;
  &lt;head&gt;
    
    &lt;script src=&#039;//code.jquery.com/jquery-1.9.1.min.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    &lt;script src=&#039;//code.highcharts.com/highcharts.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    &lt;script src=&#039;//code.highcharts.com/highcharts-more.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    &lt;script src=&#039;//code.highcharts.com/modules/exporting.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    
    &lt;style&gt;
    .rChart {
      display: block;
      margin-left: auto; 
      margin-right: auto;
      width: 800px;
      height: 400px;
    }  
    &lt;/style&gt;
    
  &lt;/head&gt;
  &lt;body &gt;
    
    &lt;div id = &#039;chartacca925bf&#039; class = &#039;rChart highcharts&#039;&gt;&lt;/div&gt;    
    &lt;script type=&#039;text/javascript&#039;&gt;
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 &quot;dom&quot;: &quot;chartacca925bf&quot;,
&quot;width&quot;:            800,
&quot;height&quot;:            400,
&quot;credits&quot;: {
 &quot;href&quot;: null,
&quot;text&quot;: null 
},
&quot;exporting&quot;: {
 &quot;enabled&quot;: false 
},
&quot;title&quot;: {
 &quot;text&quot;: null 
},
&quot;yAxis&quot;: [
 {
 &quot;title&quot;: {
 &quot;enabled&quot;: true,
&quot;text&quot;: &quot;Life Expectancy at Birth&quot; 
} 
} 
],
&quot;series&quot;: [
 {
 &quot;data&quot;: [
 [
 1990,
66 
],
[
 2000,
62 
],
[
 2012,
62 
] 
],
&quot;name&quot;: &quot;Female&quot;,
&quot;type&quot;: &quot;line&quot;,
&quot;marker&quot;: {
 &quot;radius&quot;:              3 
} 
},
{
 &quot;data&quot;: [
 [
 1990,
59 
],
[
 2000,
55 
],
[
 2012,
56 
] 
],
&quot;name&quot;: &quot;Male&quot;,
&quot;type&quot;: &quot;line&quot;,
&quot;marker&quot;: {
 &quot;radius&quot;:              3 
} 
} 
],
&quot;xAxis&quot;: [
 {
 &quot;title&quot;: {
 &quot;text&quot;: &quot;Year&quot; 
} 
} 
],
&quot;subtitle&quot;: {
 &quot;text&quot;: null 
},
&quot;colors&quot;: [ &quot;red&quot;, &quot;blue&quot; ],
&quot;id&quot;: &quot;chartacca925bf&quot;,
&quot;chart&quot;: {
 &quot;renderTo&quot;: &quot;chartacca925bf&quot; 
} 
});
        });
    })(jQuery);
&lt;/script&gt;
    
    &lt;script&gt;&lt;/script&gt;    
  &lt;/body&gt;
&lt;/html&gt; ' scrolling='no' frameBorder='0' seamless class='rChart  highcharts  ' id='iframe-chartacca925bf'> </iframe>
 <style>iframe.rChart{ width: 100%; height: 400px;}</style>

---

## Life Expectancy Analysis at Age 60
- South Africa (1990-2012)

<iframe srcdoc=' &lt;!doctype HTML&gt;
&lt;meta charset = &#039;utf-8&#039;&gt;
&lt;html&gt;
  &lt;head&gt;
    
    &lt;script src=&#039;//code.jquery.com/jquery-1.9.1.min.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    &lt;script src=&#039;//code.highcharts.com/highcharts.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    &lt;script src=&#039;//code.highcharts.com/highcharts-more.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    &lt;script src=&#039;//code.highcharts.com/modules/exporting.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    
    &lt;style&gt;
    .rChart {
      display: block;
      margin-left: auto; 
      margin-right: auto;
      width: 800px;
      height: 400px;
    }  
    &lt;/style&gt;
    
  &lt;/head&gt;
  &lt;body &gt;
    
    &lt;div id = &#039;chartacc5952260b&#039; class = &#039;rChart highcharts&#039;&gt;&lt;/div&gt;    
    &lt;script type=&#039;text/javascript&#039;&gt;
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 &quot;dom&quot;: &quot;chartacc5952260b&quot;,
&quot;width&quot;:            800,
&quot;height&quot;:            400,
&quot;credits&quot;: {
 &quot;href&quot;: null,
&quot;text&quot;: null 
},
&quot;exporting&quot;: {
 &quot;enabled&quot;: false 
},
&quot;title&quot;: {
 &quot;text&quot;: null 
},
&quot;yAxis&quot;: [
 {
 &quot;title&quot;: {
 &quot;enabled&quot;: true,
&quot;text&quot;: &quot;Life Expectancy at 60&quot; 
} 
} 
],
&quot;series&quot;: [
 {
 &quot;data&quot;: [
 [
 1990,
17 
],
[
 2000,
18 
],
[
 2012,
18 
] 
],
&quot;name&quot;: &quot;Female&quot;,
&quot;type&quot;: &quot;line&quot;,
&quot;marker&quot;: {
 &quot;radius&quot;:              3 
} 
},
{
 &quot;data&quot;: [
 [
 1990,
13 
],
[
 2000,
13 
],
[
 2012,
14 
] 
],
&quot;name&quot;: &quot;Male&quot;,
&quot;type&quot;: &quot;line&quot;,
&quot;marker&quot;: {
 &quot;radius&quot;:              3 
} 
} 
],
&quot;xAxis&quot;: [
 {
 &quot;title&quot;: {
 &quot;text&quot;: &quot;Year&quot; 
} 
} 
],
&quot;subtitle&quot;: {
 &quot;text&quot;: null 
},
&quot;colors&quot;: [ &quot;orange&quot;, &quot;green&quot; ],
&quot;id&quot;: &quot;chartacc5952260b&quot;,
&quot;chart&quot;: {
 &quot;renderTo&quot;: &quot;chartacc5952260b&quot; 
} 
});
        });
    })(jQuery);
&lt;/script&gt;
    
    &lt;script&gt;&lt;/script&gt;    
  &lt;/body&gt;
&lt;/html&gt; ' scrolling='no' frameBorder='0' seamless class='rChart  highcharts  ' id='iframe-chartacc5952260b'> </iframe>
 <style>iframe.rChart{ width: 100%; height: 400px;}</style>
