#Uploading necessary package
library(dplyr)

#Setting working directory and inputting necessary files
setwd("/Users/darahvlaminck/BIOL432_Assignment1")
measurements = read.csv("measurements.csv")
print(measurements)

#Creating a new column that calculates volume using dplyr
measurements <- measurements %>%
  mutate(Volume = (limb_width/2)^2 * limb_length * 3.14)  #Volume of cylinder is pi x height x radius squared
print(measurements) #Check dataframe