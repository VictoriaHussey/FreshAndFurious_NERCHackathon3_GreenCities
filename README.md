![Banner](https://github.com/VictoriaHussey/FreshAndFurious_NERCHackathon3_GreenCities/blob/master/Images/20200630_Logo_FaF_1000x246.png)


This repository is Fresh and Furious' entry to the NERC COVID-19 Hackathon 3: Ecosystem Services


# Abstract/Summary

Click [here] to watch our video summary on YouTube.   


# Introduction

<p align="justify">
The 2020 COVID-19 pandemic has caused countries across the world to implement unprecendented measures of social distancing to reduce the rate of transmission of COVID-19. Such measures include school closures and national or regional lockdowns to urge people to stay at home to reduce the amount of physical contact people have on a day-to-day basis. This is widely regarded as one of the most effective ways to reduce the transmission of COVID-19 (Gu et al., 2020). Social distancing has disrupted the lives of entire populations (Caria et al., 2020), impacting on the mental wellbeing of many people, especially among those living in densely-populated urban settings with limited green public spaces.
The urban environment holds great influence over health, both directly and indirectly, through its impact on health-related behaviours (Bixby et al., 2015). The increase in chronic disease risk factors, for example, has been linked with urban living due to changing socio-economic, lifestyle and environmental factors (Allender et al., 2011). For this reason, disease prevention strategies that target the environment rather than individuals have gained support over recent years (Department of Health, 2004 & 2011).
</p>

<p align="justify">
Urban greenspace has been proven effective in improving public health in the contemporary background of global urbanisation (Liu et al., 2019). Urban greenspace has therefore become an effective tool for planning healthy cities, offering not only critical ecosystem services but also significant physical and mental benefits (Shanahan et al., 2015). Furthermore, this research aims to provide a spatio-temporal overview of greenspace and the global pandemic of COVID-19, to identify if an increase in urban greenspace can reduce the transmission of COVID-19.
</p>


# The Hackathon Brief

This is an entry for Covid-19 Hackathon 3: Ecosystem Services, run by the National Environmental Research Council (NERC). Click [here](https://digitalenvironment.org/home/covid-19-digital-sprint-hackathons/covid-19-hackathon-3-ecosystem-services/) to access the hackathon brief.



# Our Entry

## Research Aims and Hypotheses
<p align = "justify">
We hypothesised that the number of COVID-19 cases in urban areas reduce with increased availability of public green spaces. We included data on the number of fines issued for breaching of lockdown measures as a potential artifact of fewer local green spaces, further highlighting the importance of better planning in both established and future housing developments. We aim to show the importance of incorporating green space within cities to reduce risks of disease transmission, and subsequently propose a digital solution which allows such spaces to be used safely to further minimise risks while maximising the benefits they provide.
</p>

## Methodology

This section will outline our methodology and data analysis...

## Results
<p align = "justify">
In UTLA’s across the UK (excluding London) we found that while controlling for the effects of population size (P < 0.001) and area (P = 0.28), areas where a higher proportion of people have access to private gardens had fewer coronavirus cases (P = 0.04). While the mean percentage cover of green space did not have a significant effect (P = 0.09). In London however, while controlling for the effects of population size (P = 0.04) and area (P = 0.002), UTLA’s with a higher percentage coverage of green space had a higher number of coronavirus cases (P = 0.001). While the proportion of people in London UTLA’s with access to private gardens did not affect coronavirus case numbers (P = 0.85).
</p>                                                                                                                      

# Our Digital Solution - Green Space App
<img align = "right" width = "220" height = "350" src="https://github.com/VictoriaHussey/FreshAndFurious_NERCHackathon3_GreenCities/blob/master/Images/Final.png">

<p align = "justify">
Nature provides key ecosystem services that promote wellbeing and may modulate the spread of disease. Within urban environments, green spaces have diminished with time (Colding et al., 2020), despite being critical in times of crisis such as COVID-19 to alleviate the mental and physical burdens that arise with self-isolation (Samuelsson et al., 2020). Fewer, smaller private gardens and limited access to public green spaces in cities may result in crowding within available spaces. Crowded spaces can become hotspots of coronavirus contagion (Lall et al., 2020). It is therefore crucial to minimise the risks whilst maximising the benefits from natural environments. We propose better planning and expansion of urban green spaces to increase resilience to disease, as well as a digital solution, the Green Space App, to ensure safe use of outdoor space to limit crowding. Digital solutions with similar concepts have been used to help reduce crowding on public transport and inform users of delays (Montreal Smart City, 2017). Other examples have shown how digital tools can be used to monitor accessibility to public green spaces and help inform better planning (Van Herzele & Wiedemann, 2003).
</p>

<p align = "justify">
The User Requirement Specification for our mobile application provides further detail on our proposal, and can be viewed [here]. 
</p>


# Future Work and Conclusion

## Future Work
<p align = "justify">
Improved physical health associated with living near green spaces may reduce risk of comorbidities and help to improve immune system function of infected individuals. Including data on fatalities may reveal these additional benefits but this was not within the current scope of research. Furthermore, health is associated with socioeconomic status and air pollution, both of which are known to be factors that affect the severity of coronavirus. While crowded housing remains to be an issue in the transmission of disease amongst low-income communities, proximity to green spaces has been shown to almost halve health inequalities (Marmot, 2010), which may act as a significant buffer against death. Future work would benefit from the inclusion of such data.
</p>

## Conclusion

This section will provide a brief conclusion to the report...

# Meet the Team

The team comprises of 10 PhD researchers from the GW4<sup>+</sup> FRESH CDT:

### University of Bath
Franciszek Bydalek, Joshua Rainbow

### University of Bristol: 
Rory Burford, Toby Champneys, Elliot Druce, Jack Greenhalgh, Victoria Hussey

### Cardiff University: 
Annalise Hooper, Fiona Joyce

### University of Exeter: 
Luke Lear


# References
A full reference list can be found [here](/References/References.docx)


# Data Sources
<p align = "justify">
Our analysis focused on the most populous UTLA’s England (Upper Tier Local Authorities) in England. A total of 68 UTLA’s were selected, including 32 London boroughs and 36 metropolitan boroughs. Population data of selected metropolitan districts are according to estimated figures for 2019 from the Office for National Statistics (ONS) . Land area of respective metropolitan districts comes from ONS data base on Standard Area Measurements for the administrative areas in the United Kingdom (2016) . The total number of coronavirus cases in each UTLA between 01/03/2020 and 27/06/2020 were obtained from the official governmental website dedicated for dissemination of coronavirus-related information . Data on the proportion of households with access to parks and  private gardens was provided by the Office for National Statistics . Data showing the green area percentage coverage in selected urban areas was provided by The Centre for Research on Environment Society and Health (CRESH) . Green space cover data for each ward was used to calculate the average value for each UTLA using the aggregate function in R version 4.0.0 (R Core Team, 2020). Collected datasets were compiled into single dataset matrix using R 4.0.0 (R Core Team, 2020), the dplyr (v1.0.0, Wickham et al, 2020) and the bbmle (v1.0.23.1, Bolker et al, 2020) packages. The full reproducible code is available in Supplementary Materials.
</p>

The following datasets are provided in the [Dataset](/Dataset) folder:
* Total coronavirus cases per UTLA – [Coronavirus_data](/Dataset/Coronavirus_data.csv)
* Metadata including population and land area data for the 68 chosen UTLA’s – [Metadata](/Dataset/metadata.csv)
* Access to private gardens and parks data - [Park_access](/Dataset/Park_access.csv)
* Green space percentage cover data – [Greenspace](/Dataset/greenspace.csv)
* The final datasets:
  * [Final dataset for London](/Dataset/Final_Data_London.csv)
  * [Final dataset excluding London](/Dataset/Final_Data_Outside_London.csv)

R packages used:
* R Core Team (2020). R: A language and environment for statistical computing. R Foundation for Statistical Computing, Vienna, Austria. [Click here to access](https://www.R-project.org/.)
* Wickham Hadley, Romain François, Lionel Henry and Kirill Müller (2020). dplyr: A Grammar of Data Manipulation. R package version 1.0.0. [Click here to access](https://CRAN.R-project.org/package=dplyr.)
* Bolker Ben and R Development Core Team (2020). bbmle: Tools for General Maximum Likelihood Estimation. R package version 1.0.23.1. [Click here to access](https://CRAN.R-project.org/package=bbmle.)


![Banner](https://github.com/VictoriaHussey/FreshAndFurious_NERCHackathon3_GreenCities/blob/master/Images/20200701_Banner_GW4_1000x84.png)
