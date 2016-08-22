---
title       : app_IMC firetester850 
subtitle    : DDP project 2016 
author      : 
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
--- # 1 What is the IMC ?
The IMC index (known in french as: Indice de Masse Corporelle) is a measure of body fat based on height and weight that applies to adult men and women.

--- # 2 Why do you need to calculate your IMC ?
IMC indicator allows you evaluate the overall impact of your alimentation on your weight.
It helps you to analyze how balanced your height is with your weight

--- # 3 How is calculated the IMC index ?
index is calculated by dividing the weight in Kilogrammes by the square of the height in  meters as following for a weight of 70kg and a height of 1.78m :

```r
weight=70
height=1.78
IMC_value<-weight/(height^2)
print(IMC_value)
```

```
## [1] 22.09317
```

--- # 4 Why is the IMC_app shiny app useful ?
shiny app IMC_app not only calculated your IMC, it also analyze this result
In our case, IMC_app will tells you wether you have a normal weight or if you are underweight overweight or in the extreme situation of obesity. 
e.g. :

```r
weight=70
height=1.78
IMC_value<-weight/(height^2)
print('your IMC is:')
```

```
## [1] "your IMC is:"
```

```r
print(IMC_value)
```

```
## [1] 22.09317
```

```r
print('That means you have a normal weight')
```

```
## [1] "That means you have a normal weight"
```

--- # 5 where to find IMC_app ?
you can use IMCapp for free on https://spoutnik365.shinyapps.io/app_IMC/ 


---


