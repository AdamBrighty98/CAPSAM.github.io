library(shiny)
library(ggplot2)
library(plotly)
library(tidyverse)
library(dplyr)
library(DT)
library(reshape2)
library(viridis)
library(hrbrthemes)

# Reading in impact factors and emission factors
elec_gen_EFs <- read.csv("C:/Users/ab22/Desktop/CAPSAM_CSVs/Elec_EFs_kt_TWh.csv")
impact_factors <- read.csv("C:/Users/ab22/Desktop/CAPSAM_CSVs/UK_to_UK_IFs.csv")
dom_heat_EFs <- read.csv("C:/Users/ab22/Desktop/CAPSAM_CSVs/Res_Heat_EFs_kt_TWh.csv")
pub_heat_EFs <- read.csv("C:/Users/ab22/Desktop/CAPSAM_CSVs/Pub_Heat_EFs_kt_TWh.csv")

# Simplifying names of emission factors - setting them to recognisable names
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

#pNOx Impact Factors
elec_nox_IF_Gas <- impact_factors[1,7]
elec_nox_IF_Landfill <- impact_factors[2,7]
elec_nox_IF_Other <- impact_factors[3,7]
print(elec_nox_IF_Other)

#PM2.5 Impact Factors
elec_pm25_IF_Gas <- impact_factors[1,6]
elec_pm25_IF_Landfill <- impact_factors[2,6]
elec_pm25_IF_Other <- impact_factors[3,6]



##############################################################################


# Reading in and rotating elec gen CSV
data = read.csv('C:/Users/ab22/Desktop/CAPSAM_CSVs/Elec_Template_Run.csv', fileEncoding='UTF-8-BOM', header=FALSE)
colnames = as.character(data[ , 1])
data = data.frame(t(data[ , -1]))
colnames(data) = colnames
# Adding Sum column at end of elec data - for PWMC Impacts per Unit Energy
data$Sum <- rowSums(data[, 2:16], na.rm = TRUE)


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







