library(ggplot2)
library(nycflights13)
library(tidyverse)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))
filter(mpg, cyl == 8)
filter(diamonds, carat > 3)
flights
filter(flights, arr_delay > 120)
filter(flights, dest %in% c("IAH", "HOU"))
filter(flights, carrier %in% c("UA", "AA", "DL"))
filter(flights, month %in% c(7,8,9))
filter(flights, arr_delay > 120, dep_delay < 1)
filter(flights, dep_delay >= 60 , (dep_delay - arr_delay) > 30)
filter(flights, between(dep_time, 0, 600))
select(flights, dep_time, dep_delay, arr_time, arr_delay)
select(flights, c(dep_time, dep_delay, arr_time, arr_delay))
select(flights, 4,6,7,9)
select(flights, starts_with("dep_"), starts_with("arr_"))

vars <- c("year", "month", "day", "dep_delay", "arr_delay")
select(flights, vars)

flights %>%
  mutate(cancelled = (is.na(dep_delay) | is.na(arr_delay))) %>%
  group_by(year, month, day) %>%
  filter(year==2013, month == 2, day == 20) %>%
  summarize(num_cancelled = sum(cancelled)) %>%
  summarize(prop_cancelled = mean(cancelled))

file_path <- "C:/Users/pmittal/OneDrive - Franklin Templeton/Data Science/Intro to DS/flights.csv"
file_path2 <- "C:/Users/pmittal/OneDrive - Franklin Templeton/Data Science/Intro to DS/flights2.csv"

x <- read_csv(file = file_path)
write_delim(x, delim = '|', path = file_path2)


?read_csv




