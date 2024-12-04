rm(list = ls())
require(tidyverse)
require(haven)

census <- read.csv("~/Downloads/census_data.csv")

view(census)

census %>% 
  count(year)

analyze <- census %>% 
  filter(year >= 1820) %>% 
  filter(year <= 1840) %>% 
  group_by(year) %>% 
  summarize(total_pop = sum(ntotal)) %>% 
  ggplot(aes(x = year,
             y = log(total_pop))) +
  geom_line() +
  labs(title = ,
       x = ,
       y = )
  
analyze



