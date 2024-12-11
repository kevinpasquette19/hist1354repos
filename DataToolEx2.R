rm(list = ls())

library(tm)
library(SnowballC)
library(wordcloud)
library(ggplot2)

require(tidyverse)


b <- read.csv("~/Documents/GitHub/hist1354repos/historical_trade_data.csv")

b %>%
  head(3)

# Selecting the rows where exports > 200,000
b %>%
  filter(Exports > 200000)

# Adding a new column of trade balance
b <- b %>%
  mutate(Trade_Balance = Exports - Imports)

# Visualizing a line graph or trade balance over time
b %>%
  ggplot(aes(x = Year, y = Trade_Balance)) +
  geom_line() +
  labs(title = "Trade Balance Over Time", x = "Year", y = "Net Exports (Exports-Imports)")
  ggsave("TradeBalance1.png", width = 8, height = 6)

