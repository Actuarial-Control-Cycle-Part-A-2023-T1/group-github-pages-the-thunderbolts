library(tidyverse)
library(data.table)

#Data
region_data <- fread("/Users/alexchen/Desktop/Desktop/ACTL4001_Assignment/agg_costs_scaled.csv")

#Function to create relativity matrix
region_matrix_func <- function(regionrow) {
  matrix <- data.frame()
  for (i in 1:6) {
    matrix <- rbind(matrix, regionrow[i]/regionrow)
  }
  matrix <- matrix %>% 
    mutate(across(everything(), function(x) {x-1})) %>% 
    mutate(across(everything(), ~ifelse(.==0, 0, ./max(matrix-1)))) %>% 
    mutate(across(everything(), ~ifelse(.<0, 0, .)))
  colnames(matrix) <- paste("New Region", 1:6)
  rownames(matrix) <- paste("Old Region", 1:6)
  return(matrix)
}
#testing
test <- c(20000, 10000, 300, 50000, 100000, 15000)
region_matrix_func(test)


#Apply function to all rows of property value data
region_matrix_list <- list()
for (i in 1:nrow(region_data)) {
  region_matrix_list[[i]] <- region_matrix_func(unlist(region_data[i,2:7]))
}
names(region_matrix_list) <- paste("Year", unlist(region_data[,1]))

#Look at first 5 rows.
region_matrix_list[1:5]


