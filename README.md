![Banner](https://github.com/VictoriaHussey/FreshAndFurious_NERCHackathon3_GreenCities/blob/master/Images/20200630_Logo_FaF_1000x246.png)


This repository is Fresh and Furious' entry to the NERC COVID-19 Hackathon 3: Ecosystem Services

# Table of Contents
* Video Abstract
* Introduction
* The Hackathon Brief
* Our Entry
 * Research Aims and Hypotheses
 * Methodology
 * Results
* Our Digital Solution - GreenSpace Mobile Application
 * Mobile Application Requirement Specification
* Future Work and Conclusion
 * Future Work
 * Conclusion
* Meet the Team
* References
* Data Sources



# Video Abstract

Click [here] to watch our video abstract on YouTube.   


# Introduction

<p align="justify">
The 2020 COVID-19 pandemic has caused countries across the world to implement unprecendented measures of social distancing to reduce the rate of transmission of COVID-19. Such measures include school closures and national lockdowns to urge people to stay at home to reduce day-to-day physical contact between individuals. This is widely regarded as one of the most effective ways to reduce the transmission of COVID-19 (Gu et al., 2020). Social distancing has disrupted the lives of entire populations (Caria et al., 2020), impacting on the mental wellbeing of many people, especially among those living in densely-populated urban settings with limited green public spaces.
The urban environment holds great influence over health, both directly and indirectly, through its impact on health-related behaviours (Bixby et al., 2015). The increase in chronic disease risk factors, for example, has been linked with urban living due to changing socio-economic, lifestyle and environmental factors (Allender et al., 2011). For this reason, disease prevention strategies that target the environment rather than individuals have gained support in  recent years (Department of Health, 2004 & 2011).
</p>

<p align="justify">
Urban green space has been proven effective in improving public health in the contemporary background of global urbanisation (Liu et al., 2019). Urban green space has therefore become an effective tool for planning healthy cities, offering not only critical ecosystem services but also significant physical and mental benefits (Shanahan et al., 2015). Furthermore, this research aims to provide a spatio-temporal overview of green space and the global pandemic of COVID-19, to identify if an increase in urban green space can reduce the transmission of COVID-19.
</p>


# The Hackathon Brief

This is an entry for COVID-19 Hackathon 3: Ecosystem Services, run by the National Environmental Research Council (NERC). Click [here](https://digitalenvironment.org/home/covid-19-digital-sprint-hackathons/covid-19-hackathon-3-ecosystem-services/) to access the hackathon brief.



# Our Entry

## Research Aims and Hypotheses
<p align = "justify">
We hypothesised that the number of COVID-19 cases in urban areas reduce with increased availability of public green spaces. We included data on the number of fines issued for breaching of lockdown measures as a potential artifact of fewer local green spaces, further highlighting the importance of better planning in both established and future housing developments. We aim to show the importance of incorporating green space within cities to reduce risks of disease transmission, and subsequently propose a digital solution which allows such spaces to be used safely to further minimise risks while maximising the benefits they provide.
</p>

## Methodology
<p align = "justify">
Analysis was conducted on data from 68 of the most populous metropolitan Upper Tier Local Authorities (UTLAs) in England. More than half of the UTLAs in our dataset were in London, and we aimed to analyse both broad-scale regional trends and smaller-scale trends in highly urbanized areas. We therefore divided the data into two datasets composed of those UTLAs in London and those elsewhere in England. Generalized Additive Models (GAMs) were used to analyse both datasets using packages “dply”, “mgcv” and “tidymv” to run the models, visualize the results and assess model assumptions (Wood, 2011; Coretta, 2020; Wickham et al., 2020). The total number of COVID-19 cases between 01/03/2020 and 26/06/2020 was used as our dependent variable and the population of the UTLA, the land area of the UTLA (km<sup>2</sup>), the proportion of households within the UTLA with access to private gardens, and the percentage green space cover of each UTLA were chosen as explanatory variables. This allowed us to investigate the effect of private garden access and green space cover on COVID-19 cases while controlling for population size and land area. Green space data was taken from Richardson & Mitchell (2010), who defined green space as areas which consisted of:

* allotments or community growing spaces
* bowling greens
* cemeteries and religious grounds
* golf courses, tennis courts, playing fields and other sports facilities
* play spaces
* public parks and gardens. 
 
Private gardens were not included in this measure, minimising correlation between our chosen explanatory variables. 

Additionally, we conducted an analysis into the number of police fines issued for breaching of lockdown measures in the twelve Basic Command Units (BCUs) across London. We aimed to investigate whether a lack of green space was a driver in restriction resistance and therefore increased risk of COVID-19 spread. A GAM was used with the number of fines per million people as the dependent variable, and the number of homes with good access to nature as the explanatory variable.

All analyses were conducted in R version 4.0.0 (R Core Team, 2020).
</p>

## Results
<p align = "center">
 <img src = "https://github.com/VictoriaHussey/FreshAndFurious_NERCHackathon3_GreenCities/blob/master/Supplementary%20Materials/Plots/Hackathon%20figure1.png">
 </p>

###### Figure 1: Total number of COVID-19 cases in each London borough (panels a1 and b1) and non-London UTLAs (panels a2 and b2) against green space as a percentage of area (panels a1 and a2) and the percentage of the population with access to a private garden (panels b1 and b2). Circles represent each borough/UTLA, with their size representing the population size. Shaded area shows the 95% confidence interval.

<p align = "center"> 
 <img src = "https://github.com/VictoriaHussey/FreshAndFurious_NERCHackathon3_GreenCities/blob/master/Supplementary%20Materials/Plots/Fines_access%20to%20nature.png">
</p>

###### Figure 2: Total number fines given due to the breaking of lockdown rules against the number of homes with good access to nature in London. Circles represent each London borough, with their size representing the population size. Shaded area shows the 95% confidence interval.

<p align = "justify">
In UTLAs across the UK (excluding London) we found that while controlling for the effects of population size (p < 0.001) and area (p = 0.28), areas where a higher proportion of people have access to private gardens reported fewer COVID-19 cases (p = 0.04; figure 1, b2). Conversely, the mean percentage cover of green space did not have a significant effect (p = 0.09; figure 1, a2) in these urban settings. In London boroughs with a greater percentage coverage of green space, a higher number of COVID-19 were recorded (p = 0.001; figure 1, a1); in contrast, access to private gardens was found to have no significant effect on the number of cases (p = 0.85; figure 1, b1). In both cases, we controlled for population size and area; population size was consistently found to have a significant effect on the number of cases (p =< 0.04), but area only had an effect in London boroughs (p = 0.002) and not in other UTLAs (p = 0.28). Finally, our analysis showed that London boroughs with better access to nature had fewer fines (p = 0.05, figure 2), however and larger sample size would lead to more robust conclusions about this relationship.
</p>


# Our Digital Solution - GreenSpace Mobile Application
[<img align = "right" width = "220" height = "330" src="https://github.com/VictoriaHussey/FreshAndFurious_NERCHackathon3_GreenCities/blob/master/Images/Final.png">](https://github.com/VictoriaHussey/FreshAndFurious_NERCHackathon3_GreenCities/blob/master/Our%20Digital%20Solution%20-%20Green%20Space%20App/20200701_UserRequirementsSpecification.docx)

<p align = "justify">
Nature provides key ecosystem services that promote wellbeing and may modulate the spread of disease. Within urban environments, green spaces have diminished with time (Colding et al., 2020), despite being critical in times of crisis such as COVID-19 to alleviate the mental and physical burdens that arise with self-isolation (Samuelsson et al., 2020). Fewer, smaller private gardens and limited access to public green spaces in cities may result in crowding within available spaces. Crowded spaces can become hotspots of COVID-19 contagion (Lall et al., 2020). It is therefore crucial to minimise the risks whilst maximising the benefits from natural environments. We propose better planning and expansion of urban green spaces to increase resilience to disease, as well as a digital solution, the GreenSpace app, to ensure safe use of outdoor space to limit crowding. Digital solutions with similar concepts have been used to reduce crowding on public transport and inform users of delays (Montreal Smart City, 2017). Other examples have shown how digital tools can be used to monitor accessibility to public green spaces and inform better planning (Van Herzele & Wiedemann, 2003).
</p>

## Mobile Application Requirement Specification

We have created a Requirement Specification for our mobile application *GreenSpace*, which provides an extensive outline of our proposal. Click [here](https://github.com/VictoriaHussey/FreshAndFurious_NERCHackathon3_GreenCities/blob/master/Our%20Digital%20Solution%20-%20Green%20Space%20App/20200701_UserRequirementsSpecification.docx) or on the app to find out more!  


# Future Work and Conclusion

## Future Work
<p align = "justify">
Improved physical health associated with living near green spaces may reduce risk of comorbidities and help to improve immune system function of infected individuals. Including data on fatalities may reveal these additional benefits but this was not within the current scope of research. Furthermore, health is associated with socioeconomic status and air pollution, both of which are known to be factors that affect the severity of COVID-19. While crowded housing remains to be an issue in the transmission of disease amongst low-income communities, proximity to green spaces has been shown to almost halve health inequalities (Marmot, 2010), which may act as a significant buffer against death. Future work would benefit from the inclusion of such data.
</p>

## Conclusion
<p align = "justify">
Urban green spaces are critical in times of crisis to limit adverse impacts to mental and physical health (Samuelsson et al., 2020; Owen et al., 2020). Used safely i.e. without crowding, green spaces may aid in repressing disease transmission. However, with fewer spaces available to city residents (Colding et al., 2020), social distancing becomes more difficult and the likelihood of lockdown measures being breached may increase. Analyses of open-access data on green space availability, both public and private, in addition to the number of fines issued for breaching of lockdown measures highlighted these issues, indicating that in highly-populated areas urban green spaces may become hotspots of contagion. 
 
We therefore developed a prototype for a mobile application, Greenspace, that allows users to input visitation information and check the predicted status of human traffic within urban green spaces. This reduces both personal risk and helps to limit spread by reducing crowding. Information collected from the application can also be used to identify areas of high usage that may require attention and inform better planning of urban spaces. 

The amount and quality of accessible green space can alter patterns in human movements and activities (Van Herzele & Wieldemann, 2003). More extensive re-greening across cities may therefore reduce crowding in current designated public green spaces. We call for a large-scale effort to promote nature across cities to maximise the ecosystem services that nature provides. This is also a critical and urgent step in addressing global biodiversity loss and the climate crisis, which requires immediate and universal action. 
</p>

# Meet the Team

<img align = "right" width = "300" height = "200" src="https://github.com/VictoriaHussey/FreshAndFurious_NERCHackathon3_GreenCities/blob/master/Images/FRESH%20Logo.jpg">

The team comprises of 10 PhD researchers from the [GW4<sup>+</sup> FRESH CDT](https://www.gw4fresh.co.uk/):

### University of Bath
[Franciszek Bydalek](https://researchportal.bath.ac.uk/en/persons/franciszek-bydalek), [Joshua Rainbow](https://researchportal.bath.ac.uk/en/persons/josh-rainbow)

### University of Bristol: 
[Rory Burford](http://www.bristol.ac.uk/geography/people/rory-j-burford/index.html), [Toby Champneys](https://research-information.bris.ac.uk/en/persons/toby-s-champneys), [Elliot Druce](http://www.bristol.ac.uk/geography/people/elliot-j-druce/overview.html), [Jack Greenhalgh](https://research-information.bris.ac.uk/en/persons/jack-greenhalgh), [Victoria Hussey](http://www.bristol.ac.uk/geography/people/victoria-l-hussey/index.html)

### Cardiff University: 
[Annalise Hooper](https://www.cardiff.ac.uk/people/research-students/view/1515958-hooper-annalise), [Fiona Joyce](https://www.cardiff.ac.uk/people/research-students/view/1322399-)

### University of Exeter: 
[Luke Lear](http://biosciences.exeter.ac.uk/staff/profile/index.php?web_id=Luke_Lear)


# References
A full reference list can be found by clicking [here](/References/References.docx)


# Data Sources
## Data Description
<p align = "justify">
Our analysis focused on the most populous UTLAs in England. A total of 68 UTLAs were selected, including 32 London boroughs and 36 metropolitan boroughs. Population data of selected metropolitan districts are according to estimated figures for 2019 from the Office for National Statistics (ONS) . Land area of respective metropolitan districts comes from ONS data base on Standard Area Measurements for the administrative areas in the United Kingdom (2016) . The total number of COVID-19 cases in each UTLA between 01/03/2020 and 27/06/2020 were obtained from the official governmental website dedicated for dissemination of COVID-19-related information . Data on the proportion of households with access to parks and  private gardens was provided by the Office for National Statistics . Data showing the green area percentage coverage in selected urban areas was provided by The Centre for Research on Environment Society and Health (CRESH) . Green space cover data for each ward was used to calculate the average value for each UTLA using the aggregate function in R version 4.0.0 (R Core Team, 2020). 
</p> 

To assess the impact of access to nature on the number of fines handed out during lockdown in London, we used two publicly available datasets:
* [the access to Public Open Space data from London Datastore](https://data.london.gov.uk/dataset/access-public-open-space-and-nature-ward) 
* [the final FNP arrest analysis report from the Metropolitan Police](http://news.met.police.uk/documents/final-fpn-arrest-analysis-report-96756).

Collected datasets were compiled into single dataset matrix using R 4.0.0 (R Core Team, 2020), the dplyr (v1.0.0, Wickham et al, 2020) and the bbmle (v1.0.23.1, Bolker et al, 2020) packages. 

## Code
The full reproducible code for our analysis is available in the [Code](/Supplementary%20Materials/Code) subfolder.

## Datasets
The following datasets are provided in the [Datasets](/Supplementary%20Materials/Datasets) subfolder:
* Total COVID-19 cases per UTLA – [Coronavirus data](/Supplementary%20Materials/Datasets/Coronavirus_data.csv)
* Metadata including population and land area data for the 68 chosen UTLA’s – [Metadata](/Supplementary%20Materials/Datasets/metadata.csv)
* Access to private gardens and parks data - [Park access](Supplementary%20Materials/Datasets/Park_access.csv)
* Green space percentage cover data – [Greenspace](/Supplementary%20Materials/Datasets/Greenspace.csv)
* The final datasets:
  * [Final dataset for London](/Supplementary%20Materials/Datasets/Final_Data_London.csv)
  * [Final dataset excluding London](/Supplementary%20Materials/Datasets/Final_Data_Outside_London.csv)

## R Packages
* R Core Team (2020). R: A language and environment for statistical computing. R Foundation for Statistical Computing, Vienna, Austria. [Click here to access](https://www.R-project.org/.)
* Wickham Hadley, Romain François, Lionel Henry and Kirill Müller (2020). dplyr: A Grammar of Data Manipulation. R package version 1.0.0. [Click here to access](https://CRAN.R-project.org/package=dplyr.)
* Bolker Ben and R Development Core Team (2020). bbmle: Tools for General Maximum Likelihood Estimation. R package version 1.0.23.1. [Click here to access](https://CRAN.R-project.org/package=bbmle.)


![Banner](https://github.com/VictoriaHussey/FreshAndFurious_NERCHackathon3_GreenCities/blob/master/Images/20200701_Banner_GW4_1000x84.png)
