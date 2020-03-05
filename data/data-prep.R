library(tidyverse)

run <- read_csv("~/Downloads/Activities (6).csv")
run %>% 
  filter(
    Date < as.Date("2020-03-01") & 
      Date > as.Date("2019-08-31")
  ) %>% 
  write_csv("data/run.csv")
