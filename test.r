library(tidyr)
library(dplyr)
library(ggplot2)
library(ggmap)
library(shiny)
library(tidyquant)
library(caret)
library(data.table)



z <- c()

hello <- data.table(value = c(1,2,3,4,5))

hello %>%
    filter(value > 1) -> bye
    for (i in 1:nrow(bye)){
        z <- append(z, bye$value[i],i)
    }
z



mydf <- data.frame(x = c(1,2,3,4,5), y = c(1,5,7,25,23))

mydf %>%
    filter(y > 5) -> mydf_filter
mydf_filter %>%   
    summarize(mean(y)) -> x

ggplot(mydf_filter, aes(x = x, y = y)) +
    geom_point() +
    geom_path()