library(tidyverse)

# A dataset that records the weight of chicken under different diets
ChickWeight

# Create a function to rank the weight of chicken for all dates
rank_chicken_by_date <- function(data) {
  ranked_chickenweight <- data |> 
    arrange(Time, desc(weight)) # rearrange the rows by time and weight in descending order
}

chick_weight <- rank_chicken_by_date(ChickWeight)
chick_weight
