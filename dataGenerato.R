species <- sample(c("felis catus","canis familiaris","giraffa camelopardalis",
                    "equus caballus", "panthera pardus"),100,replace=TRUE) #Making a vector with 5 different species names and sampling it 100 times (with repeats)
print(species)

#Creating accurate limb widths for each observation
limb_width <- ifelse(species == 'felis cactus', sample(c(1:3), replace = TRUE), #If species is cat, sample from 1-3 for width
                     ifelse(species == 'canis familiaris', sample(c(1:6), replace=TRUE), #If species is dog, sample from 1-6 for width
                            ifelse(species == 'giraffa camelopardalis', sample(c(10:50), replace = TRUE), #You get the point
                                   ifelse(species == 'equus caballus', sample(c(5:35), replace = TRUE),
                                          sample(c(2:10), replace = TRUE))))) #If not any of the other species, sample from 2:10 (only panther left)

print(limb_width)

#Same process as limb widths
limb_length <- ifelse(species == 'felis catus', sample(c(15:30), replace = TRUE),
                      ifelse(species == 'canis familiaris', sample(c(15:110), replace=TRUE),
                             ifelse(species == 'giraffa camelopardalis', sample(c(4000:6000), replace = TRUE),
                                    ifelse(species == 'equus caballus', sample(c(1000:2000), replace = TRUE),
                                           sample(c(60:110), replace = TRUE)))))

print(limb_length)

observer <- sample(c("John V.","Lucy Z.","Monica P."),100,replace=TRUE) #Making vector with 3 different observers and sampling 3 times
print(observer)

measurements<- data.frame(species, limb_width, limb_length, observer) #Combining vectors into a data frame

#Checking the dataframe
print(measurements)
head(measurements)
summary(measurements)
str(measurements)

#Exporting dataframe to csv
write.csv(measurements, "measurements.csv", row.names=FALSE)
