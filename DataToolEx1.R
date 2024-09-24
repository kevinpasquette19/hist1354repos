rm(list = ls())

library(tm)
library(SnowballC)
library(wordcloud)
library(ggplot2)

require(tidyverse)


a <- read.csv("historical_trade_data.csv")

