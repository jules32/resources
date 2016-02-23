## explore babynames dataset 
## A data frame with five variables: year, sex, name,
## n and prop (n divided by total number of applicants in that year).

library(babynames) # devtools::install_github("hadley/babynames")
library(dplyr)
library(ggplot2)
library(readr)

## save for Mathew
write_csv(babynames, 'babynames.txt')

bn = babynames %>%
  filter(year > 1980)




g = ggplot(bn, aes(name, year)) 

g + geom_count()