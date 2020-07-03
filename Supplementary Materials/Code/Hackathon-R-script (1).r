#### packages ####

library(dplyr)
library(bbmle)
library(mgcv)
library(tidymv)

citation("dplyr")
citation("mgcv")
citation("tidymv")

#### LOAD IN DATA ####

#### CORONAVIRUS CASES PER ULTA #####

corona_cases <- read.csv(file="C:/users/Toby Stephen/Desktop/Hackathon/coronavirus_data.csv")

#### METADATA ####

metadata <- read.csv(file="C:/users/Toby Stephen/Desktop/Hackathon/metadata.csv")

#### GREEN SPACE DATA ####

greenspace <- read.csv(file="C:/users/Toby Stephen/Desktop/Hackathon/greenspace.csv")

#### PARK ACCESS DATA ####

parkaccess <- read.csv(file="C:/users/Toby Stephen/Desktop/Hackathon/Park_access.csv")

# Subset to only include the 68 most populated metropolitan areas

names <- dplyr::pull(metadata, Name_ULTA)

ONS_types <- dplyr::pull(metadata, Group.1)

# coronavirus cases

corona_cases_new <- subset(corona_cases, UTLA %in% names)

length(unique(corona_cases_new$UTLA))

# greenspace

greenspace_new <- subset(greenspace, ONS %in% ONS_types)

length(unique(greenspace_new$ONS))

# park access

parkaccess_new <- subset(parkaccess, LAD_name %in% names)

length(unique(parkaccess_new$LAD_name))


#### AGGREAGTE GREENSPACE DATASET ####

greenspace_agg <- aggregate(greenspace_new,
                by = list(greenspace_new$ONS),
                FUN = mean)

#### RBIND THE DATASETS #### 

dataset <- cbind(corona_cases_new, metadata, parkaccess_new)

final_dataset_withlondon <- merge(dataset,greenspace_agg, by="Group.1")

final_dataset <- final_dataset_withlondon[final_dataset_withlondon$English_region!= "London", ]

final_dataset_justlondon <- subset(final_dataset_withlondon, English_region=="London")

#### CREATE FINAL DATATSETS FOR CHECKING ####

write.csv(final_dataset ,file="C:/users/Toby Stephen/Desktop/Hackathon/final dataset without London.csv")

write.csv(final_dataset_justlondon ,file="C:/users/Toby Stephen/Desktop/Hackathon/final dataset just London.csv")

#### ANALYSIS FOR EVERYWHERE EXCEPT LONDON ####

#### Percentage cover of green space ####

gam1 <- gam(TOTAL._CASES ~ s(greenspace_pc, k = 5) + s(Population, k = 5) + s(private_outdoor_space, k = 5) + s(Area_.km2., k =5), data = final_dataset, method = "REML")

qq.gam(gam1,rep=100, pch = 1, cex = 1)

plot(gam1, residuals = T, rug = F, pch = 1, cex = 1,
     shade = T, shade.col = "lightblue", seWithMean = TRUE)

gam.check(gam1, old.style=F)

summary(gam1)


plot(final_dataset$TOTAL._CASES ~ final_dataset$private_outdoor_space)


#### ANALYSIS FOR LONDON ####

#### Percentage cover of green space ####

gam2 <- gam(TOTAL._CASES ~ s(greenspace_pc, k = 5) + s(Population, k = 5) + s(private_outdoor_space, k = 5) + s(Area_.km2., k =5), data = final_dataset_justlondon, method = "REML")

qq.gam(gam2,rep=100, pch = 1, cex = 1)

plot(gam2, residuals = T, rug = F, pch = 1, cex = 1,
     shade = T, shade.col = "lightblue", seWithMean = TRUE)

gam.check(gam2, old.style=F)

summary(gam2)

#### Fines vs access to nature in London ####

fines_data <- read.csv(file="C:/users/Toby Stephen/Desktop/Hackathon/Fines.csv")

# Analysis

gam3 <- gam(Fines ~ s(nature, k = 12), data = fines_data)

qq.gam(gam3,rep=100, pch = 1, cex = 1)

plot(gam3, residuals = T, rug = F, pch = 1, cex = 1,
     shade = T, shade.col = "lightblue", seWithMean = TRUE)

gam.check(gam3, old.style=F)

summary(gam3)










