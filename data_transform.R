library(tidyverse)

# A dataset that records the weight of chicken under different diets
ChickWeight

# Create a function to rank the n heaviest chicken of all dates
rank_chicken_by_date <- function(data, number_of_heaviest) {
  ranked_chickenweight <- data |> 
    # rearrange the rows by time and weight in descending order
    arrange(Time, desc(weight)) |> 
    group_by(Time) |> 
    # take the first n rows of each group, n specified by the parameter
    slice_head(n = number_of_heaviest)
}

# test the function
chick_weight <- rank_chicken_by_date(ChickWeight, 5)
chick_weight
