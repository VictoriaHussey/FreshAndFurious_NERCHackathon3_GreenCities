#### packages ####

library(dplyr)
library(ggplot2)
library(stringr)
library(tidyverse)
library(cowplot)

#### Read in data
all <- read.csv(file="~/Downloads/final-dataset-with-London.csv")

# add London as variable so can Facet_wrap by
all$lond <- ifelse(all$English_region !="London", "UK metropolitan borough", "London")

# make all$private_outdoor_space a percentage
all$private_outdoor_space <- all$private_outdoor_space*100

# create black theme

theme_black = function(base_size = 12, base_family = "") {
  
  theme_grey(base_size = base_size, base_family = base_family) %+replace%
    
    theme(
      axis.line = element_blank(),  
      axis.text.x = element_text(size = base_size*0.8, color = "white", lineheight = 0.9),  
      axis.text.y = element_text(size = base_size*0.8, color = "white", lineheight = 0.9),  
      axis.ticks = element_line(color = "white", size  =  0.2),  
      axis.title.x = element_text(size = base_size, color = "white", margin = margin(0, 10, 0, 0)),  
      axis.title.y = element_text(size = base_size, color = "white", angle = 90, margin = margin(0, 10, 0, 0)),  
      axis.ticks.length = unit(0.3, "lines"),   
      legend.background = element_rect(color = NA, fill = "black"),  
      legend.key = element_rect(color = "white",  fill = "black"),  
      legend.key.size = unit(1.2, "lines"),  
      legend.key.height = NULL,  
      legend.key.width = NULL,      
      legend.text = element_text(size = base_size*0.8, color = "white"),  
      legend.title = element_text(size = base_size*0.8, face = "bold", hjust = 0, color = "white"),  
      legend.position = "right",  
      legend.text.align = NULL,  
      legend.title.align = NULL,  
      legend.direction = "vertical",  
      legend.box = NULL, 
      panel.background = element_rect(fill = "black", color  =  NA),  
      panel.border = element_rect(fill = NA, color = "white"),  
      panel.grid.major = element_line(color = "grey35"),  
      panel.grid.minor = element_line(color = "grey20"),  
      panel.margin = unit(0.5, "lines"),   
      strip.background = element_rect(fill = "grey30", color = "grey10"),  
      strip.text.x = element_text(size = base_size*0.8, color = "white"),  
      strip.text.y = element_text(size = base_size*0.8, color = "white",angle = -90),  
      plot.background = element_rect(color = "black", fill = "black"),  
      plot.title = element_text(size = base_size*1.2, color = "white"),  
      plot.margin = unit(rep(1, 4), "lines")
      
    )
  
}

### Plots ###

# Plot cases ~ proportion of people with access to a private garden, with the size of the dots showing population and the colour proprtion of greenspace in each area

a <- ggplot(all, aes(x = private_outdoor_space, y = TOTAL._CASES))+
  geom_point(aes(colour = all$greenspace_pc), size = all$Population/150000)+
  stat_smooth(method = lm, colour = 'azure2', fill = 'azure4')+
  theme_black()+
  scale_y_continuous(name = 'Total cases')+
  scale_x_continuous(name = "Percentage of the population with a private garden")+
  theme(axis.title.y=element_text(size=15),axis.title.x=element_text(size=15), strip.text.x = element_text(size = 15))+
  scale_color_gradient(low = "green4", high = "olivedrab1")+
  labs(colour = "Greenspace as\na percentage\nof area")+
  facet_grid(~lond, scales = "free")


# Plot cases ~ proprtion of greenspace in each area, with the size of the dots showing population and the colour proportion of people with access to a private garden.

b <- ggplot(all, aes(x = greenspace_pc, y = TOTAL._CASES))+
  geom_point(aes(colour = all$private_outdoor_space), size = all$Population/150000)+
  stat_smooth(method = lm, colour = 'azure2', fill = 'azure4')+
  theme_black()+
  scale_y_continuous(name = 'Total cases')+
  scale_x_continuous(name = "Greenspace as a percentage of area")+
  theme(axis.title.y=element_text(size=15),axis.title.x=element_text(size=15), strip.text.x = element_text(size = 15))+
  scale_color_gradient(low = "darkgreen", high = "olivedrab1")+
  labs(colour = "Percentage of\nthe population\nwith a private\ngarden")+
  facet_grid(~lond, scales = "free")


plot_grid(b, a, ncol=1, align="v",labels = "auto",   label_colour = "white")

####

l <- read.csv(file="~/Downloads/london covid data.csv")

ggplot(l, aes(x = access_to_nature, y = fines))+
  geom_point(colour = "green", size = l$pop/200000)+
  stat_smooth(method = lm, colour = 'azure2', fill = 'azure4')+
  theme_black()+
  scale_y_continuous(name = 'Number of fines')+
  scale_x_continuous(name = "Homes with good access to nature")+
  theme(axis.title.y=element_text(size=15),axis.title.x=element_text(size=15), strip.text.x = element_text(size = 15))
