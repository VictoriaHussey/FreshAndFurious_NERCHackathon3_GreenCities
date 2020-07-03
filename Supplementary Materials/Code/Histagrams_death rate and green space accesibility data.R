dataAll <- read.csv(file="C:..../final-dataset-with-London (1).csv")
dataNoLondon<-read.csv(file="C:/.../final-dataset-without-London.csv")
setwd("....")



### Libraries######

library(tidyverse)
install.packages("hrbrthemes")
library(hrbrthemes)
install.packages("viridis")
library(viridis)
library(forcats)
library(ggplot2)
install.packages("ggExtra")
library(ggExtra)

#### Histagrams ###########

#Death rates and cases------------

hist(dataAll$RATE,
     main="Death rate \nupdated Jun 29th",
     xlab="death rate per 100,000 resident population",
     col="black",
     freq=FALSE, breaks=20, cex.axis=0.8, cex.main=0.8, cex.lab=0.8,border="white" )

hist(dataAll$TOTAL._CASES,
     main="Total infection cases \nupdated Jun 29th",
     xlab="Infection rate per 100,000 resident population",
     col="black",
     freq=FALSE, breaks=20, cex.main=0.8, cex.axis=0.8, cex.lab=0.8, border="white")

hist(dataNoLondon$RATE,
     main="Death rate excluding London boroughts \nupdated Jun 29th",
     xlab="death rate per 100,000 resident population",
     col="black",
     freq=FALSE, breaks=20, cex.main=0.8, cex.axis=0.8, cex.lab=0.8, border="white")


hist(dataNoLondon$TOTAL._CASES,
     main="Total infection cases excluding London boroughts \nupdated Jun 29th",
     xlab="Infection rate per 100,000 resident population",
     col="black",
     freq=FALSE, breaks=20, cex.main=0.8, cex.axis=0.8, cex.lab=0.8, border="white")

#Green space avialability-----------------

par(mfrow = c(2, 2))

hist(dataAll$greenspace_pc,
     main="Green space accessibility; \nLand ratio",
     xlab="Green space land ratio (%)",
     col="green",
     freq=FALSE, breaks=20,cex.axis=0.6, cex.main=0.7, cex.lab=0.7, border="black")



hist(dataAll$Dist_green_area,
     main="Green space accessibility;\nDistance",
     xlab="Average distance to nearest Park, \nPublic Garden, or Playing Field (m)",
     col="green",
     freq=FALSE, breaks=20,cex.axis=0.7, cex.main=0.7, cex.lab=0.7, border="black")

hist(dataAll$Size_Green_area,
     main="Green space accessibility; \nArea",
     xlab="Average size of nearest Park, \nPublic Garden, or Playing Field (m2)",
     col="green",
     freq=FALSE, breaks=20,cex.axis=0.6, cex.main=0.7, cex.lab=0.7, border="black")


hist(dataAll$No_Parks_1000mradius,
     main="Green space accessibility; \nNumber",
     xlab="Average number of  Parks, \nPublic Gardens, Playing Fields \nwithin 1,000 m radius",
     col="green",
     freq=FALSE, breaks=20,cex.axis=0.6, cex.main=0.7, cex.lab=0.7, border="black")


par(mfrow = c(1, 1))

hist(dataAll$private_outdoor_space,
     main="Adresses with private \noutdoor space access",
     xlab="Percentage of adresses \nwith private outdoor space",
     col="green",
     freq=FALSE, breaks=20,cex.axis=0.8, cex.main=0.8, cex.lab=0.8, border="black")




