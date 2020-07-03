#### packages ####

library(dplyr)
library(bbmle)


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

write.csv(final_dataset_withlondon ,file="C:/users/Toby Stephen/Desktop/Hackathon/final dataset with London.csv")

write.csv(final_dataset ,file="C:/users/Toby Stephen/Desktop/Hackathon/final dataset without London.csv")

#### Calculate the population density of green spaces in each area and add it as a variable ####

#final_dataset['greenspacedensity'] = final_dataset['Population'] / (final_dataset['Area_.km2.'] * final_dataset['greenspace_pc']/100) 

#### ANALYSIS ####

#### Percentage cover of green space ####

hist(log(final_dataset$greenspacedensity))

glm1 <- glm(TOTAL._CASES ~ greenspacedensity + English_region, data = final_dataset)

par(mfrow = c(2, 2))

plot(glm1)

summary(glm1)










