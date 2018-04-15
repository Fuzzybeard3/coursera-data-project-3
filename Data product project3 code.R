---
  title: "Cars"
author: "Evan Petricca"
date: "April 15, 2018"
output: ioslides_presentation
---
  
  ```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = FALSE)
```



## Slide with R Output

```{r cars, echo = TRUE}
summary(cars)
```

## Slide with Plot

```{r mtcars}
suppressPackageStartupMessages(library(plotly))
plot_ly(data = mtcars, x = ~wt, y = ~mpg, 
        color = ~as.factor(cyl), size = ~hp,
        text = ~paste("Weight: ", wt, '<br>MPG:', mpg),
        type = "scatter", mode = "markers") %>%
  layout(title = "Car Data")