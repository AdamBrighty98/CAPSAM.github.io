library(shiny)
library(ggplot2)
library(plotly)
library(tidyverse)
library(dplyr)
library(DT)
library(reshape2)
library(viridis)
library(hrbrthemes)

# Loading in data - all impact factors, emission factors, and assumption CSV files
elec_gen_EFs <- read.csv("C:/Users/ab22/Desktop/CAPSAM_CSVs/Elec_EFs_kt_TWh.csv")
dom_heat_EFs <- read.csv("C:/Users/ab22/Desktop/CAPSAM_CSVs/Res_Heat_EFs_kt_TWh.csv")
pub_heat_EFs <- read.csv("C:/Users/ab22/Desktop/CAPSAM_CSVs/Pub_Heat_EFs_kt_TWh.csv")
ind_com_EFs <- read.csv("C:/Users/ab22/Desktop/CAPSAM_CSVs/Ind_Com_EFs_kt_TWh.csv")
hyd_prod_EFs <- read.csv("C:/Users/ab22/Desktop/CAPSAM_CSVs/Hydrogen_Production_EFs_kt_TWh.csv")
impact_factors <- read.csv("C:/Users/ab22/Desktop/CAPSAM_CSVs/UK_to_UK_IFs.csv")



# Simplifying names of emission factors - setting them to recognisable names

# Electricity Emission and Impact Factors
# CO2 emission factors
elec_co2_EF_Biomass <- elec_gen_EFs[6,3]
elec_co2_EF_BECCS <- elec_gen_EFs[11,3]
elec_co2_EF_Gas <- elec_gen_EFs[2,3]
elec_co2_EF_GasCCS <- elec_gen_EFs[9,3]
elec_co2_EF_Hydrogen <- elec_gen_EFs[4,3]
elec_co2_EF_Coal <- elec_gen_EFs[1,3]
elec_co2_EF_Waste <- elec_gen_EFs[8,3]
elec_co2_EF_OtherThermal <- elec_gen_EFs[5,3]

# NOx emission factors
elec_nox_EF_Biomass <- elec_gen_EFs[6,4]
elec_nox_EF_BECCS <- elec_gen_EFs[11,4]
elec_nox_EF_Gas <- elec_gen_EFs[2,4]
elec_nox_EF_GasCCS <- elec_gen_EFs[9,4]
elec_nox_EF_Hydrogen <- elec_gen_EFs[4,4]
elec_nox_EF_Coal <- elec_gen_EFs[1,4]
elec_nox_EF_Waste <- elec_gen_EFs[8,4]
elec_nox_EF_OtherThermal <- elec_gen_EFs[5,4]

#PM2.5 emission factors
elec_pm25_EF_Biomass <- elec_gen_EFs[6,5]
elec_pm25_EF_BECCS <- elec_gen_EFs[11,5]
elec_pm25_EF_Gas <- elec_gen_EFs[2,5]
elec_pm25_EF_GasCCS <- elec_gen_EFs[9,5]
elec_pm25_EF_Hydrogen <- elec_gen_EFs[4,5]
elec_pm25_EF_Coal <- elec_gen_EFs[1,5]
elec_pm25_EF_Waste <- elec_gen_EFs[8,5]
elec_pm25_EF_OtherThermal <- elec_gen_EFs[5,5]

#pNOx Electricity Impact Factors
elec_nox_IF_Gas <- impact_factors[1,7]
elec_nox_IF_Landfill <- impact_factors[2,7]
elec_nox_IF_Other <- impact_factors[3,7]

#PM2.5 Electricity Impact Factors
elec_pm25_IF_Gas <- impact_factors[1,6]
elec_pm25_IF_Landfill <- impact_factors[2,6]
elec_pm25_IF_Other <- impact_factors[3,6]

###################################################################################################

# Building Heating Emission and Impact Factors
# Domestic Heat CO2 Emission Factors
dh_co2_EF_SSF_stove <- dom_heat_EFs[1,2]
dh_co2_EF_SSF_boiler <- dom_heat_EFs[2,2]
dh_co2_EF_gasoil_boiler <- dom_heat_EFs[3,2]
dh_co2_EF_gas_boiler <- dom_heat_EFs[4,2]
dh_co2_EF_woodpellet_boiler <- dom_heat_EFs[5,2]
dh_co2_EF_wood_boiler <- dom_heat_EFs[6,2]
dh_co2_EF_wood_fireplace <- dom_heat_EFs[7,2]
dh_co2_EF_hydrogen_boiler <- dom_heat_EFs[8,2]
dh_co2_EF_hydrogen_natgas_boiler <- dom_heat_EFs[9,2]
dh_co2_EF_coal_stove <- dom_heat_EFs[10,2]

# Domestic Heat NOx Emission Factors
dh_nox_EF_SSF_stove <- dom_heat_EFs[1,3]
dh_nox_EF_SSF_boiler <- dom_heat_EFs[2,3]
dh_nox_EF_gasoil_boiler <- dom_heat_EFs[3,3]
dh_nox_EF_gas_boiler <- dom_heat_EFs[4,3]
dh_nox_EF_woodpellet_boiler <- dom_heat_EFs[5,3]
dh_nox_EF_wood_boiler <- dom_heat_EFs[6,3]
dh_nox_EF_wood_fireplace <- dom_heat_EFs[7,3]
dh_nox_EF_hydrogen_boiler <- dom_heat_EFs[8,3]
dh_nox_EF_hydrogen_natgas_boiler <- dom_heat_EFs[9,3]
dh_nox_EF_coal_stove <- dom_heat_EFs[10,3]

# Domestic Heat PM2.5 Emission Factors
dh_pm25_EF_SSF_stove <- dom_heat_EFs[1,4]
dh_pm25_EF_SSF_boiler <- dom_heat_EFs[2,4]
dh_pm25_EF_gasoil_boiler <- dom_heat_EFs[3,4]
dh_pm25_EF_gas_boiler <- dom_heat_EFs[4,4]
dh_pm25_EF_woodpellet_boiler <- dom_heat_EFs[5,4]
dh_pm25_EF_wood_boiler <- dom_heat_EFs[6,4]
dh_pm25_EF_wood_fireplace <- dom_heat_EFs[7,4]
dh_pm25_EF_hydrogen_boiler <- dom_heat_EFs[8,4]
dh_pm25_EF_hydrogen_natgas_boiler <- dom_heat_EFs[9,4]
dh_pm25_EF_coal_stove <- dom_heat_EFs[10,4]

#pNOx Domestic Heat Impact Factors
dh_nox_IF_coal <- impact_factors[7,7]
dh_nox_IF_gas <- impact_factors[8,7]
dh_nox_IF_oil <- impact_factors[9,7]
dh_nox_IF_wood <- impact_factors[10,7]

#PM2.5 Domestic Heat Impact Factors
dh_pm25_IF_coal <- impact_factors[7,6]
dh_pm25_IF_gas <- impact_factors[8,6]
dh_pm25_IF_oil <- impact_factors[9,6]
dh_pm25_IF_wood <- impact_factors[10,6]

#################################################################################################

# Building Heating Emission and Impact Factors
# Public and Commercial Heat CO2 Emission Factors
ph_co2_EF_coal_boiler <- pub_heat_EFs[1,2]
ph_co2_EF_fueloil_boiler <- pub_heat_EFs[2,2]
ph_co2_EF_gas_boiler <- pub_heat_EFs[3,2]
ph_co2_EF_biomass_boiler <- pub_heat_EFs[4,2]
ph_co2_EF_hydrogen_natgas_boiler <- pub_heat_EFs[5,2]
ph_co2_EF_hydrogen_boiler <- pub_heat_EFs[6,2]

# Public and Commercial Heat NOx Emission Factors
ph_nox_EF_coal_boiler <- pub_heat_EFs[1,3]
ph_nox_EF_fueloil_boiler <- pub_heat_EFs[2,3]
ph_nox_EF_gas_boiler <- pub_heat_EFs[3,3]
ph_nox_EF_biomass_boiler <- pub_heat_EFs[4,3]
ph_nox_EF_hydrogen_natgas_boiler <- pub_heat_EFs[5,3]
ph_nox_EF_hydrogen_boiler <- pub_heat_EFs[6,3]

# Public and Commercial Heat PM2.5 Emission Factors
ph_pm25_EF_coal_boiler <- pub_heat_EFs[1,4]
ph_pm25_EF_fueloil_boiler <- pub_heat_EFs[2,4]
ph_pm25_EF_gas_boiler <- pub_heat_EFs[3,4]
ph_pm25_EF_biomass_boiler <- pub_heat_EFs[4,4]
ph_pm25_EF_hydrogen_natgas_boiler <- pub_heat_EFs[5,4]
ph_pm25_EF_hydrogen_boiler <- pub_heat_EFs[6,4]

#pNOx Public and Commercial Heat Impact Factors
ph_nox_IF_public <- impact_factors[11,7]

#PM2.5 Public and Commercial Heat Impact Factors
ph_pm25_IF_public <- impact_factors[11,6]

#################################################################################################

# Industrial Combustion Emission and Impact Factors
# Iron and Steel CO2 Emission Factors
ironsteel_co2_EF_coal <- ind_com_EFs[1,3]
ironsteel_co2_EF_coke <- ind_com_EFs[2,3]
ironsteel_co2_EF_fueloil <- ind_com_EFs[3,3]
ironsteel_co2_EF_gasoil <- ind_com_EFs[4,3]
ironsteel_co2_EF_lpg <- ind_com_EFs[5,3]
ironsteel_co2_EF_gas <- ind_com_EFs[6,3]
ironsteel_co2_EF_hydrogen <- ind_com_EFs[7,3]
ironsteel_co2_EF_biomass <- ind_com_EFs[8,3]

# Iron and Steel NOx Emission Factors
ironsteel_nox_EF_coal <- ind_com_EFs[1,4]
ironsteel_nox_EF_coke <- ind_com_EFs[2,4]
ironsteel_nox_EF_fueloil <- ind_com_EFs[3,4]
ironsteel_nox_EF_gasoil <- ind_com_EFs[4,4]
ironsteel_nox_EF_lpg <- ind_com_EFs[5,4]
ironsteel_nox_EF_gas <- ind_com_EFs[6,4]
ironsteel_nox_EF_hydrogen <- ind_com_EFs[7,4]
ironsteel_nox_EF_biomass <- ind_com_EFs[8,4]

# Iron and Steel PM2.5 Emission Factors
ironsteel_pm25_EF_coal <- ind_com_EFs[1,5]
ironsteel_pm25_EF_coke <- ind_com_EFs[2,5]
ironsteel_pm25_EF_fueloil <- ind_com_EFs[3,5]
ironsteel_pm25_EF_gasoil <- ind_com_EFs[4,5]
ironsteel_pm25_EF_lpg <- ind_com_EFs[5,5]
ironsteel_pm25_EF_gas <- ind_com_EFs[6,5]
ironsteel_pm25_EF_hydrogen <- ind_com_EFs[7,5]
ironsteel_pm25_EF_biomass <- ind_com_EFs[8,5]

# Iron and Steel Impact Factors
ironsteel_nox_IF <- impact_factors[14,7]
ironsteel_pm25_IF <- impact_factors[14,6]

#################################################################################################

# Hydrogen Production Emission Factors and Impact Factors
# Hydrogen CO2 Emission Factors
hyd_prod_co2_EF_grey <- hyd_prod_EFs[1,4]
hyd_prod_co2_EF_blue <- hyd_prod_EFs[2,4]
hyd_prod_co2_EF_blueFGR <- hyd_prod_EFs[3,4]
hyd_prod_co2_EF_biomass_gasification <- hyd_prod_EFs[4,4]

# Hydrogen NOx Emission Factors
hyd_prod_nox_EF_grey <- hyd_prod_EFs[1,6]
hyd_prod_nox_EF_blue <- hyd_prod_EFs[2,6]
hyd_prod_nox_EF_blueFGR <- hyd_prod_EFs[3,6]
hyd_prod_nox_EF_biomass_gasification <- hyd_prod_EFs[4,6]

# Hydrogen PM2.5 Emission Factors
hyd_prod_pm25_EF_grey <- hyd_prod_EFs[1,7]
hyd_prod_pm25_EF_blue <- hyd_prod_EFs[2,7]
hyd_prod_pm25_EF_blueFGR <- hyd_prod_EFs[3,7]
hyd_prod_pm25_EF_biomass_gasification <- hyd_prod_EFs[4,7]


# Hydrogen production Impact Factors - Using small_power_gas as a proxy!
hyd_prod_nox_IF_Gas <- impact_factors[1,7]
hyd_prod_pm25_IF_Gas <- impact_factors[1,6]




# Reading in and rotating elec gen CSV
elec_data <-  read.csv('C:/Users/ab22/Desktop/CAPSAM_CSVs/Elec_Template_Run.csv', fileEncoding='UTF-8-BOM', header=FALSE)
colnames = as.character(elec_data[ , 1])
elec_data = data.frame(t(elec_data[ , -1]))
colnames(elec_data) = colnames
data$Sum <- rowSums(elec_data[, 2:16], na.rm = TRUE)


# Copy of elec gen CSV dataset for co2, nox and pm2.5 emissions datasets
df_elec_co2_emissions <- (data[ ,1:9])
df_elec_nox_emissions <- (data[ ,1:9])
df_elec_pm25_emissions <- (data[ ,1:9])


# Creating CO2 emissions using column names of each source  
df_elec_co2_emissions$Biomass <- df_elec_co2_emissions$Biomass * elec_co2_EF_Biomass
df_elec_co2_emissions$BECCS <- df_elec_co2_emissions$BECCS * elec_co2_EF_BECCS
df_elec_co2_emissions$Gas <- df_elec_co2_emissions$Gas * elec_co2_EF_Gas
df_elec_co2_emissions$`Gas CCS` <- df_elec_co2_emissions$`Gas CCS` * elec_co2_EF_GasCCS
df_elec_co2_emissions$Hydrogen <- df_elec_co2_emissions$Hydrogen * elec_co2_EF_Hydrogen
df_elec_co2_emissions$Coal <- df_elec_co2_emissions$Coal * elec_co2_EF_Coal
df_elec_co2_emissions$Waste <- df_elec_co2_emissions$Waste * elec_co2_EF_Waste
df_elec_co2_emissions$`Other thermal` <- df_elec_co2_emissions$`Other thermal` * elec_co2_EF_OtherThermal
df_elec_co2_emissions$`Total Emissions` <- rowSums(df_elec_co2_emissions[,2:9], na.rm = TRUE)


# Creating NOx emissions using column names of each source  
df_elec_nox_emissions$Biomass <- df_elec_nox_emissions$Biomass * elec_nox_EF_Biomass
df_elec_nox_emissions$BECCS <- df_elec_nox_emissions$BECCS * elec_nox_EF_BECCS
df_elec_nox_emissions$Gas <- df_elec_nox_emissions$Gas * elec_nox_EF_Gas
df_elec_nox_emissions$`Gas CCS` <- df_elec_nox_emissions$`Gas CCS` * elec_nox_EF_GasCCS
df_elec_nox_emissions$Hydrogen <- df_elec_nox_emissions$Hydrogen * elec_nox_EF_Hydrogen
df_elec_nox_emissions$Coal <- df_elec_nox_emissions$Coal * elec_nox_EF_Coal
df_elec_nox_emissions$Waste <- df_elec_nox_emissions$Waste * elec_nox_EF_Waste
df_elec_nox_emissions$`Other thermal` <- df_elec_nox_emissions$`Other thermal` * elec_nox_EF_OtherThermal
df_elec_nox_emissions$`Total Emissions` <- rowSums(df_elec_nox_emissions[, 2:9], na.rm = TRUE)

# Creating PM2.5 emissions using column names of each source  
df_elec_pm25_emissions$Biomass <- df_elec_pm25_emissions$Biomass * elec_pm25_EF_Biomass
df_elec_pm25_emissions$BECCS <- df_elec_pm25_emissions$BECCS * elec_pm25_EF_BECCS
df_elec_pm25_emissions$Gas <- df_elec_pm25_emissions$Gas * elec_pm25_EF_Gas
df_elec_pm25_emissions$`Gas CCS` <- df_elec_pm25_emissions$`Gas CCS` * elec_pm25_EF_GasCCS
df_elec_pm25_emissions$Hydrogen <- df_elec_pm25_emissions$Hydrogen * elec_pm25_EF_Hydrogen
df_elec_pm25_emissions$Coal <- df_elec_pm25_emissions$Coal * elec_pm25_EF_Coal
df_elec_pm25_emissions$Waste <- df_elec_pm25_emissions$Waste * elec_pm25_EF_Waste
df_elec_pm25_emissions$`Other thermal` <- df_elec_pm25_emissions$`Other thermal` * elec_pm25_EF_OtherThermal
df_elec_pm25_emissions$`Total Emissions` <- rowSums(df_elec_pm25_emissions[, 2:9], na.rm = TRUE)
     

# Plotting Emissions by emissions source in stacked area chart - not including total
# Need to change data from wide, vertical format to long (e.g., with Years constant and variable by Source - effectively two columns)

long_df_elec_co2_emissions <- melt(df_elec_co2_emissions[, 1:9], id.vars = "Year", na.rm = TRUE)

interactive_elec_co2_emissions <- long_df_elec_co2_emissions %>% 
  ggplot( aes(Year, value, fill = variable, text = variable)) +
  geom_area() +
  scale_fill_viridis(discrete = TRUE) +
  theme_ipsum() +
  labs(y = "Emissions (kt)")
interactive_elec_co2_emissions <- ggplotly(interactive_elec_co2_emissions, tooltip = "text")
interactive_elec_co2_emissions


long_df_elec_nox_emissions <- melt(df_elec_nox_emissions[, 1:9], id.vars = "Year", na.rm = TRUE)
interactive_elec_nox_emissions <- long_df_elec_nox_emissions %>% 
  ggplot( aes(Year, value, fill = variable, text = variable)) +
  geom_area() +
  scale_fill_viridis(discrete = TRUE) +
  theme_ipsum() +
  labs(y = "Emissions (kt)")
interactive_elec_nox_emissions <- ggplotly(interactive_elec_nox_emissions, tooltip = "text")
interactive_elec_nox_emissions

long_df_elec_pm25_emissions <- melt(df_elec_pm25_emissions[, 1:9], id.vars = "Year", na.rm = TRUE)
interactive_elec_pm25_emissions <- long_df_elec_pm25_emissions %>% 
  ggplot( aes(Year, value, fill = variable, text = variable)) +
  geom_area() +
  scale_fill_viridis(discrete = TRUE) +
  theme_ipsum() +
  labs(y = "Emissions (kt)")
interactive_elec_pm25_emissions <- ggplotly(interactive_elec_pm25_emissions, tooltip = "text")
interactive_elec_pm25_emissions



###############################################################################################


# Producing PWMC Impacts using UK-to-UK impact factors 
# Copying - may not need to include new Sums table as could be carried over?
df_elec_nox_impacts <- df_elec_nox_emissions[,1:9]
df_elec_pm25_impacts <- df_elec_pm25_emissions[,1:9]

# pNOx Impacts from electricity generation
df_elec_nox_impacts$Biomass <- df_elec_nox_impacts$Biomass * elec_nox_IF_Other
df_elec_nox_impacts$BECCS <- df_elec_nox_impacts$BECCS * elec_nox_IF_Other
df_elec_nox_impacts$Gas <- df_elec_nox_impacts$Gas * elec_nox_IF_Gas
df_elec_nox_impacts$`Gas CCS` <- df_elec_nox_impacts$`Gas CCS` * elec_nox_IF_Gas
df_elec_nox_impacts$Hydrogen <- df_elec_nox_impacts$Hydrogen * elec_nox_IF_Gas
df_elec_nox_impacts$Coal <- df_elec_nox_impacts$Coal * elec_nox_IF_Other
df_elec_nox_impacts$Waste <- df_elec_nox_impacts$Waste * elec_nox_IF_Other
df_elec_nox_impacts$`Other thermal` <- df_elec_nox_impacts$`Other thermal` * elec_nox_IF_Other
df_elec_nox_impacts$`Total Impact` <- rowSums(df_elec_nox_impacts[, 2:9], na.rm = TRUE) 


# PM2,5 Impacts from electricity generation
df_elec_pm25_impacts$Biomass <- df_elec_pm25_impacts$Biomass * elec_pm25_IF_Other
df_elec_pm25_impacts$BECCS <- df_elec_pm25_impacts$BECCS * elec_pm25_IF_Other
df_elec_pm25_impacts$Gas <- df_elec_pm25_impacts$Gas * elec_pm25_IF_Gas
df_elec_pm25_impacts$`Gas CCS` <- df_elec_pm25_impacts$`Gas CCS` * elec_pm25_IF_Gas
df_elec_pm25_impacts$Hydrogen <- df_elec_pm25_impacts$Hydrogen * elec_pm25_IF_Gas
df_elec_pm25_impacts$Coal <- df_elec_pm25_impacts$Coal * elec_pm25_IF_Other
df_elec_pm25_impacts$Waste <- df_elec_pm25_impacts$Waste * elec_pm25_IF_Other
df_elec_pm25_impacts$`Other thermal` <- df_elec_pm25_impacts$`Other thermal` * elec_pm25_IF_Other
df_elec_pm25_impacts$`Total Impact` <- rowSums(df_elec_pm25_impacts[, 2:9], na.rm = TRUE)


###############################################################################################

# Applying electricity generation sum to the PWMC impacts

df_elec_nox_impacts_per_Unit <- df_elec_nox_impacts[, 1:9]
df_elec_pm25_impacts_per_Unit <- df_elec_pm25_impacts[, 1:9]

# pNOx Impacts from electricity generation
df_elec_nox_impacts_per_Unit$Biomass <- df_elec_nox_impacts_per_Unit$Biomass / data$Sum
df_elec_nox_impacts_per_Unit$BECCS <- df_elec_nox_impacts_per_Unit$BECCS / data$Sum
df_elec_nox_impacts_per_Unit$Gas <- df_elec_nox_impacts_per_Unit$Gas / data$Sum
df_elec_nox_impacts_per_Unit$`Gas CCS` <- df_elec_nox_impacts_per_Unit$`Gas CCS` / data$Sum
df_elec_nox_impacts_per_Unit$Hydrogen <- df_elec_nox_impacts_per_Unit$Hydrogen / data$Sum
df_elec_nox_impacts_per_Unit$Coal <- df_elec_nox_impacts_per_Unit$Coal / data$Sum
df_elec_nox_impacts_per_Unit$Waste <- df_elec_nox_impacts_per_Unit$Waste / data$Sum
df_elec_nox_impacts_per_Unit$`Other thermal` <- df_elec_nox_impacts_per_Unit$`Other thermal` / data$Sum
df_elec_nox_impacts_per_Unit$`Total Impact per Unit Energy` <- rowSums(df_elec_nox_impacts_per_Unit[, 2:9], na.rm = TRUE) 


# PM2.5 Impacts from electricity generation
df_elec_pm25_impacts_per_Unit$Biomass <- df_elec_pm25_impacts_per_Unit$Biomass / data$Sum
df_elec_pm25_impacts_per_Unit$BECCS <- df_elec_pm25_impacts_per_Unit$BECCS / data$Sum
df_elec_pm25_impacts_per_Unit$Gas <- df_elec_pm25_impacts_per_Unit$Gas / data$Sum
df_elec_pm25_impacts_per_Unit$`Gas CCS` <- df_elec_pm25_impacts_per_Unit$`Gas CCS` / data$Sum
df_elec_pm25_impacts_per_Unit$Hydrogen <- df_elec_pm25_impacts_per_Unit$Hydrogen / data$Sum
df_elec_pm25_impacts_per_Unit$Coal <- df_elec_pm25_impacts_per_Unit$Coal / data$Sum
df_elec_pm25_impacts_per_Unit$Waste <- df_elec_pm25_impacts_per_Unit$Waste / data$Sum
df_elec_pm25_impacts_per_Unit$`Other thermal` <- df_elec_pm25_impacts_per_Unit$`Other thermal` / data$Sum
df_elec_pm25_impacts_per_Unit$`Total Impact per Unit Energy` <- rowSums(df_elec_pm25_impacts_per_Unit[, 2:9], na.rm = TRUE) 



dh_data <- read.csv("C:/Users/ab22/OneDrive - Imperial College London/Second Year Thesis/CAPSAM_CSVs/DomHeat_Template_Run_FullData.csv", fileEncoding='UTF-8-BOM', header = FALSE)

colnames = as.character(dh_data[ , 1])
dh_data = data.frame(t(dh_data[ , -1]))
colnames(dh_data) = colnames
dh_data$Sum <- rowSums(dh_data[ , 2:28], na.rm = TRUE)
dh_data$Year <- format(dh_data$Year, 0)

df_dh_co2_emissions <- dh_data[, 1:17]

df_dh_co2_emissions$`Biofuel Boiler` <- df_dh_co2_emissions$`Biofuel Boiler` * dh_co2_EF_gasoil_boiler
df_dh_co2_emissions$`ASHP + Biofuel Boiler (Biofuel)` <- df_dh_co2_emissions$`ASHP + Biofuel Boiler (Biofuel)` * dh_co2_EF_gasoil_boiler
df_dh_co2_emissions$`Biomass Boiler` <- df_dh_co2_emissions$`Biomass Boiler` * dh_co2_EF_woodpellet_boiler
df_dh_co2_emissions$`Biomass CHP` <- df_dh_co2_emissions$`Biomass CHP` * ph_co2_EF_biomass_boiler
df_dh_co2_emissions$`District Heating (Biomass)` <- df_dh_co2_emissions$`District Heating (Biomass)` * ph_co2_EF_biomass_boiler
df_dh_co2_emissions$`District Heating (Biomethane)` <- df_dh_co2_emissions$`District Heating (Biomethane)` * ph_co2_EF_gas_boiler
df_dh_co2_emissions$`District Heating (Gas)` <- df_dh_co2_emissions$`District Heating (Gas)` * ph_co2_EF_gas_boiler
df_dh_co2_emissions$`Gas Boiler` <- df_dh_co2_emissions$`Gas Boiler` * dh_co2_EF_gas_boiler
df_dh_co2_emissions$`Gas CHP` <- df_dh_co2_emissions$`Gas CHP` * ph_co2_EF_gas_boiler
df_dh_co2_emissions$`District Heating (Hydrogen)` <- df_dh_co2_emissions$`District Heating (Hydrogen)` * ph_co2_EF_hydrogen_boiler
df_dh_co2_emissions$`Gas Boiler - H2-NG Blend` <- df_dh_co2_emissions$`Gas Boiler - H2-NG Blend` * dh_co2_EF_hydrogen_natgas_boiler
df_dh_co2_emissions$`Gas CHP - H2-NG Blend` <- df_dh_co2_emissions$`Gas CHP - H2-NG Blend` * ph_co2_EF_hydrogen_natgas_boiler
df_dh_co2_emissions$`ASHP + Hydrogen Boiler (Hydrogen)` <- df_dh_co2_emissions$`ASHP + Hydrogen Boiler (Hydrogen)` * dh_co2_EF_hydrogen_boiler
df_dh_co2_emissions$`Hydrogen Boiler` <- df_dh_co2_emissions$`Hydrogen Boiler` * dh_co2_EF_hydrogen_boiler
df_dh_co2_emissions$`Oil Boiler` <- df_dh_co2_emissions$`Oil Boiler` * dh_co2_EF_gasoil_boiler
df_dh_co2_emissions$`Community Heating` <- df_dh_co2_emissions$`Community Heating` * ph_co2_EF_fueloil_boiler
df_dh_co2_emissions$`Total Emissions` <- rowSums(df_dh_co2_emissions[, 2:17], na.rm = TRUE)


long_df_dh_co2_emissions <- melt(df_dh_co2_emissions[, 1:17], id.vars = "Year", variable.name = "Source", value.name = "Emissions", na.rm = TRUE)

ggplot(long_df_dh_co2_emissions, aes(Year, Emissions, group = Source, col = Source)) +
         geom_line() + 
         labs(y = "CO2 Emissions (kt)")





# Industry Test



ind_data <- read.csv("C:/Users/ab22/OneDrive - Imperial College London/Second Year Thesis/CAPSAM_CSVs/Industry_Template_Run_FullData.csv", header = FALSE)


colnames = as.character(ind_data[ , 1])
ind_data = data.frame(t(ind_data[ , -1]))
colnames(ind_data) = colnames

ironsteel_data <- ind_data[,1:6]
ironsteel_data$Sum <- rowSums(ironsteel_data[,2:6], na.rm = TRUE)
ironsteel_data$Year <- format(ironsteel_data$Year, 0)


ironsteel_co2_emissions <- ironsteel_data[, c(1,3:6)]

ironsteel_co2_emissions$`Iron and steel - Natural Gas` <- ironsteel_co2_emissions$`Iron and steel - Natural Gas` * ironsteel_co2_EF_gas
ironsteel_co2_emissions$`Iron and steel - Hydrogen` <- ironsteel_co2_emissions$`Iron and steel - Hydrogen` * ironsteel_co2_EF_hydrogen
ironsteel_co2_emissions$`Iron and steel - Oil/Petroleum` <- ironsteel_co2_emissions$`Iron and steel - Oil/Petroleum` * ironsteel_co2_EF_fueloil
ironsteel_co2_emissions$`Iron and steel - Bioenergy/Other` <- ironsteel_co2_emissions$`Iron and steel - Bioenergy/Other` * ironsteel_co2_EF_biomass
ironsteel_co2_emissions$`Total Emissions` <- rowSums(ironsteel_co2_emissions[ , 2:5], na.rm = TRUE)

long_ironsteel_co2_emissions <- melt(ironsteel_co2_emissions[ , 1:5], id.vars = "Year", variable.name = "Source", value.name = "Emissions", na.rm = TRUE)

ggplot(long_ironsteel_co2_emissions, aes(Year, Emissions, group = Source, col = Source)) +
         geom_line() +
         theme(axis.text.x = element_text(angle = 90, hjust = 0.35, vjust = 0.35)) +
         labs(y = "CO2 Emissions (kt)")































###############################################################################

# Hydrogen AQIs Test Run

hyd_data <- read.csv("C:/Users/ab22/OneDrive - Imperial College London/Second Year Thesis/CAPSAM_CSVs/Hydrogen_Template_Run.csv", fileEncoding='UTF-8-BOM', header = FALSE)

colnames = as.character(hyd_data[ , 1])
hyd_data = data.frame(t(hyd_data[ , -1]))
colnames(hyd_data) = colnames
hyd_data$Sum <- rowSums(hyd_data[ , 2:7], na.rm = TRUE)
hyd_data$Year <- format(hyd_data$Year, 0)

hyd_co2_emissions <- hyd_data[ , c(1:4)]
hyd_co2_emissions$`Methane Reformation with CCUS (Blue)` <- (hyd_co2_emissions$`Methane Reformation with CCUS (Blue)` * hyd_prod_co2_EF_blue)/(hyd_data$Sum)
hyd_co2_emissions$`Biomass Gasification` <- (hyd_co2_emissions$`Biomass Gasification` * hyd_prod_co2_EF_biomass_gasification)/(hyd_data$Sum)
hyd_co2_emissions$`Methane Reformation (Grey)` <- (hyd_co2_emissions$`Methane Reformation (Grey)` * hyd_prod_co2_EF_grey)/(hyd_data$Sum)
hyd_co2_emissions$`Total Emissions per TWh` <- rowSums(hyd_co2_emissions[ , 2:4], na.rm = TRUE)

long_hyd_co2_emissions <- melt(hyd_co2_emissions[ , 1:4], id.vars = "Year", variable.name = "Source", value.name = "Emissions", na.rm = TRUE)

hyd_nox_impacts <- hyd_data[ , 1:4]
hyd_nox_impacts$`Methane Reformation with CCUS (Blue)` <- (hyd_nox_impacts$`Methane Reformation with CCUS (Blue)` * hyd_prod_nox_EF_blue * hyd_prod_nox_IF_Gas)/(hyd_data$Sum)
hyd_nox_impacts$`Biomass Gasification` <- (hyd_nox_impacts$`Biomass Gasification` * hyd_prod_nox_EF_biomass_gasification * hyd_prod_nox_IF_Gas)/(hyd_data$Sum)
hyd_nox_impacts$`Methane Reformation (Grey)` <- (hyd_nox_impacts$`Methane Reformation (Grey)` * hyd_prod_nox_EF_grey * hyd_prod_nox_IF_Gas)/(hyd_data$Sum)
hyd_nox_impacts$`Total Impact per TWh` <- rowSums(hyd_nox_impacts[ , 2:4], na.rm = TRUE)

long_hyd_nox_impacts <- melt(hyd_nox_impacts[ , 1:4], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)


hyd_pm25_impacts <- hyd_data[ , 1:4]
hyd_pm25_impacts$`Methane Reformation with CCUS (Blue)` <- (hyd_pm25_impacts$`Methane Reformation with CCUS (Blue)` * hyd_prod_pm25_EF_blue * hyd_prod_pm25_IF_Gas)/(hyd_data$Sum)
hyd_pm25_impacts$`Biomass Gasification` <- (hyd_pm25_impacts$`Biomass Gasification` * hyd_prod_pm25_EF_biomass_gasification * hyd_prod_pm25_IF_Gas)/(hyd_data$Sum)
hyd_pm25_impacts$`Methane Reformation (Grey)` <- (hyd_pm25_impacts$`Methane Reformation (Grey)` * hyd_prod_pm25_EF_grey * hyd_prod_pm25_IF_Gas)/(hyd_data$Sum)
hyd_pm25_impacts$`Total Impact per TWh` <- rowSums(hyd_pm25_impacts[ , 2:4], na.rm = TRUE)


long_hyd_pm25_impacts <- melt(hyd_pm25_impacts[ , 1:4], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)


########################################################################################################################################################################

dh_data <- read.csv("C:/Users/ab22/OneDrive - Imperial College London/Second Year Thesis/CAPSAM_CSVs/DomHeat_Template_Run_FullData.csv", fileEncoding='UTF-8-BOM', header = FALSE)

colnames = as.character(dh_data[ , 1])
dh_data = data.frame(t(dh_data[ , -1]))
colnames(dh_data) = colnames
dh_data$Sum <- rowSums(dh_data[ , 2:28], na.rm = TRUE)
dh_data$Year <- format(dh_data$Year, 0)



df_dh_co2_emissions <- dh_data[, 1:17]

df_dh_co2_emissions$`Biofuel Boiler` <- (df_dh_co2_emissions$`Biofuel Boiler` * dh_co2_EF_gasoil_boiler)/(dh_data$Sum)
df_dh_co2_emissions$`ASHP + Biofuel Boiler (Biofuel)` <- (df_dh_co2_emissions$`ASHP + Biofuel Boiler (Biofuel)` * dh_co2_EF_gasoil_boiler)/(dh_data$Sum)
df_dh_co2_emissions$`Biomass Boiler` <- (df_dh_co2_emissions$`Biomass Boiler` * dh_co2_EF_woodpellet_boiler)/(dh_data$Sum)
df_dh_co2_emissions$`Biomass CHP` <- (df_dh_co2_emissions$`Biomass CHP` * ph_co2_EF_biomass_boiler)/(dh_data$Sum)
df_dh_co2_emissions$`District Heating (Biomass)` <- (df_dh_co2_emissions$`District Heating (Biomass)` * ph_co2_EF_biomass_boiler)/(dh_data$Sum)
df_dh_co2_emissions$`District Heating (Biomethane)` <- (df_dh_co2_emissions$`District Heating (Biomethane)` * ph_co2_EF_gas_boiler)/(dh_data$Sum)
df_dh_co2_emissions$`District Heating (Gas)` <- (df_dh_co2_emissions$`District Heating (Gas)` * ph_co2_EF_gas_boiler)/(dh_data$Sum)
df_dh_co2_emissions$`Gas Boiler` <- (df_dh_co2_emissions$`Gas Boiler` * dh_co2_EF_gas_boiler)/(dh_data$Sum)
df_dh_co2_emissions$`Gas CHP` <- (df_dh_co2_emissions$`Gas CHP` * ph_co2_EF_gas_boiler)/(dh_data$Sum)
df_dh_co2_emissions$`District Heating (Hydrogen)` <- (df_dh_co2_emissions$`District Heating (Hydrogen)` * ph_co2_EF_hydrogen_boiler)/(dh_data$Sum)
df_dh_co2_emissions$`Gas Boiler - H2-NG Blend` <- (df_dh_co2_emissions$`Gas Boiler - H2-NG Blend` * dh_co2_EF_hydrogen_natgas_boiler)/(dh_data$Sum)
df_dh_co2_emissions$`Gas CHP - H2-NG Blend` <- (df_dh_co2_emissions$`Gas CHP - H2-NG Blend` * ph_co2_EF_hydrogen_natgas_boiler)/(dh_data$Sum)
df_dh_co2_emissions$`ASHP + Hydrogen Boiler (Hydrogen)` <- (df_dh_co2_emissions$`ASHP + Hydrogen Boiler (Hydrogen)` * dh_co2_EF_hydrogen_boiler)/(dh_data$Sum)
df_dh_co2_emissions$`Hydrogen Boiler` <- (df_dh_co2_emissions$`Hydrogen Boiler` * dh_co2_EF_hydrogen_boiler)/(dh_data$Sum)
df_dh_co2_emissions$`Oil Boiler` <- (df_dh_co2_emissions$`Oil Boiler` * dh_co2_EF_gasoil_boiler)/(dh_data$Sum)
df_dh_co2_emissions$`Community Heating` <- (df_dh_co2_emissions$`Community Heating` * ph_co2_EF_fueloil_boiler)/(dh_data$Sum)
df_dh_co2_emissions$`Total Emissions per TWh` <- rowSums(df_dh_co2_emissions[, 2:17], na.rm = TRUE)
long_df_dh_co2_emissions <- melt(df_dh_co2_emissions[, 1:17], id.vars = "Year", variable.name = "Source", value.name = "Emissions", na.rm = TRUE)



df_dh_nox_impacts <- dh_data[, 1:17]

df_dh_nox_impacts$`Biofuel Boiler` <- (df_dh_nox_impacts$`Biofuel Boiler` * dh_nox_EF_gasoil_boiler * dh_nox_IF_oil)/(dh_data$Sum)
df_dh_nox_impacts$`ASHP + Biofuel Boiler (Biofuel)` <- (df_dh_nox_impacts$`ASHP + Biofuel Boiler (Biofuel)` * dh_nox_EF_gasoil_boiler * dh_nox_IF_oil)/(dh_data$Sum)
df_dh_nox_impacts$`Biomass Boiler` <- (df_dh_nox_impacts$`Biomass Boiler` * dh_nox_EF_woodpellet_boiler * dh_nox_IF_wood)/(dh_data$Sum)
df_dh_nox_impacts$`Biomass CHP` <- (df_dh_nox_impacts$`Biomass CHP` * ph_nox_EF_biomass_boiler * ph_nox_IF_public)/(dh_data$Sum)
df_dh_nox_impacts$`District Heating (Biomass)` <- (df_dh_nox_impacts$`District Heating (Biomass)` * ph_nox_EF_biomass_boiler * ph_nox_IF_public)/(dh_data$Sum)
df_dh_nox_impacts$`District Heating (Biomethane)` <- (df_dh_nox_impacts$`District Heating (Biomethane)` * ph_nox_EF_gas_boiler * ph_nox_IF_public)/(dh_data$Sum)
df_dh_nox_impacts$`District Heating (Gas)` <- (df_dh_nox_impacts$`District Heating (Gas)` * ph_nox_EF_gas_boiler * ph_nox_IF_public)/(dh_data$Sum)
df_dh_nox_impacts$`Gas Boiler` <- (df_dh_nox_impacts$`Gas Boiler` * dh_nox_EF_gas_boiler * dh_nox_IF_gas)/(dh_data$Sum)
df_dh_nox_impacts$`Gas CHP` <- (df_dh_nox_impacts$`Gas CHP` * ph_nox_EF_gas_boiler * ph_nox_IF_public)/(dh_data$Sum)
df_dh_nox_impacts$`District Heating (Hydrogen)` <- (df_dh_nox_impacts$`District Heating (Hydrogen)` * ph_nox_EF_hydrogen_boiler * ph_nox_IF_public)/(dh_data$Sum)
df_dh_nox_impacts$`Gas Boiler - H2-NG Blend` <- (df_dh_nox_impacts$`Gas Boiler - H2-NG Blend` * dh_nox_EF_hydrogen_natgas_boiler * dh_nox_IF_gas)/(dh_data$Sum)
df_dh_nox_impacts$`Gas CHP - H2-NG Blend` <- (df_dh_nox_impacts$`Gas CHP - H2-NG Blend` * ph_nox_EF_hydrogen_natgas_boiler * ph_nox_IF_public)/(dh_data$Sum)
df_dh_nox_impacts$`ASHP + Hydrogen Boiler (Hydrogen)` <- (df_dh_nox_impacts$`ASHP + Hydrogen Boiler (Hydrogen)` * dh_nox_EF_hydrogen_boiler * dh_nox_IF_gas)/(dh_data$Sum)
df_dh_nox_impacts$`Hydrogen Boiler` <- (df_dh_nox_impacts$`Hydrogen Boiler` * dh_nox_EF_hydrogen_boiler * dh_nox_IF_gas)/(dh_data$Sum)
df_dh_nox_impacts$`Oil Boiler` <- (df_dh_nox_impacts$`Oil Boiler` * dh_nox_EF_gasoil_boiler * dh_nox_IF_oil)/(dh_data$Sum)
df_dh_nox_impacts$`Community Heating` <- (df_dh_nox_impacts$`Community Heating` * ph_nox_EF_fueloil_boiler * ph_nox_IF_public)/(dh_data$Sum)
df_dh_nox_impacts$`Total Impact per TWh` <- rowSums(df_dh_nox_impacts[, 2:17], na.rm = TRUE)



df_dh_pm25_impacts <- dh_data[, 1:17]

df_dh_pm25_impacts$`Biofuel Boiler` <- (df_dh_pm25_impacts$`Biofuel Boiler` * dh_pm25_EF_gasoil_boiler * dh_pm25_IF_oil)/(dh_data$Sum)
df_dh_pm25_impacts$`ASHP + Biofuel Boiler (Biofuel)` <- (df_dh_pm25_impacts$`ASHP + Biofuel Boiler (Biofuel)` * dh_pm25_EF_gasoil_boiler * dh_pm25_IF_oil)/(dh_data$Sum)
df_dh_pm25_impacts$`Biomass Boiler` <- (df_dh_pm25_impacts$`Biomass Boiler` * dh_pm25_EF_woodpellet_boiler * dh_pm25_IF_wood)/(dh_data$Sum)
df_dh_pm25_impacts$`Biomass CHP` <- (df_dh_pm25_impacts$`Biomass CHP` * ph_pm25_EF_biomass_boiler * ph_pm25_IF_public)/(dh_data$Sum)
df_dh_pm25_impacts$`District Heating (Biomass)` <- (df_dh_pm25_impacts$`District Heating (Biomass)` * ph_pm25_EF_biomass_boiler * ph_pm25_IF_public)/(dh_data$Sum)
df_dh_pm25_impacts$`District Heating (Biomethane)` <- (df_dh_pm25_impacts$`District Heating (Biomethane)` * ph_pm25_EF_gas_boiler * ph_pm25_IF_public)/(dh_data$Sum)
df_dh_pm25_impacts$`District Heating (Gas)` <- (df_dh_pm25_impacts$`District Heating (Gas)` * ph_pm25_EF_gas_boiler * ph_pm25_IF_public)/(dh_data$Sum)
df_dh_pm25_impacts$`Gas Boiler` <- (df_dh_pm25_impacts$`Gas Boiler` * dh_pm25_EF_gas_boiler * dh_pm25_IF_gas)/(dh_data$Sum)
df_dh_pm25_impacts$`Gas CHP` <- (df_dh_pm25_impacts$`Gas CHP` * ph_pm25_EF_gas_boiler * ph_pm25_IF_public)/(dh_data$Sum)
df_dh_pm25_impacts$`District Heating (Hydrogen)` <- (df_dh_pm25_impacts$`District Heating (Hydrogen)` * ph_pm25_EF_hydrogen_boiler * ph_pm25_IF_public)/(dh_data$Sum)
df_dh_pm25_impacts$`Gas Boiler - H2-NG Blend` <- (df_dh_pm25_impacts$`Gas Boiler - H2-NG Blend` * dh_pm25_EF_hydrogen_natgas_boiler * dh_pm25_IF_gas)/(dh_data$Sum)
df_dh_pm25_impacts$`Gas CHP - H2-NG Blend` <- (df_dh_pm25_impacts$`Gas CHP - H2-NG Blend` * ph_pm25_EF_hydrogen_natgas_boiler * ph_pm25_IF_public)/(dh_data$Sum)
df_dh_pm25_impacts$`ASHP + Hydrogen Boiler (Hydrogen)` <- (df_dh_pm25_impacts$`ASHP + Hydrogen Boiler (Hydrogen)` * dh_pm25_EF_hydrogen_boiler * dh_pm25_IF_gas)/(dh_data$Sum)
df_dh_pm25_impacts$`Hydrogen Boiler` <- (df_dh_pm25_impacts$`Hydrogen Boiler` * dh_pm25_EF_hydrogen_boiler * dh_pm25_IF_gas)/(dh_data$Sum)
df_dh_pm25_impacts$`Oil Boiler` <- (df_dh_pm25_impacts$`Oil Boiler` * dh_pm25_EF_gasoil_boiler * dh_pm25_IF_oil)/(dh_data$Sum)
df_dh_pm25_impacts$`Community Heating` <- (df_dh_pm25_impacts$`Community Heating` * ph_pm25_EF_fueloil_boiler * ph_pm25_IF_public)/(dh_data$Sum)
df_dh_pm25_impacts$`Total Impact per TWh` <- rowSums(df_dh_pm25_impacts[, 2:17], na.rm = TRUE)


#######################################################################################################################################################################


ind_data <- read.csv("C:/Users/ab22/OneDrive - Imperial College London/Second Year Thesis/CAPSAM_CSVs/Industry_Template_Run_FullData.csv", header = FALSE)
colnames = as.character(ind_data[ , 1])
ind_data = data.frame(t(ind_data[ , -1]))
colnames(ind_data) = colnames
ironsteel_data <- ind_data[,1:6]
ironsteel_data$Sum <- rowSums(ironsteel_data[ ,2:6], na.rm = TRUE)
ironsteel_data$Year <- format(ironsteel_data$Year, 0)


ironsteel_co2_emissions <- ironsteel_data[, c(1,3:6)]

ironsteel_co2_emissions$`Iron and steel - Natural Gas` <- (ironsteel_co2_emissions$`Iron and steel - Natural Gas` * ironsteel_co2_EF_gas)/(ironsteel_data$Sum)
ironsteel_co2_emissions$`Iron and steel - Hydrogen` <- (ironsteel_co2_emissions$`Iron and steel - Hydrogen` * ironsteel_co2_EF_hydrogen)/(ironsteel_data$Sum)
ironsteel_co2_emissions$`Iron and steel - Oil/Petroleum` <- (ironsteel_co2_emissions$`Iron and steel - Oil/Petroleum` * ironsteel_co2_EF_fueloil)/(ironsteel_data$Sum)
ironsteel_co2_emissions$`Iron and steel - Bioenergy/Other` <- (ironsteel_co2_emissions$`Iron and steel - Bioenergy/Other` * ironsteel_co2_EF_biomass)/(ironsteel_data$Sum)
ironsteel_co2_emissions$`Total Emissions per TWh` <- rowSums(ironsteel_co2_emissions[ , 2:5], na.rm = TRUE)


ironsteel_nox_impacts <- ironsteel_data[, c(1,3:6)]

ironsteel_nox_impacts$`Iron and steel - Natural Gas` <- (ironsteel_nox_impacts$`Iron and steel - Natural Gas` * ironsteel_nox_EF_gas * ironsteel_nox_IF)/(ironsteel_data$Sum)
ironsteel_nox_impacts$`Iron and steel - Hydrogen` <- (ironsteel_nox_impacts$`Iron and steel - Hydrogen` * ironsteel_nox_EF_hydrogen * ironsteel_nox_IF)/(ironsteel_data$Sum)
ironsteel_nox_impacts$`Iron and steel - Oil/Petroleum` <- (ironsteel_nox_impacts$`Iron and steel - Oil/Petroleum` * ironsteel_nox_EF_fueloil * ironsteel_nox_IF)/(ironsteel_data$Sum)
ironsteel_nox_impacts$`Iron and steel - Bioenergy/Other` <- (ironsteel_nox_impacts$`Iron and steel - Bioenergy/Other` * ironsteel_nox_EF_biomass * ironsteel_nox_IF)/(ironsteel_data$Sum)
ironsteel_nox_impacts$`Total PWMC Impacts per TWh` <- rowSums(ironsteel_nox_impacts[ , 2:5], na.rm = TRUE)


ironsteel_pm25_impacts <- ironsteel_data[, c(1,3:6)]

ironsteel_pm25_impacts$`Iron and steel - Natural Gas` <- (ironsteel_pm25_impacts$`Iron and steel - Natural Gas` * ironsteel_pm25_EF_gas * ironsteel_pm25_IF)/(ironsteel_data$Sum)
ironsteel_pm25_impacts$`Iron and steel - Hydrogen` <- (ironsteel_pm25_impacts$`Iron and steel - Hydrogen` * ironsteel_pm25_EF_hydrogen * ironsteel_pm25_IF)/(ironsteel_data$Sum)
ironsteel_pm25_impacts$`Iron and steel - Oil/Petroleum` <- (ironsteel_pm25_impacts$`Iron and steel - Oil/Petroleum` * ironsteel_pm25_EF_fueloil * ironsteel_pm25_IF)/(ironsteel_data$Sum)
ironsteel_pm25_impacts$`Iron and steel - Bioenergy/Other` <- (ironsteel_pm25_impacts$`Iron and steel - Bioenergy/Other` * ironsteel_pm25_EF_biomass * ironsteel_pm25_IF)/(ironsteel_data$Sum)
ironsteel_pm25_impacts$`Total PWMC Impacts per TWh` <- rowSums(ironsteel_pm25_impacts[ , 2:5], na.rm = TRUE)






write.csv(hyd_co2_emissions, file = '/Users/ab22/OneDrive - Imperial College London/Second Year Thesis/Hydrogen Contract/hyd_co2_emissions.csv', row.names = FALSE)
write.csv(hyd_nox_impacts, file = '/Users/ab22/OneDrive - Imperial College London/Second Year Thesis/Hydrogen Contract/hyd_nox_impacts.csv', row.names = FALSE)
write.csv(hyd_pm25_impacts, file = '/Users/ab22/OneDrive - Imperial College London/Second Year Thesis/Hydrogen Contract/hyd_pm25_impacts.csv', row.names = FALSE)
write.csv(df_dh_co2_emissions, file = '/Users/ab22/OneDrive - Imperial College London/Second Year Thesis/Hydrogen Contract/dh_co2_emissions.csv', row.names = FALSE)
write.csv(df_dh_nox_impacts, file = '/Users/ab22/OneDrive - Imperial College London/Second Year Thesis/Hydrogen Contract/dh_nox_impacts.csv', row.names = FALSE)
write.csv(df_dh_pm25_impacts, file = '/Users/ab22/OneDrive - Imperial College London/Second Year Thesis/Hydrogen Contract/dh_pm25_impacts.csv', row.names = FALSE)
write.csv(ironsteel_co2_emissions, file = '/Users/ab22/OneDrive - Imperial College London/Second Year Thesis/Hydrogen Contract/ironsteel_co2_emissions.csv', row.names = FALSE)
write.csv(ironsteel_nox_impacts, file = '/Users/ab22/OneDrive - Imperial College London/Second Year Thesis/Hydrogen Contract/ironsteel_nox_impacts.csv', row.names = FALSE)
write.csv(ironsteel_pm25_impacts, file = '/Users/ab22/OneDrive - Imperial College London/Second Year Thesis/Hydrogen Contract/ironsteel_pm25_impacts.csv', row.names = FALSE)














