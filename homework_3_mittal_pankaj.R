library(ggplot2)
library(nycflights13)

Section 3.8.1

Q1) Problem with the plot - Some overlapping data has been hidden. 
This can be improved by adding position = "jitter"
  
ggplot(data = mpg, mapping = aes(x = cty, y = hwy)) + 
  geom_point(position = "jitter")

Q2) width and height

ggplot(data = mpg, mapping = aes(x = cty, y = hwy)) + 
  geom_jitter(width = 1)

ggplot(data = mpg, mapping = aes(x = cty, y = hwy)) + 
  geom_count()

Q3) jitter adds small amount of random noise to show overlapping data. 
Count uses the size of the bubble to show hidden data. I liked the way count is 
showing the data and found it more useful

q4) default is "dodge"

base <- ggplot(data = mpg, mapping = aes(x=drv, y=hwy, colour=class)) 
base + geom_boxplot()
base + geom_boxplot(position='dodge')
base + geom_boxplot(position='identity')
base + geom_boxplot(position='jitter')


Section 3.9.1

Q2)Labs is used to modify axis, legend and labels

ggplot(data = mpg, mapping = aes(x = class, y = hwy)) +
  geom_boxplot() +
  coord_flip() +
  labs(y = "Highway MPG", x = "", title = "Highway MPG by car class")

q4) cty and hwy are related directly propsotional.
coord_fixed is important to ensure that x and y axix are using the same units for proper comparison
geom_abline adds the reference line to give visual representation of trends in data

ggplot(data = mpg, mapping = aes(x = cty, y = hwy)) +
  geom_point() + 
  geom_abline(intercept = 0) +
  coord_fixed()

Section 4.4
Q1) variable name (my_var1able) has been misspelled

my_variable <- 10
my_var1able

Q2) Fixed code
library(tidyverse)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))
filter(mpg, cyl == 8)
filter(diamonds, carat > 3)

Section 5.2.4
Q1)
flights
filter(flights, arr_delay > 120)
filter(flights, dest %in% c("IAH", "HOU"))
filter(flights, carrier %in% c("UA", "AA", "DL"))
filter(flights, month %in% c(7,8,9))
filter(flights, arr_delay > 120, dep_delay < 1)
filter(flights, dep_delay >= 60 , (dep_delay - arr_delay) > 30)
filter(flights, between(dep_time, 0, 600))

Q3) 8255 flights
filter(flights, is.na(dep_time))
Other missing variables are related to actual departure and arrival. 
This data may be related to future travel dates

Q4) Anything with zero exponent is always 1 (irrespective of base)
NA ^ 0

Anything when OR with TRUE will always be TRUE (irrespectine of other variable)
NA | TRUE

Anything when AND with FALSE will always be FALSE (irrespectine of other variable)
FALSE & NA

Section 5.4.1
Q1)
select(flights, dep_time, dep_delay, arr_time, arr_delay)
select(flights, c(dep_time, dep_delay, arr_time, arr_delay))
select(flights, 4,6,7,9)
select(flights, starts_with("dep_"), starts_with("arr_"))

q3)
one_of() is used to list all the needed variables in character vector.

vars <- c("year", "month", "day", "dep_delay", "arr_delay")
select(flights, vars)

This will be useful to select various columns from the dataset





       




Q3)



