# Loading in data - all impact factors, emission factors, and assumption CSV files
elec_gen_EFs <- read.csv("C:/Users/ab22/OneDrive - Imperial College London/Second Year Thesis/CAPSAM.github.io/CAPSAM/EFs_and_IFs/Elec_EFs_kt_TWh.csv")
dom_heat_EFs <- read.csv("C:/Users/ab22/OneDrive - Imperial College London/Second Year Thesis/CAPSAM.github.io/CAPSAM/EFs_and_IFs/Res_Heat_EFs_kt_TWh.csv")
pub_heat_EFs <- read.csv("C:/Users/ab22/OneDrive - Imperial College London/Second Year Thesis/CAPSAM.github.io/CAPSAM/EFs_and_IFs/Pub_Heat_EFs_kt_TWh.csv")
ind_com_EFs <- read.csv("C:/Users/ab22/OneDrive - Imperial College London/Second Year Thesis/CAPSAM.github.io/CAPSAM/EFs_and_IFs/Ind_Com_EFs_kt_TWh.csv")
hyd_prod_EFs <- read.csv("C:/Users/ab22/OneDrive - Imperial College London/Second Year Thesis/CAPSAM.github.io/CAPSAM/EFs_and_IFs/Hydrogen_Production_EFs_kt_TWh.csv")
impact_factors <- read.csv("C:/Users/OneDrive - Imperial College London/Second Year Thesis/CAPSAM.github.io/CAPSAM/EFs_and_IFs/UK_to_UK_IFs.csv")



# Simplifying names of emission factors - setting them to recognisable names

# Electricity Emission and Impact Factors
# CO2 LCA emission factors
elec_co2_EF_Biomass <- elec_gen_EFs[6,3]
elec_co2_EF_BECCS <- elec_gen_EFs[11,3]
elec_co2_EF_Gas <- elec_gen_EFs[2,3]
elec_co2_EF_GasCCS <- elec_gen_EFs[9,3]
elec_co2_EF_Hydrogen <- elec_gen_EFs[4,3]
elec_co2_EF_Coal <- elec_gen_EFs[1,3]
elec_co2_EF_Waste <- elec_gen_EFs[8,3]
elec_co2_EF_OtherThermal <- elec_gen_EFs[5,3]
elec_co2_EF_Nuclear <- elec_gen_EFs[12,3]
elec_co2_EF_OffshoreWind <- elec_gen_EFs[13,3]
elec_co2_EF_OnshoreWind <- elec_gen_EFs[14,3]
elec_co2_EF_Solar <- elec_gen_EFs[15,3]
elec_co2_EF_Hydro <- elec_gen_EFs[16,3]
elec_co2_EF_Marine <- elec_gen_EFs[17,3]
elec_co2_EF_OtherRenewables <- elec_gen_EFs[18,3]



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
ironsteel_co2_EF_gasccs <- ind_com_EFs[9,3]
ironsteel_co2_EF_beccs <- ind_com_EFs[10,3]

# Iron and Steel NOx Emission Factors
ironsteel_nox_EF_coal <- ind_com_EFs[1,4]
ironsteel_nox_EF_coke <- ind_com_EFs[2,4]
ironsteel_nox_EF_fueloil <- ind_com_EFs[3,4]
ironsteel_nox_EF_gasoil <- ind_com_EFs[4,4]
ironsteel_nox_EF_lpg <- ind_com_EFs[5,4]
ironsteel_nox_EF_gas <- ind_com_EFs[6,4]
ironsteel_nox_EF_hydrogen <- ind_com_EFs[7,4]
ironsteel_nox_EF_biomass <- ind_com_EFs[8,4]
ironsteel_nox_EF_gasccs <- ind_com_EFs[9,4]
ironsteel_nox_EF_beccs <- ind_com_EFs[10,4]

# Iron and Steel PM2.5 Emission Factors
ironsteel_pm25_EF_coal <- ind_com_EFs[1,5]
ironsteel_pm25_EF_coke <- ind_com_EFs[2,5]
ironsteel_pm25_EF_fueloil <- ind_com_EFs[3,5]
ironsteel_pm25_EF_gasoil <- ind_com_EFs[4,5]
ironsteel_pm25_EF_lpg <- ind_com_EFs[5,5]
ironsteel_pm25_EF_gas <- ind_com_EFs[6,5]
ironsteel_pm25_EF_hydrogen <- ind_com_EFs[7,5]
ironsteel_pm25_EF_biomass <- ind_com_EFs[8,5]
ironsteel_pm25_EF_gasccs <- ind_com_EFs[9,5]
ironsteel_pm25_EF_beccs <- ind_com_EFs[10,5]

# Iron and Steel Impact Factors
ironsteel_nox_IF <- impact_factors[14,7]
ironsteel_pm25_IF <- impact_factors[14,6]

#################################################################################################

# Non-ferrous metals Combustion Emission and Impact Factors
# Non-ferrous metals CO2 Emission Factors
nfm_co2_EF_coalauto <- ind_com_EFs[11,3]
nfm_co2_EF_coal <- ind_com_EFs[12,3]
nfm_co2_EF_fueloil <- ind_com_EFs[13,3]
nfm_co2_EF_gasoil <- ind_com_EFs[14,3]
nfm_co2_EF_gas <- ind_com_EFs[15,3]
nfm_co2_EF_hydrogen <- ind_com_EFs[16,3]
nfm_co2_EF_biomass <- ind_com_EFs[17,3]
nfm_co2_EF_gascss <- ind_com_EFs[18,3]
nfm_co2_EF_beccs <- ind_com_EFs[19,3]

# Non-ferrous metals NOx Emission Factors
nfm_nox_EF_coalauto <- ind_com_EFs[11,4]
nfm_nox_EF_coal <- ind_com_EFs[12,4]
nfm_nox_EF_fueloil <- ind_com_EFs[13,4]
nfm_nox_EF_gasoil <- ind_com_EFs[14,4]
nfm_nox_EF_gas <- ind_com_EFs[15,4]
nfm_nox_EF_hydrogen <- ind_com_EFs[16,4]
nfm_nox_EF_biomass <- ind_com_EFs[17,4]
nfm_nox_EF_gasccs <- ind_com_EFs[18,4]
nfm_nox_EF_beccs <- ind_com_EFs[19,4]

# Non-ferrous metals PM2.5 Emission Factors
nfm_pm25_EF_coalauto <- ind_com_EFs[11,5]
nfm_pm25_EF_coal <- ind_com_EFs[12,5]
nfm_pm25_EF_fueloil <- ind_com_EFs[13,5]
nfm_pm25_EF_gasoil <- ind_com_EFs[14,5]
nfm_pm25_EF_gas <- ind_com_EFs[15,5]
nfm_pm25_EF_hydrogen <- ind_com_EFs[16,5]
nfm_pm25_EF_biomass <- ind_com_EFs[17,5]
nfm_pm25_EF_gasccs <- ind_com_EFs[18,5]
nfm_pm25_EF_beccs <- ind_com_EFs[19,5]

# Non-ferrous metals Impact Factors
nfm_nox_IF <- impact_factors[21,7]
nfm_pm25_IF <- impact_factors[21,6]

#################################################################################################
# Chemicals Combustion 

# Chemicals CO2 Emission Factors
chem_co2_EF_coal <- ind_com_EFs[25,3]
chem_co2_EF_fueloil <- ind_com_EFs[20,3]
chem_co2_EF_gasoil <- ind_com_EFs[21,3]
chem_co2_EF_gas <- ind_com_EFs[22,3]
chem_co2_EF_hydrogen <- ind_com_EFs[23,3]
chem_co2_EF_biomass <- ind_com_EFs[24,3]
chem_co2_EF_gasccs <- ind_com_EFs[26,3]
chem_co2_EF_beccs <- ind_com_EFs[27,3]

# Chemicals NOx Emission Factors
chem_nox_EF_coal <- ind_com_EFs[25,4]
chem_nox_EF_fueloil <- ind_com_EFs[20,4]
chem_nox_EF_gasoil <- ind_com_EFs[21,4]
chem_nox_EF_gas <- ind_com_EFs[22,4]
chem_nox_EF_hydrogen <- ind_com_EFs[23,4]
chem_nox_EF_biomass <- ind_com_EFs[24,4]
chem_nox_EF_gasccs <- ind_com_EFs[26,4]
chem_nox_EF_beccs <- ind_com_EFs[27,4]

# Chemicals PM2.5 Emission Factors
chem_pm25_EF_coal <- ind_com_EFs[25,5]
chem_pm25_EF_fueloil <- ind_com_EFs[20,5]
chem_pm25_EF_gasoil <- ind_com_EFs[21,5]
chem_pm25_EF_gas <- ind_com_EFs[22,5]
chem_pm25_EF_hydrogen <- ind_com_EFs[23,5]
chem_pm25_EF_biomass <- ind_com_EFs[24,5]
chem_pm25_EF_gasccs <- ind_com_EFs[26,5]
chem_pm25_EF_beccs <- ind_com_EFs[27,5]

# Chemicals metals Impact Factors
chem_nox_IF <- impact_factors[25,7]
chem_pm25_IF <- impact_factors[25,6]

#################################################################################################
# Paper and Pulp Combustion 

# Paper and Pulp CO2 Emission Factors
pap_co2_EF_coal <- ind_com_EFs[28,3]
pap_co2_EF_fueloil <- ind_com_EFs[29,3]
pap_co2_EF_gasoil <- ind_com_EFs[30,3]
pap_co2_EF_gas <- ind_com_EFs[31,3]
pap_co2_EF_hydrogen <- ind_com_EFs[32,3]
pap_co2_EF_biomass <- ind_com_EFs[33,3]
pap_co2_EF_gasccs <- ind_com_EFs[34,3]
pap_co2_EF_beccs <- ind_com_EFs[35,3]

# Paper and Pulp NOx Emission Factors
pap_nox_EF_coal <- ind_com_EFs[28,4]
pap_nox_EF_fueloil <- ind_com_EFs[29,4]
pap_nox_EF_gasoil <- ind_com_EFs[30,4]
pap_nox_EF_gas <- ind_com_EFs[31,4]
pap_nox_EF_hydrogen <- ind_com_EFs[32,4]
pap_nox_EF_biomass <- ind_com_EFs[33,4]
pap_nox_EF_gasccs <- ind_com_EFs[34,4]
pap_nox_EF_beccs <- ind_com_EFs[35,4]

# Paper and Pulp PM2.5 Emission Factors
pap_pm25_EF_coal <- ind_com_EFs[28,5]
pap_pm25_EF_fueloil <- ind_com_EFs[29,5]
pap_pm25_EF_gasoil <- ind_com_EFs[30,5]
pap_pm25_EF_gas <- ind_com_EFs[31,5]
pap_pm25_EF_hydrogen <- ind_com_EFs[32,5]
pap_pm25_EF_biomass <- ind_com_EFs[33,5]
pap_pm25_EF_gasccs <- ind_com_EFs[34,5]
pap_pm25_EF_beccs <- ind_com_EFs[35,5]

# Paper and Pulp metals Impact Factors
pap_nox_IF <- impact_factors[21,7]
pap_pm25_IF <- impact_factors[21,6]

#################################################################################################
# Food and Beverages Combustion 

# Food and Beverages CO2 Emission Factors
food_co2_EF_coal <- ind_com_EFs[36,3]
food_co2_EF_fueloil <- ind_com_EFs[37,3]
food_co2_EF_gasoil <- ind_com_EFs[38,3]
food_co2_EF_gas <- ind_com_EFs[39,3]
food_co2_EF_hydrogen <- ind_com_EFs[40,3]
food_co2_EF_biomass <- ind_com_EFs[41,3]
food_co2_EF_gasccs <- ind_com_EFs[42,3]
food_co2_EF_beccs <- ind_com_EFs[43,3]

# Food and Beverages NOx Emission Factors
food_nox_EF_coal <- ind_com_EFs[36,4]
food_nox_EF_fueloil <- ind_com_EFs[37,4]
food_nox_EF_gasoil <- ind_com_EFs[38,4]
food_nox_EF_gas <- ind_com_EFs[39,4]
food_nox_EF_hydrogen <- ind_com_EFs[40,4]
food_nox_EF_biomass <- ind_com_EFs[41,4]
food_nox_EF_gasccs <- ind_com_EFs[42,4]
food_nox_EF_beccs <- ind_com_EFs[43,4]

# Food and Beverages PM2.5 Emission Factors
food_pm25_EF_coal <- ind_com_EFs[36,5]
food_pm25_EF_fueloil <- ind_com_EFs[37,5]
food_pm25_EF_gasoil <- ind_com_EFs[38,5]
food_pm25_EF_gas <- ind_com_EFs[39,5]
food_pm25_EF_hydrogen <- ind_com_EFs[40,5]
food_pm25_EF_biomass <- ind_com_EFs[41,5]
food_pm25_EF_gasccs <- ind_com_EFs[42,5]
food_pm25_EF_beccs <- ind_com_EFs[43,5]

# Food and Beverages metals Impact Factors
food_nox_IF <- impact_factors[21,7]
food_pm25_IF <- impact_factors[21,6]

#################################################################################################

# Hydrogen Production Emission Factors and Impact Factors
# Hydrogen LIfecycle CO2e Emission Factors
hyd_prod_co2_EF_grey_gwp100 <- hyd_prod_EFs[1,4]
hyd_prod_co2_EF_blue_gwp100 <- hyd_prod_EFs[2,4]
hyd_prod_co2_EF_blueFGR_gwp100 <- hyd_prod_EFs[3,4]
hyd_prod_co2_EF_biomass_gasification_gwp100 <- hyd_prod_EFs[4,4]
hyd_prod_co2_EF_grey_gwp20 <- hyd_prod_EFs[1,3]
hyd_prod_co2_EF_blue_gwp20 <- hyd_prod_EFs[2,3]
hyd_prod_co2_EF_blueFGR_gwp20 <- hyd_prod_EFs[3,3]
hyd_prod_co2_EF_biomass_gasification_gwp20 <- hyd_prod_EFs[4,3]

# Hydrogen NOx Emission Factors
hyd_prod_nox_EF_grey <- hyd_prod_EFs[1,7]
hyd_prod_nox_EF_blue <- hyd_prod_EFs[2,7]
hyd_prod_nox_EF_blueFGR <- hyd_prod_EFs[3,7]
hyd_prod_nox_EF_biomass_gasification <- hyd_prod_EFs[4,7]

# Hydrogen PM2.5 Emission Factors
hyd_prod_pm25_EF_grey <- hyd_prod_EFs[1,8]
hyd_prod_pm25_EF_blue <- hyd_prod_EFs[2,8]
hyd_prod_pm25_EF_blueFGR <- hyd_prod_EFs[3,8]
hyd_prod_pm25_EF_biomass_gasification <- hyd_prod_EFs[4,8]


# Hydrogen production Impact Factors - Using SID: _05_01_ Refineries_Combustion
hyd_prod_nox_IF_Gas <- impact_factors[5,7]
hyd_prod_pm25_IF_Gas <- impact_factors[5,6]


# Variables for initial selection

data_levels_Heating <- c("N/A", "Technologic-specific energy demand (e.g., electricity demand from heat pumps for building heating)", "Number of technologies installed (e.g., number of heat pumps installed)", "Overall sectoral energy demand (e.g., hydrogen demand for building heating)")
data_levels_Industrial <- c("N/A", "Process-specific energy demand (e.g., electricity demand for Iron & Steel)", "Overall sectoral energy demand (e.g., hydrogen demand for industrial combustion)")
per_unit_or_absolute_choice <- c("Absolute emissions/impacts", "Emissions/impacts per TWh of energy generated, used etc.")
gwpPotentials <- c("GWP20", "GWP100")

# Initial Selection Criteria

library(shiny)
library(shinydashboard)
library(shinydashboardPlus)
library(ggplot2)
library(plotly)
library(tidyverse)
library(dplyr)
library(reshape2)
library(readxl)
library(writexl)


# Y-Axis Labels
y_label_co2e <- "Lifecycle CO2e Emissions (kt)"
y_label_co2e_perTWh <- "Lifecycle CO2e Emissions per TWh (kt TWh-1)"
y_label_co2 <- "CO2 Emissions (kt)"
y_label_co2_perTWh <- "CO2 Emissions per TWh (kt TWh-1)"
y_label_nox <- "NOx Impact (ng m-3)"
y_label_nox_perTWh <- "NOx Impact per TWh (ng m-3 kt-1)"
y_label_pm25 <- "PM2.5 Impact (ng m-3)"
y_label_pm25_perTWh <- "PM2.5 Impact per TWh (ng m-3 kt-1)"





# UI Side

ui <- dashboardPage(skin = "purple",
                    
                    dashboardHeader(title = "CAPSAM"),
                    
                    dashboardSidebar(
                      
                      
                      
                      sidebarMenu(
                        menuItem("Data Upload & Results", tabName = "upload", icon = icon("dashboard")),
                        menuItem("About CAPSAM", tabName = "about", icon = icon("question"))
                        
                      )
                    ),
                    
                    dashboardBody(
                      
                      tabItems(
                        
                        
                        tabItem(tabName = "upload",
                                h1("Data Upload & Results"),
                                
                                
                                tags$style(".translation {
    
    transform: translateY(5px);
    
    }"
                                           
                                ),
                                
                                tags$style(".translationup {
    
    transform: translateY(-5px);
    
    }"
                                           
                                ),
                                
                                
                                fixedRow(
                                  
                                  # Information and Upload Box
                                  
                                  tabBox(title = "Parameters", width = 5,
                                         
                                         tabPanel("Welcome", h2("Welcome to CAPSAM"), h4("This website is designed to read energy system data (in TWh) for a variety of sectors. From here, CAPSAM will output GHG emissions and air quality impacts."), h4("To use CAPSAM, upload your energy data into the required slots on the 'Import Scenarios CSV' page (templates are also provided). CAPSAM also allows for a range of different data forms for building heating and industrial combustion. Select the drop down on the 'Scenario Questions' page to determine your data type - CAPSAM can then make some basic assumptions to produce the necessary data. Emissions and impacts can also be changed to be per TWh, and using both 20-year and 100-year global warming potentials"), h4("Air pollution and GHG results can be downloaded as a .csv for all sectors in one file, or individually, by clicking to corresponding download button in the 'Results Download' box."), h4("Please feel free to click one of the default runs below to become more accustomed to how CAPSAM works. Enjoy!")),
                                         
                                         tabPanel("Scenario Questions",
                                                  # Deciding on basic levels of information for Building Heating
                                                  selectInput("dataLevels", "Select the level of detail involved in the building heating scenario. If building heating is not included, select N/A.", choices = data_levels_Heating),    
                                                  
                                                  # Deciding on basic levels of information for Industrial Combustion
                                                  selectInput("dataLevels", "Select the level of detail involved in the industrial combustion scenario. If industrial combustion is not included, select N/A", choices = data_levels_Industrial),  
                                                  
                                                  # Selecting base and end years
                                                  numericInput("baseYear", "What is your base (initial) year of your scenario?", value = 0),
                                                  numericInput("endYear", "What is the end year of your scenario?", value = 0),
                                                  
                                                  # Selecting GWP potentials for lifecycle assessments
                                                  radioButtons("gwpPotentials", "Please select either 20-year or 100-year global warming potentials (GWP)", choices = gwpPotentials),
                                                  
                                                  # Selecting whether emissons/impacts should be illustrated per unit energy or absolute
                                                  radioButtons("absolute_or_perUnit", "Specify whether emissions/impacts should be stated as absolute or per TWh energy generated or used", choices = per_unit_or_absolute_choice)
                                                  
                                         )),
                                  
                                  
                                  # Inputs for CSVs, with templates for download underneath
                                  
                                  
                                  column(width = 7,
                                         
                                         
                                         # Inputting elec gen CSV input
                                         tabBox(title = "Electricity Generation", 
                                                tabPanel("Upload", fileInput("elec_file", "Select your electricity generation file: ")), 
                                                tabPanel("Template Download", downloadButton("elec_template_download", "Electricity Generation Template", style = "color: #fff; background-color: green; border-color: black"))),
                                         
                                         # Inputting Hydrogen production csv file
                                         tabBox(title = "Hydrogen Production", 
                                                tabPanel("Upload", fileInput("hyd_file", "Select your hydrogen production file: ")),
                                                tabPanel("Template Download", downloadButton("hyd_template_download", "Hydrogen Production Template", style = "color: #fff; background-color: green; border-color: black"))),
                                         
                                         # Inputting domestic heat csv input
                                         tabBox(title = "Domestic Heating", 
                                                tabPanel("Upload", fileInput("dh_file", "Select your domestic combustion file: ")),
                                                tabPanel("Template Download", 
                                                         downloadButton("dh_template_download_pure", "Technology-specific Domestic Heating Template", style = "color: #fff; background-color: green; border-color: black", class = "translationup"),
                                                         downloadButton("dh_template_download_vector", "Energy Vector Domestic Heating Template", style = "color: #fff; background-color: green; border-color: black"),
                                                         downloadButton("dh_template_download_houses", "Number of Houses Domestic Heating Template", style = "color: #fff; background-color: green; border-color: black", class = "translation"))),
                                         
                                         # Inputting public and commercial heat csv input
                                         tabBox(title = "Public & Commericial Heating", 
                                                tabPanel("Upload", fileInput("ph_file", "Select your commercial combustion file: ")),
                                                tabPanel("Template Download",
                                                         downloadButton("ph_template_download_pure", "Technology-specific Public Heating Template", style = "color: #fff; background-color: green; border-color: black", class = "translationup"),
                                                         downloadButton("ph_template_download_vector", "Energy Vector Public Heating Template", style = "color: #fff; background-color: green; border-color: black"),
                                                         downloadButton("ph_template_download_houses", "Number of Houses Public Heating Template", style = "color: #fff; background-color: green; border-color: black", class = "translation"))),
                                         
                                         # Inputting industrial combustion csv file
                                         tabBox(title = "Industrial Combustion", 
                                                tabPanel("Upload", fileInput("ind_file", "Select your industrial combustion file: ")),
                                                tabPanel("Template Download",
                                                         downloadButton("ind_template_download_pure", "Sector-specific industrial combustion Template", style = "color: #fff; background-color: green; border-color: black", class = "translationup"),
                                                         downloadButton("ind_template_download_vector", "Energy Vector industrial combustion Template", style = "color: #fff; background-color: green; border-color: black")))
                                         
                                         
                                         
                                  )),
                                
                                # Results Box
                                
                                tabBox(id = "resultsTab", title = "Results", width = 12,
                                       
                                       tabPanel("Electricity Generation", fluidRow(splitLayout(cellWidths = c("33%", "33%", "33%"), plotlyOutput("elec_co2"), plotlyOutput("elec_nox"), plotlyOutput("elec_pm25")))),
                                       tabPanel("Hydrogen Production", fluidRow(splitLayout(cellWidths = c("33%", "33%", "33%"), plotlyOutput("hydrogen_co2"), plotlyOutput("hydrogen_nox"), plotlyOutput("hydrogen_pm25")))),
                                       tabPanel("Domestic Heating", fluidRow(splitLayout(cellWidths = c("33%", "33%", "33%"), plotlyOutput("dh_co2"), plotlyOutput("dh_nox"), plotlyOutput("dh_pm25")))),
                                       tabPanel("Public and Commercial Heating", fluidRow(splitLayout(cellWidths = c("33%", "33%", "33%"), plotlyOutput("ph_co2"), plotlyOutput("ph_nox"), plotlyOutput("ph_pm25")))),
                                       tabPanel("Iron & Steel", fluidRow(splitLayout(cellWidths = c("33%", "33%", "33%"), plotlyOutput("ironsteel_co2"), plotlyOutput("ironsteel_nox"), plotlyOutput("ironsteel_pm25")))),
                                       tabPanel("Non-Ferrous Metals", fluidRow(splitLayout(cellWidths = c("33%", "33%", "33%"), plotlyOutput("nfm_co2"), plotlyOutput("nfm_nox"), plotlyOutput("nfm_pm25")))),
                                       tabPanel("Chemicals", fluidRow(splitLayout(cellWidths = c("33%", "33%", "33%"), plotlyOutput("chem_co2"), plotlyOutput("chem_nox"), plotlyOutput("chem_pm25")))),
                                       tabPanel("Paper and Pulp", fluidRow(splitLayout(cellWidths = c("33%", "33%", "33%"), plotlyOutput("pap_co2"), plotlyOutput("pap_nox"), plotlyOutput("pap_pm25")))),
                                       tabPanel("Food and Beverages", fluidRow(splitLayout(cellWidths = c("33%", "33%", "33%"), plotlyOutput("food_co2"), plotlyOutput("food_nox"), plotlyOutput("food_pm25")))),
                                       tabPanel("Minerals", fluidRow(splitLayout(cellWidths = c("33%", "33%", "33%"), plotlyOutput("min_co2"), plotlyOutput("min_nox"), plotlyOutput("min_pm25")))),
                                       tabPanel("Textiles and Leather", fluidRow(splitLayout(cellWidths = c("33%", "33%", "33%"), plotlyOutput("text_co2"), plotlyOutput("text_nox"), plotlyOutput("text_pm25")))),
                                       tabPanel("Construction/NRMM", fluidRow(splitLayout(cellWidths = c("33%", "33%", "33%"), plotlyOutput("con_co2"), plotlyOutput("con_nox"), plotlyOutput("con_pm25")))),
                                       
                                       # Other Industries - 1A2gviii - Mech Eng, Elec Eng, Vehicles, Other Ind
                                       tabPanel("Other Industries", fluidRow(splitLayout(cellWidths = c("33%", "33%", "33%"), plotlyOutput("other_co2"), plotlyOutput("other_nox"), plotlyOutput("other_pm25")))),
                                       
                                ),
                                
                                # Results Download Box
                                
                                tabBox(title = "Results Download", width = 12,
                                       
                                       tabPanel("All Results Download", downloadButton("download_total_xlsx", "Download All Results", style = "color = #fff; background-color: red; border-color: black")),
                                       tabPanel("Electricity Results Download", downloadButton("download_elec_xlsx", "Download Electricity Results", style = "color = #fff; background-color: red; border-color: black")),
                                       tabPanel("Hydrogen Results Download", downloadButton("download_hyd_xlsx", "Download Hydrogen Results", style = "color = #fff; background-color: red; border-color: black")),
                                       tabPanel("Domestic Heating Results Download", downloadButton("download_dh_xlsx", "Download Domestic Heating Results", style = "color = #fff; background-color: red; border-color: black")),
                                       tabPanel("Public Heating Results Download", downloadButton("download_ph_xlsx", "Download Public and Commercial Heating Results", style = "color = #fff; background-color: red; border-color: black")),
                                       tabPanel("Industry Results Download", downloadButton("download_ind_xlsx", "Download Industry Results", style = "color = #fff; background-color: red; border-color: black"))
                                )
                                
                                
                        ),
                        
                        
                        
                        # Second Tab
                        
                        tabItem(tabName = "about",
                                h1("About CAPSAM"),
                                
                                box(title = "Schematics and Methodology"),
                                
                        )
                        
                        
                        
                      )))



















# Server-side logic

server <- function(input, output, session) {
  
  # Reading and transposing input csv files
  
  input_elec_file <- reactive({
    
    if(is.null(input$elec_file)) {
      return("")
    }
    
    input_elec_file <- read.csv(file = input$elec_file$datapath, fileEncoding='UTF-8-BOM', header = FALSE)
    
    colnames <- as.character(input_elec_file[ , 1])
    input_elec_file = data.frame(t(input_elec_file[ , -1])) 
    colnames(input_elec_file) <- colnames
    
    return(input_elec_file)
  })
  
  input_dh_file <- reactive({
    
    if(is.null(input$dh_file)) {
      return("")
    }
    
    input_dh_file <- read.csv(file = input$dh_file$datapath, fileEncoding='UTF-8-BOM', header = FALSE)
    
    colnames <- as.character(input_dh_file[ , 1])
    input_dh_file = data.frame(t(input_dh_file[ , -1]))
    colnames(input_dh_file) <- colnames
    
    return(input_dh_file)
    
  })
  
  input_ph_file <- reactive({
    
    if(is.null(input$ph_file)) {
      return("")
    }
    
    input_ph_file <- read.csv(file = input$ph_file$datapath, fileEncoding='UTF-8-BOM', header = FALSE)
    
    colnames <- as.character(input_ph_file[ , 1])
    input_ph_file = data.frame(t(input_ph_file[ , -1]))
    colnames(input_ph_file) <- colnames
    
    return(input_ph_file)
    
  })
  
  input_ind_file <- reactive({
    
    if(is.null(input$ind_file)) {
      
      return("")
    }
    
    input_ind_file <- read.csv(file = input$ind_file$datapath, fileEncoding = 'UTF-8-BOM', header = FALSE)
    
    colnames <- as.character(input_ind_file[ , 1])
    input_ind_file = data.frame(t(input_ind_file[ , -1]))
    colnames(input_ind_file) <- colnames
    
    return(input_ind_file)
    
  })
  
  input_hyd_file <- reactive({
    
    if(is.null(input$hyd_file)) {
      
      return("")
      
    }
    
    input_hyd_file <- read.csv(file = input$hyd_file$datapath, fileEncoding = 'UTF-8-BOM', header = FALSE)
    
    colnames <- as.character(input_hyd_file[ , 1])
    input_hyd_file = data.frame(t(input_hyd_file[ , -1]))
    colnames(input_hyd_file) <- colnames
    
    return(input_hyd_file)
    
  })
  
  
  ########################################################################################################################################
  
  # Reactive expressions to get total use/generation data
  
  
  elec_data_sum <- reactive({
    
    req(input_elec_file())
    
    elec_data_sum <- rowSums(input_elec_file()[, 2:16], na.rm = TRUE)
    
    return(elec_data_sum)
    
  })
  
  dh_data_sum <- reactive({
    
    req(input_dh_file())
    
    dh_data_sum <- rowSums(input_dh_file()[, 2:28], na.rm = TRUE)
    
    return(dh_data_sum)
    
  })
  
  ph_data_sum <- reactive({
    
    req(input_ph_file())
    
    ph_data_sum <- rowSums(input_ph_file()[, 2:28], na.rm = TRUE)
    
    return(ph_data_sum)
    
  })
  
  hyd_data_sum <- reactive({
    
    req(input_hyd_file())
    
    hyd_data_sum <- rowSums(input_hyd_file()[, 2:7], na.rm = TRUE)
    
    return(hyd_data_sum)
  })
  
  # Industry total use data - needs to be broken down into industrial sectors
  
  ironsteel_data <- reactive({
    
    req(input_ind_file)
    
    ironsteel_data <- input_ind_file()[,1:8]
    
  })
  
  ironsteel_data_sum <- reactive({
    
    req(ironsteel_data())
    
    ironsteel_data_sum <- rowSums(ironsteel_data()[2:8], na.rm = TRUE)
    
    return(ironsteel_data_sum)
    
  })
  
  nfm_data <- reactive({
    
    req(input_ind_file())
    
    nfm_data <- input_ind_file()[, c(1,9:15)]
  })
  
  # nfm_data now on rows 1:8 (inc electricity)! Pick 2:8 for all industry sums
  
  nfm_data_sum <- reactive({
    
    req(nfm_data())
    
    nfm_data_sum <- rowSums(nfm_data()[2:8], na.rm = TRUE)
    
    return(nfm_data_sum)
    
  })
  
  chem_data <- reactive({
    
    req(input_ind_file())
    
    chem_data <- input_ind_file()[, c(1,16:22)]
  })
  
  # chem_data now on rows 1:6 (inc electricity)! Pick 2:6 for all industry sums
  
  chem_data_sum <- reactive({
    
    req(chem_data())
    
    chem_data_sum <- rowSums(chem_data()[2:8], na.rm = TRUE)
    
    return(chem_data_sum)
    
  })
  
  pap_data <- reactive({
    
    req(input_ind_file())
    
    pap_data <- input_ind_file()[, c(1,23:29)]
  })
  
  # PaP_data now on rows 1:6 (inc electricity)! Pick 2:6 for all industry sums
  
  pap_data_sum <- reactive({
    
    req(pap_data())
    
    pap_data_sum <- rowSums(pap_data()[2:8], na.rm = TRUE)
    
    return(pap_data_sum)
    
  })
  
  food_data <- reactive({
    
    req(input_ind_file())
    
    food_data <- input_ind_file()[, c(1,30:36)]
  })
  
  # PaP_data now on rows 1:6 (inc electricity)! Pick 2:6 for all industry sums
  
  food_data_sum <- reactive({
    
    req(food_data())
    
    food_data_sum <- rowSums(food_data()[2:8], na.rm = TRUE)
    
    return(food_data_sum)
    
  })
  
  ###########################################################################################################################################
  
  # CSV Template Downloads
  
  output$elec_template_download <- downloadHandler(
    
    filename <- function(){
      "Elec_Template.csv"
    },
    
    content <- function(file) {
      file.copy("C:/Users/ab22/OneDrive - Imperial College London/Second Year Thesis/CAPSAM.github.io/CAPSAM/Templates/Elec_Template.csv", file)
    }
  )
  
  
  output$dh_template_download_pure <- downloadHandler(
    
    filename <- function(){
      "DomHeat_Template_FullData.csv"
    },
    
    content <- function(file) {
      file.copy("C:/Users/ab22/OneDrive - Imperial College London/Second Year Thesis/CAPSAM.github.io/CAPSAM/Templates/DomHeat_Template_FullData.csv", file)
    }
  )
  
  output$ph_template_download_pure <- downloadHandler(
    
    filename <- function(){
      "PubHeat_Template_FullData.csv"
    },
    
    content <- function(file) {
      file.copy("C:/Users/ab22/OneDrive - Imperial College London/Second Year Thesis/CAPSAM.github.io/CAPSAM/Templates/PubHeat_Template_FullData.csv", file)
    }
  )
  
  output$ind_template_download_pure <- downloadHandler(
    
    filename <- function(){
      "Industry_Template_FullData.csv"
    },
    
    content <- function(file) {
      file.copy("C:/Users/ab22/OneDrive - Imperial College London/Second Year Thesis/CAPSAM.github.io/CAPSAM/Templates/Industry_Template_FullData.csv", file)
    }
  )
  
  output$hyd_template_download <- downloadHandler(
    
    filename <- function(){
      "Hydrogen_Template.csv"
    },
    
    content <- function(file) {
      file.copy("C:/Users/ab22/OneDrive - Imperial College London/Second Year Thesis/CAPSAM.github.io/CAPSAM/Templates/Hydrogen_Template.csv", file)
    }
  )
  
  #################################################################################################################################################################     
  # Results CSV Downloads
  
  # Data Lists for xlsx sheets
  full_data_list <- reactive({
    
    list(df_elec_co2_emissions,
         df_elec_nox_impacts, 
         df_elec_pm25_impacts,
         df_dh_co2_emissions,
         df_dh_nox_impacts,
         df_dh_pm25_impacts,
         df_ph_co2_emissions,
         df_dh_nox_impacts,
         df_dh_pm25_impacts,
         ironsteel_co2_emissions,
         ironsteel_nox_impacts,
         ironsteel_pm25_impacts,
         hyd_co2_emissions,
         hyd_nox_impacts,
         hyd_pm25_impacts,
         nfm_co2_emissions,
         nfm_nox_impacts,
         nfm_pm25_impacts
    )
    
  })
  
  elec_data_list <- reactive({
    
    list(df_elec_co2_emissions,
         df_elec_nox_impacts, 
         df_elec_pm25_impacts)
    
  })
  
  hyd_data_list <- reactive({
    
    list(hyd_co2_emissions,
         hyd_nox_impacts, 
         hyd_pm25_impacts)
    
  })
  
  dh_data_list <- reactive({
    
    list(df_dh_co2_emissions,
         df_dh_nox_impacts, 
         df_dh_pm25_impacts)
    
  })
  
  ph_data_list <- reactive({
    
    list(df_ph_co2_emissions,
         df_ph_nox_impacts, 
         df_ph_pm25_impacts)
    
  })
  
  ind_data_list <- reactive({
    
    list(ironsteel_co2_emissions,
         ironsteel_nox_impacts,
         ironsteel_pm25_impacts,
         nfm_co2_emissions,
         nfm_nox_impacts,
         nfm_pm25_impacts)
    
  })
  
  
  
  
  # Results download buttons
  output$download_total_xlsx <- downloadHandler(
    
    filename = function(){
      
      paste("CAPSAM_Data-", Sys.time(),".xlsx")
      
    },
    
    content = function(file){
      
      write_xlsx(full_data_list(), path = file)
      
    }
  )
  
  output$download_elec_xlsx <- downloadHandler(
    
    filename = function(){
      
      paste("CAPSAM_Elec_Data-", Sys.time(),".xlsx")
      
    },
    
    content = function(file){
      
      write_xlsx(elec_data_list(), path = file)
      
    }
  )
  
  output$download_hyd_xlsx <- downloadHandler(
    
    filename = function(){
      
      paste("CAPSAM_Elec_Data-", Sys.time(),".xlsx")
      
    },
    
    content = function(file){
      
      write_xlsx(hyd_data_list(), path = file)
      
    }
  )
  
  output$download_dh_xlsx <- downloadHandler(
    
    filename = function(){
      
      paste("CAPSAM_Elec_Data-", Sys.time(),".xlsx")
      
    },
    
    content = function(file){
      
      write_xlsx(dh_data_list(), path = file)
      
    }
  )
  
  output$download_ph_xlsx <- downloadHandler(
    
    filename = function(){
      
      paste("CAPSAM_Elec_Data-", Sys.time(),".xlsx")
      
    },
    
    content = function(file){
      
      write_xlsx(ph_data_list(), path = file)
      
    }
  )
  
  output$download_ind_xlsx <- downloadHandler(
    
    filename = function(){
      
      paste("CAPSAM_Elec_Data-", Sys.time(),".xlsx")
      
    },
    
    content = function(file){
      
      write_xlsx(ind_data_list(), path = file)
      
    }
  )
  
  
  
  
  ##########################################################################################################################################  -> Beginning of calculations
  
  
  # CO2 Emissions - with if function for both absolute and per TWh emissions
  
  output$elec_co2 <- renderPlotly({
    
    req(input_elec_file())
    
    df_elec_co2_emissions <- input_elec_file()[, 1:16]
    
    if (input$absolute_or_perUnit == "Absolute emissions/impacts")
    {
      
      df_elec_co2_emissions$Biomass <- df_elec_co2_emissions$Biomass * elec_co2_EF_Biomass
      df_elec_co2_emissions$BECCS <- df_elec_co2_emissions$BECCS * elec_co2_EF_BECCS
      df_elec_co2_emissions$Gas <- df_elec_co2_emissions$Gas * elec_co2_EF_Gas
      df_elec_co2_emissions$`Gas CCS` <- df_elec_co2_emissions$`Gas CCS` * elec_co2_EF_GasCCS
      df_elec_co2_emissions$Hydrogen <- df_elec_co2_emissions$Hydrogen * elec_co2_EF_Hydrogen
      df_elec_co2_emissions$Coal <- df_elec_co2_emissions$Coal * elec_co2_EF_Coal
      df_elec_co2_emissions$Waste <- df_elec_co2_emissions$Waste * elec_co2_EF_Waste
      df_elec_co2_emissions$`Other thermal` <- df_elec_co2_emissions$`Other thermal` * elec_co2_EF_OtherThermal
      df_elec_co2_emissions$Nuclear <- df_elec_co2_emissions$Nuclear * elec_co2_EF_Nuclear
      df_elec_co2_emissions$`Offshore Wind` <- df_elec_co2_emissions$`Offshore Wind` * elec_co2_EF_OffshoreWind
      df_elec_co2_emissions$`Onshore Wind` <- df_elec_co2_emissions$`Onshore Wind` * elec_co2_EF_OnshoreWind
      df_elec_co2_emissions$Solar <- df_elec_co2_emissions$Solar * elec_co2_EF_Solar
      df_elec_co2_emissions$Hydro <- df_elec_co2_emissions$Hydro * elec_co2_EF_Hydro
      df_elec_co2_emissions$Marine <- df_elec_co2_emissions$Marine * elec_co2_EF_Marine
      df_elec_co2_emissions$`Other Renewables` <- df_elec_co2_emissions$`Other Renewables` * elec_co2_EF_OtherRenewables
      df_elec_co2_emissions$`Total Lifecycle Emissions` <- rowSums(df_elec_co2_emissions[,2:16], na.rm = TRUE)
      
      df_elec_co2_emissions <<- df_elec_co2_emissions
      
      # <<- to make global and allow for download as melted format!
      long_df_elec_co2_emissions <- melt(df_elec_co2_emissions[, 1:16], id.vars = "Year", variable.name = "Source", value.name = "Emissions", na.rm = TRUE)
      
      
      p <- ggplot(long_df_elec_co2_emissions,
                  aes(Year, Emissions, col = Source)) +
        geom_line() + 
        labs(y = y_label_co2e)
      
      ggplotly(p)
      
    }
    
    else # per TWh emissions
    {
      
      df_elec_co2_emissions$Biomass <- (df_elec_co2_emissions$Biomass * elec_co2_EF_Biomass)/elec_data_sum()
      df_elec_co2_emissions$BECCS <- (df_elec_co2_emissions$BECCS * elec_co2_EF_BECCS)/elec_data_sum()
      df_elec_co2_emissions$Gas <- (df_elec_co2_emissions$Gas * elec_co2_EF_Gas)/elec_data_sum()
      df_elec_co2_emissions$`Gas CCS` <- (df_elec_co2_emissions$`Gas CCS` * elec_co2_EF_GasCCS)/elec_data_sum()
      df_elec_co2_emissions$Hydrogen <- (df_elec_co2_emissions$Hydrogen * elec_co2_EF_Hydrogen)/elec_data_sum()
      df_elec_co2_emissions$Coal <- (df_elec_co2_emissions$Coal * elec_co2_EF_Coal)/elec_data_sum()
      df_elec_co2_emissions$Waste <- (df_elec_co2_emissions$Waste * elec_co2_EF_Waste)/elec_data_sum()
      df_elec_co2_emissions$`Other thermal` <- (df_elec_co2_emissions$`Other thermal` * elec_co2_EF_OtherThermal)/elec_data_sum()
      df_elec_co2_emissions$Nuclear <- (df_elec_co2_emissions$Nuclear * elec_co2_EF_Nuclear)/elec_data_sum()
      df_elec_co2_emissions$`Offshore Wind` <- (df_elec_co2_emissions$`Offshore Wind` * elec_co2_EF_OffshoreWind)/elec_data_sum()
      df_elec_co2_emissions$`Onshore Wind` <- (df_elec_co2_emissions$`Onshore Wind` * elec_co2_EF_OnshoreWind)/elec_data_sum()
      df_elec_co2_emissions$Solar <- (df_elec_co2_emissions$Solar * elec_co2_EF_Solar)/elec_data_sum()
      df_elec_co2_emissions$Hydro <- (df_elec_co2_emissions$Hydro * elec_co2_EF_Hydro)/elec_data_sum()
      df_elec_co2_emissions$Marine <- (df_elec_co2_emissions$Marine * elec_co2_EF_Marine)/elec_data_sum()
      df_elec_co2_emissions$`Other Renewables` <- (df_elec_co2_emissions$`Other Renewables` * elec_co2_EF_OtherRenewables)/elec_data_sum()
      df_elec_co2_emissions$`Total Lifecycle Emissions per TWh` <- rowSums(df_elec_co2_emissions[,2:16], na.rm = TRUE)
      
      df_elec_co2_emissions <<- df_elec_co2_emissions
      
      long_df_elec_co2_emissions <- melt(df_elec_co2_emissions[, 1:16], id.vars = "Year", variable.name = "Source", value.name = "Emissions", na.rm = TRUE)
      
      p <- ggplot(long_df_elec_co2_emissions,
                  aes(Year, Emissions, col = Source)) +
        geom_line() + 
        labs(y = y_label_co2e_perTWh)
      
      ggplotly(p)
      
    }
    
    
  })
  
  #########################################################################################################
  
  
  # NOx PWMC Impacts (currently not weighted per unit energy)
  
  
  output$elec_nox <- renderPlotly({
    
    req(input_elec_file())
    
    df_elec_nox_emissions <- input_elec_file()[, 1:9]
    
    df_elec_nox_emissions$Biomass <- df_elec_nox_emissions$Biomass * elec_nox_EF_Biomass
    df_elec_nox_emissions$BECCS <- df_elec_nox_emissions$BECCS * elec_nox_EF_BECCS
    df_elec_nox_emissions$Gas <- df_elec_nox_emissions$Gas * elec_nox_EF_Gas
    df_elec_nox_emissions$`Gas CCS` <- df_elec_nox_emissions$`Gas CCS` * elec_nox_EF_GasCCS
    df_elec_nox_emissions$Hydrogen <- df_elec_nox_emissions$Hydrogen * elec_nox_EF_Hydrogen
    df_elec_nox_emissions$Coal <- df_elec_nox_emissions$Coal * elec_nox_EF_Coal
    df_elec_nox_emissions$Waste <- df_elec_nox_emissions$Waste * elec_nox_EF_Waste
    df_elec_nox_emissions$`Other thermal` <- df_elec_nox_emissions$`Other thermal` * elec_nox_EF_OtherThermal
    df_elec_nox_emissions$`Total Emissions` <- rowSums(df_elec_nox_emissions[, 2:9], na.rm = TRUE)
    
    # Producing PWMC Impacts using UK-to-UK impact factors 
    df_elec_nox_impacts <- df_elec_nox_emissions[,1:9]
    
    # Absolute Impacts
    
    if (input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
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
      
      df_elec_nox_impacts <<- df_elec_nox_impacts
      
      long_df_elec_nox_impacts <- melt(df_elec_nox_impacts[, 1:9], id.vars = "Year", variable.name = "Source", value.name = "PWMC", na.rm = TRUE)
      
      
      p <- ggplot(long_df_elec_nox_impacts, aes(Year, PWMC, col = Source)) +
        geom_line() + 
        labs(y = y_label_nox)
      
      ggplotly(p)
    }
    
    # Impacts per TWh
    
    else {
      
      # pNOx Impacts from electricity generation
      df_elec_nox_impacts$Biomass <- (df_elec_nox_impacts$Biomass * elec_nox_IF_Other)/elec_data_sum()
      df_elec_nox_impacts$BECCS <- (df_elec_nox_impacts$BECCS * elec_nox_IF_Other)/elec_data_sum()
      df_elec_nox_impacts$Gas <- (df_elec_nox_impacts$Gas * elec_nox_IF_Gas)/elec_data_sum()
      df_elec_nox_impacts$`Gas CCS` <- (df_elec_nox_impacts$`Gas CCS` * elec_nox_IF_Gas)/elec_data_sum()
      df_elec_nox_impacts$Hydrogen <- (df_elec_nox_impacts$Hydrogen * elec_nox_IF_Gas)/elec_data_sum()
      df_elec_nox_impacts$Coal <- (df_elec_nox_impacts$Coal * elec_nox_IF_Other)/elec_data_sum()
      df_elec_nox_impacts$Waste <- (df_elec_nox_impacts$Waste * elec_nox_IF_Other)/elec_data_sum()
      df_elec_nox_impacts$`Other thermal` <- (df_elec_nox_impacts$`Other thermal` * elec_nox_IF_Other)/elec_data_sum()
      df_elec_nox_impacts$`Total Impact per TWh` <- rowSums(df_elec_nox_impacts[, 2:9], na.rm = TRUE) 
      
      df_elec_nox_impacts <<- df_elec_nox_impacts
      
      long_df_elec_nox_impacts <- melt(df_elec_nox_impacts[, 1:9], id.vars = "Year", variable.name = "Source", value.name = "PWMC", na.rm = TRUE)
      
      
      p <- ggplot(long_df_elec_nox_impacts, aes(Year, PWMC, col = Source)) +
        geom_line() + 
        labs(y = y_label_nox_perTWh)
      
      ggplotly(p)
      
    }
    
    
  })   
  
  #########################################################################################################
  
  # PM2.5 PWMC Impacts (currently not weighted per unit energy)
  
  output$elec_pm25 <- renderPlotly({
    
    req(input_elec_file())
    
    df_elec_pm25_emissions <- input_elec_file()[, 1:9]
    
    df_elec_pm25_emissions$Biomass <- df_elec_pm25_emissions$Biomass * elec_pm25_EF_Biomass
    df_elec_pm25_emissions$BECCS <- df_elec_pm25_emissions$BECCS * elec_pm25_EF_BECCS
    df_elec_pm25_emissions$Gas <- df_elec_pm25_emissions$Gas * elec_pm25_EF_Gas
    df_elec_pm25_emissions$`Gas CCS` <- df_elec_pm25_emissions$`Gas CCS` * elec_pm25_EF_GasCCS
    df_elec_pm25_emissions$Hydrogen <- df_elec_pm25_emissions$Hydrogen * elec_pm25_EF_Hydrogen
    df_elec_pm25_emissions$Coal <- df_elec_pm25_emissions$Coal * elec_pm25_EF_Coal
    df_elec_pm25_emissions$Waste <- df_elec_pm25_emissions$Waste * elec_pm25_EF_Waste
    df_elec_pm25_emissions$`Other thermal` <- df_elec_pm25_emissions$`Other thermal` * elec_pm25_EF_OtherThermal
    df_elec_pm25_emissions$`Total Emissions` <- rowSums(df_elec_pm25_emissions[, 2:9], na.rm = TRUE)
    
    # Producing PWMC Impacts using UK-to-UK impact factors 
    df_elec_pm25_impacts <- df_elec_pm25_emissions[,1:9]
    
    # Absolute Impacts
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      # pNOx Impacts from electricity generation
      df_elec_pm25_impacts$Biomass <- df_elec_pm25_impacts$Biomass * elec_pm25_IF_Other
      df_elec_pm25_impacts$BECCS <- df_elec_pm25_impacts$BECCS * elec_pm25_IF_Other
      df_elec_pm25_impacts$Gas <- df_elec_pm25_impacts$Gas * elec_pm25_IF_Gas
      df_elec_pm25_impacts$`Gas CCS` <- df_elec_pm25_impacts$`Gas CCS` * elec_pm25_IF_Gas
      df_elec_pm25_impacts$Hydrogen <- df_elec_pm25_impacts$Hydrogen * elec_pm25_IF_Gas
      df_elec_pm25_impacts$Coal <- df_elec_pm25_impacts$Coal * elec_pm25_IF_Other
      df_elec_pm25_impacts$Waste <- df_elec_pm25_impacts$Waste * elec_pm25_IF_Other
      df_elec_pm25_impacts$`Other thermal` <- df_elec_pm25_impacts$`Other thermal` * elec_pm25_IF_Other
      df_elec_pm25_impacts$`Total Impact` <- rowSums(df_elec_pm25_impacts[, 2:9], na.rm = TRUE)
      
      df_elec_pm25_impacts <<- df_elec_pm25_impacts
      
      long_df_elec_pm25_impacts <- melt(df_elec_pm25_impacts[, 1:9], id.vars = "Year", variable.name = "Source", value.name = "PWMC", na.rm = TRUE)
      
      
      p <- ggplot(long_df_elec_pm25_impacts, aes(Year, PWMC, col = Source)) +
        geom_line() + 
        labs(y = y_label_pm25)
      
      ggplotly(p)
      
    }
    
    else {
      
      # pNOx Impacts from electricity generation
      df_elec_pm25_impacts$Biomass <- (df_elec_pm25_impacts$Biomass * elec_pm25_IF_Other)/elec_data_sum()
      df_elec_pm25_impacts$BECCS <- (df_elec_pm25_impacts$BECCS * elec_pm25_IF_Other)/elec_data_sum()
      df_elec_pm25_impacts$Gas <- (df_elec_pm25_impacts$Gas * elec_pm25_IF_Gas)/elec_data_sum()
      df_elec_pm25_impacts$`Gas CCS` <- (df_elec_pm25_impacts$`Gas CCS` * elec_pm25_IF_Gas)/elec_data_sum()
      df_elec_pm25_impacts$Hydrogen <- (df_elec_pm25_impacts$Hydrogen * elec_pm25_IF_Gas)/elec_data_sum()
      df_elec_pm25_impacts$Coal <- (df_elec_pm25_impacts$Coal * elec_pm25_IF_Other)/elec_data_sum()
      df_elec_pm25_impacts$Waste <- (df_elec_pm25_impacts$Waste * elec_pm25_IF_Other)/elec_data_sum()
      df_elec_pm25_impacts$`Other thermal` <- (df_elec_pm25_impacts$`Other thermal` * elec_pm25_IF_Other)/elec_data_sum()
      df_elec_pm25_impacts$`Total Impact per TWh` <- rowSums(df_elec_pm25_impacts[, 2:9], na.rm = TRUE)
      
      df_elec_pm25_impacts <<- df_elec_pm25_impacts
      
      long_df_elec_pm25_impacts <- melt(df_elec_pm25_impacts[, 1:9], id.vars = "Year", variable.name = "Source", value.name = "PWMC", na.rm = TRUE)
      
      
      p <- ggplot(long_df_elec_pm25_impacts, aes(Year, PWMC, col = Source)) +
        geom_line() + 
        labs(y = y_label_pm25_perTWh)
      
      ggplotly(p)
      
    }
    
  })   
  
  ###################################################################################################################################################
  
  # Domestic Heating
  
  # Domestic Heating CO2 Emissions
  
  output$dh_co2 <- renderPlotly({
    
    req(input_dh_file())
    
    df_dh_co2_emissions <- input_dh_file()[, 1:17]
    
    # Absolute CO2 Emissions
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
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
      
      df_dh_co2_emissions <<- df_dh_co2_emissions
      
      long_df_dh_co2_emissions <- melt(df_dh_co2_emissions[, 1:17], id.vars = "Year", variable.name = "Source", value.name = "Emissions", na.rm = TRUE)
      
      p <- ggplot(long_df_dh_co2_emissions, aes(Year, Emissions, col = Source)) +
        geom_line() + 
        labs(y = y_label_co2)
      
      ggplotly(p)
      
    }
    
    # Per TWh CO2 Emissions
    
    else {
      
      df_dh_co2_emissions$`Biofuel Boiler` <- (df_dh_co2_emissions$`Biofuel Boiler` * dh_co2_EF_gasoil_boiler)/dh_data_sum()
      df_dh_co2_emissions$`ASHP + Biofuel Boiler (Biofuel)` <- (df_dh_co2_emissions$`ASHP + Biofuel Boiler (Biofuel)` * dh_co2_EF_gasoil_boiler)/dh_data_sum()
      df_dh_co2_emissions$`Biomass Boiler` <- (df_dh_co2_emissions$`Biomass Boiler` * dh_co2_EF_woodpellet_boiler)/dh_data_sum()
      df_dh_co2_emissions$`Biomass CHP` <- (df_dh_co2_emissions$`Biomass CHP` * ph_co2_EF_biomass_boiler)/dh_data_sum()
      df_dh_co2_emissions$`District Heating (Biomass)` <- (df_dh_co2_emissions$`District Heating (Biomass)` * ph_co2_EF_biomass_boiler)/dh_data_sum()
      df_dh_co2_emissions$`District Heating (Biomethane)` <- (df_dh_co2_emissions$`District Heating (Biomethane)` * ph_co2_EF_gas_boiler)/dh_data_sum()
      df_dh_co2_emissions$`District Heating (Gas)` <- (df_dh_co2_emissions$`District Heating (Gas)` * ph_co2_EF_gas_boiler)/dh_data_sum()
      df_dh_co2_emissions$`Gas Boiler` <- (df_dh_co2_emissions$`Gas Boiler` * dh_co2_EF_gas_boiler)/dh_data_sum()
      df_dh_co2_emissions$`Gas CHP` <- (df_dh_co2_emissions$`Gas CHP` * ph_co2_EF_gas_boiler)/dh_data_sum()
      df_dh_co2_emissions$`District Heating (Hydrogen)` <- (df_dh_co2_emissions$`District Heating (Hydrogen)` * ph_co2_EF_hydrogen_boiler)/dh_data_sum()
      df_dh_co2_emissions$`Gas Boiler - H2-NG Blend` <- (df_dh_co2_emissions$`Gas Boiler - H2-NG Blend` * dh_co2_EF_hydrogen_natgas_boiler)/dh_data_sum()
      df_dh_co2_emissions$`Gas CHP - H2-NG Blend` <- (df_dh_co2_emissions$`Gas CHP - H2-NG Blend` * ph_co2_EF_hydrogen_natgas_boiler)/dh_data_sum()
      df_dh_co2_emissions$`ASHP + Hydrogen Boiler (Hydrogen)` <- (df_dh_co2_emissions$`ASHP + Hydrogen Boiler (Hydrogen)` * dh_co2_EF_hydrogen_boiler)/dh_data_sum()
      df_dh_co2_emissions$`Hydrogen Boiler` <- (df_dh_co2_emissions$`Hydrogen Boiler` * dh_co2_EF_hydrogen_boiler)/dh_data_sum()
      df_dh_co2_emissions$`Oil Boiler` <- (df_dh_co2_emissions$`Oil Boiler` * dh_co2_EF_gasoil_boiler)/dh_data_sum()
      df_dh_co2_emissions$`Community Heating` <- (df_dh_co2_emissions$`Community Heating` * ph_co2_EF_fueloil_boiler)/dh_data_sum()
      df_dh_co2_emissions$`Total Emissions per TWh` <- rowSums(df_dh_co2_emissions[, 2:17], na.rm = TRUE)
      
      df_dh_co2_emissions <<- df_dh_co2_emissions
      
      long_df_dh_co2_emissions <- melt(df_dh_co2_emissions[, 1:17], id.vars = "Year", variable.name = "Source", value.name = "Emissions", na.rm = TRUE)
      
      p <- ggplot(long_df_dh_co2_emissions, aes(Year, Emissions, col = Source)) +
        geom_line() + 
        labs(y = y_label_co2_perTWh)
      
      ggplotly(p)
      
    }
    
    
  })
  
  
  ###############################################################################################################     
  
  # Domestic Heating NOx Emissions
  
  output$dh_nox <- renderPlotly({
    
    req(input_dh_file())
    
    df_dh_nox_emissions <- input_dh_file()[, 1:17]
    
    df_dh_nox_emissions$`Biofuel Boiler` <- df_dh_nox_emissions$`Biofuel Boiler` * dh_nox_EF_gasoil_boiler
    df_dh_nox_emissions$`ASHP + Biofuel Boiler (Biofuel)` <- df_dh_nox_emissions$`ASHP + Biofuel Boiler (Biofuel)` * dh_nox_EF_gasoil_boiler
    df_dh_nox_emissions$`Biomass Boiler` <- df_dh_nox_emissions$`Biomass Boiler` * dh_nox_EF_woodpellet_boiler
    df_dh_nox_emissions$`Biomass CHP` <- df_dh_nox_emissions$`Biomass CHP` * ph_nox_EF_biomass_boiler
    df_dh_nox_emissions$`District Heating (Biomass)` <- df_dh_nox_emissions$`District Heating (Biomass)` * ph_nox_EF_biomass_boiler
    df_dh_nox_emissions$`District Heating (Biomethane)` <- df_dh_nox_emissions$`District Heating (Biomethane)` * ph_nox_EF_gas_boiler
    df_dh_nox_emissions$`District Heating (Gas)` <- df_dh_nox_emissions$`District Heating (Gas)` * ph_nox_EF_gas_boiler
    df_dh_nox_emissions$`Gas Boiler` <- df_dh_nox_emissions$`Gas Boiler` * dh_nox_EF_gas_boiler
    df_dh_nox_emissions$`Gas CHP` <- df_dh_nox_emissions$`Gas CHP` * ph_nox_EF_gas_boiler
    df_dh_nox_emissions$`District Heating (Hydrogen)` <- df_dh_nox_emissions$`District Heating (Hydrogen)` * ph_nox_EF_hydrogen_boiler
    df_dh_nox_emissions$`Gas Boiler - H2-NG Blend` <- df_dh_nox_emissions$`Gas Boiler - H2-NG Blend` * dh_nox_EF_hydrogen_natgas_boiler
    df_dh_nox_emissions$`Gas CHP - H2-NG Blend` <- df_dh_nox_emissions$`Gas CHP - H2-NG Blend` * ph_nox_EF_hydrogen_natgas_boiler
    df_dh_nox_emissions$`ASHP + Hydrogen Boiler (Hydrogen)` <- df_dh_nox_emissions$`ASHP + Hydrogen Boiler (Hydrogen)` * dh_nox_EF_hydrogen_boiler
    df_dh_nox_emissions$`Hydrogen Boiler` <- df_dh_nox_emissions$`Hydrogen Boiler` * dh_nox_EF_hydrogen_boiler
    df_dh_nox_emissions$`Oil Boiler` <- df_dh_nox_emissions$`Oil Boiler` * dh_nox_EF_gasoil_boiler
    df_dh_nox_emissions$`Community Heating` <- df_dh_nox_emissions$`Community Heating` * ph_nox_EF_fueloil_boiler
    df_dh_nox_emissions$`Total Emissions` <- rowSums(df_dh_nox_emissions[, 2:17], na.rm = TRUE)
    
    
    # pNOx PWMC Impacts
    
    df_dh_nox_impacts <- df_dh_nox_emissions[, 1:17]
    
    # Absolute NOx Impacts
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      df_dh_nox_impacts$`Biofuel Boiler` <- df_dh_nox_impacts$`Biofuel Boiler` * dh_nox_IF_oil
      df_dh_nox_impacts$`ASHP + Biofuel Boiler (Biofuel)` <- df_dh_nox_impacts$`ASHP + Biofuel Boiler (Biofuel)` * dh_nox_IF_oil
      df_dh_nox_impacts$`Biomass Boiler` <- df_dh_nox_impacts$`Biomass Boiler` * dh_nox_IF_wood
      df_dh_nox_impacts$`Biomass CHP` <- df_dh_nox_impacts$`Biomass CHP` * ph_nox_IF_public
      df_dh_nox_impacts$`District Heating (Biomass)` <- df_dh_nox_impacts$`District Heating (Biomass)` * ph_nox_IF_public
      df_dh_nox_impacts$`District Heating (Biomethane)` <- df_dh_nox_impacts$`District Heating (Biomethane)` * ph_nox_IF_public
      df_dh_nox_impacts$`District Heating (Gas)` <- df_dh_nox_impacts$`District Heating (Gas)` * ph_nox_IF_public
      df_dh_nox_impacts$`Gas Boiler` <- df_dh_nox_impacts$`Gas Boiler` * dh_nox_IF_gas
      df_dh_nox_impacts$`Gas CHP` <- df_dh_nox_impacts$`Gas CHP` * ph_nox_IF_public
      df_dh_nox_impacts$`District Heating (Hydrogen)` <- df_dh_nox_impacts$`District Heating (Hydrogen)` * ph_nox_IF_public
      df_dh_nox_impacts$`Gas Boiler - H2-NG Blend` <- df_dh_nox_impacts$`Gas Boiler - H2-NG Blend` * dh_nox_IF_gas
      df_dh_nox_impacts$`Gas CHP - H2-NG Blend` <- df_dh_nox_impacts$`Gas CHP - H2-NG Blend` * ph_nox_IF_public
      df_dh_nox_impacts$`ASHP + Hydrogen Boiler (Hydrogen)` <- df_dh_nox_impacts$`ASHP + Hydrogen Boiler (Hydrogen)` * dh_nox_IF_gas
      df_dh_nox_impacts$`Hydrogen Boiler` <- df_dh_nox_impacts$`Hydrogen Boiler` * dh_nox_IF_gas
      df_dh_nox_impacts$`Oil Boiler` <- df_dh_nox_impacts$`Oil Boiler` * dh_nox_IF_oil
      df_dh_nox_impacts$`Community Heating` <- df_dh_nox_impacts$`Community Heating` * ph_nox_IF_public
      df_dh_nox_impacts$`Total Impact` <- rowSums(df_dh_nox_impacts[, 2:17], na.rm = TRUE)
      
      df_dh_nox_impacts <<- df_dh_nox_impacts
      
      long_df_dh_nox_impacts <- melt(df_dh_nox_impacts[, 1:17], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_df_dh_nox_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() + 
        labs(y = y_label_nox)
      
      ggplotly(p)
      
    }
    
    # Per TWh NOx Impacts
    
    else {
      
      df_dh_nox_impacts$`Biofuel Boiler` <- (df_dh_nox_impacts$`Biofuel Boiler` * dh_nox_IF_oil)/dh_data_sum()
      df_dh_nox_impacts$`ASHP + Biofuel Boiler (Biofuel)` <- (df_dh_nox_impacts$`ASHP + Biofuel Boiler (Biofuel)` * dh_nox_IF_oil)/dh_data_sum()
      df_dh_nox_impacts$`Biomass Boiler` <- (df_dh_nox_impacts$`Biomass Boiler` * dh_nox_IF_wood)/dh_data_sum()
      df_dh_nox_impacts$`Biomass CHP` <- (df_dh_nox_impacts$`Biomass CHP` * ph_nox_IF_public)/dh_data_sum()
      df_dh_nox_impacts$`District Heating (Biomass)` <- (df_dh_nox_impacts$`District Heating (Biomass)` * ph_nox_IF_public)/dh_data_sum()
      df_dh_nox_impacts$`District Heating (Biomethane)` <- (df_dh_nox_impacts$`District Heating (Biomethane)` * ph_nox_IF_public)/dh_data_sum()
      df_dh_nox_impacts$`District Heating (Gas)` <- (df_dh_nox_impacts$`District Heating (Gas)` * ph_nox_IF_public)/dh_data_sum()
      df_dh_nox_impacts$`Gas Boiler` <- (df_dh_nox_impacts$`Gas Boiler` * dh_nox_IF_gas)/dh_data_sum()
      df_dh_nox_impacts$`Gas CHP` <- (df_dh_nox_impacts$`Gas CHP` * ph_nox_IF_public)/dh_data_sum()
      df_dh_nox_impacts$`District Heating (Hydrogen)` <- (df_dh_nox_impacts$`District Heating (Hydrogen)` * ph_nox_IF_public)/dh_data_sum()
      df_dh_nox_impacts$`Gas Boiler - H2-NG Blend` <- (df_dh_nox_impacts$`Gas Boiler - H2-NG Blend` * dh_nox_IF_gas)/dh_data_sum()
      df_dh_nox_impacts$`Gas CHP - H2-NG Blend` <- (df_dh_nox_impacts$`Gas CHP - H2-NG Blend` * ph_nox_IF_public)/dh_data_sum()
      df_dh_nox_impacts$`ASHP + Hydrogen Boiler (Hydrogen)` <- (df_dh_nox_impacts$`ASHP + Hydrogen Boiler (Hydrogen)` * dh_nox_IF_gas)/dh_data_sum()
      df_dh_nox_impacts$`Hydrogen Boiler` <- (df_dh_nox_impacts$`Hydrogen Boiler` * dh_nox_IF_gas)/dh_data_sum()
      df_dh_nox_impacts$`Oil Boiler` <- (df_dh_nox_impacts$`Oil Boiler` * dh_nox_IF_oil)/dh_data_sum()
      df_dh_nox_impacts$`Community Heating` <- (df_dh_nox_impacts$`Community Heating` * ph_nox_IF_public)/dh_data_sum()
      df_dh_nox_impacts$`Total Impact per TWh` <- rowSums(df_dh_nox_impacts[, 2:17], na.rm = TRUE)
      
      df_dh_nox_impacts <<- df_dh_nox_impacts
      
      long_df_dh_nox_impacts <- melt(df_dh_nox_impacts[, 1:17], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_df_dh_nox_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() + 
        labs(y = y_label_nox_perTWh)
      
      ggplotly(p)
      
    }
    
  })
  
  
  
  ###################################################################################################################
  
  # Domestic PM2.5 Emissions
  
  output$dh_pm25 <- renderPlotly({
    
    req(input_dh_file())
    
    df_dh_pm25_emissions <- input_dh_file()[, 1:17]
    
    df_dh_pm25_emissions$`Biofuel Boiler` <- df_dh_pm25_emissions$`Biofuel Boiler` * dh_pm25_EF_gasoil_boiler
    df_dh_pm25_emissions$`ASHP + Biofuel Boiler (Biofuel)` <- df_dh_pm25_emissions$`ASHP + Biofuel Boiler (Biofuel)` * dh_pm25_EF_gasoil_boiler
    df_dh_pm25_emissions$`Biomass Boiler` <- df_dh_pm25_emissions$`Biomass Boiler` * dh_pm25_EF_woodpellet_boiler
    df_dh_pm25_emissions$`Biomass CHP` <- df_dh_pm25_emissions$`Biomass CHP` * ph_pm25_EF_biomass_boiler
    df_dh_pm25_emissions$`District Heating (Biomass)` <- df_dh_pm25_emissions$`District Heating (Biomass)` * ph_pm25_EF_biomass_boiler
    df_dh_pm25_emissions$`District Heating (Biomethane)` <- df_dh_pm25_emissions$`District Heating (Biomethane)` * ph_pm25_EF_gas_boiler
    df_dh_pm25_emissions$`District Heating (Gas)` <- df_dh_pm25_emissions$`District Heating (Gas)` * ph_pm25_EF_gas_boiler
    df_dh_pm25_emissions$`Gas Boiler` <- df_dh_pm25_emissions$`Gas Boiler` * dh_pm25_EF_gas_boiler
    df_dh_pm25_emissions$`Gas CHP` <- df_dh_pm25_emissions$`Gas CHP` * ph_pm25_EF_gas_boiler
    df_dh_pm25_emissions$`District Heating (Hydrogen)` <- df_dh_pm25_emissions$`District Heating (Hydrogen)` * ph_pm25_EF_hydrogen_boiler
    df_dh_pm25_emissions$`Gas Boiler - H2-NG Blend` <- df_dh_pm25_emissions$`Gas Boiler - H2-NG Blend` * dh_pm25_EF_hydrogen_natgas_boiler
    df_dh_pm25_emissions$`Gas CHP - H2-NG Blend` <- df_dh_pm25_emissions$`Gas CHP - H2-NG Blend` * ph_pm25_EF_hydrogen_natgas_boiler
    df_dh_pm25_emissions$`ASHP + Hydrogen Boiler (Hydrogen)` <- df_dh_pm25_emissions$`ASHP + Hydrogen Boiler (Hydrogen)` * dh_pm25_EF_hydrogen_boiler
    df_dh_pm25_emissions$`Hydrogen Boiler` <- df_dh_pm25_emissions$`Hydrogen Boiler` * dh_pm25_EF_hydrogen_boiler
    df_dh_pm25_emissions$`Oil Boiler` <- df_dh_pm25_emissions$`Oil Boiler` * dh_pm25_EF_gasoil_boiler
    df_dh_pm25_emissions$`Community Heating` <- df_dh_pm25_emissions$`Community Heating` * ph_pm25_EF_fueloil_boiler
    df_dh_pm25_emissions$`Total Emissions` <- rowSums(df_dh_pm25_emissions[, 2:17], na.rm = TRUE)
    
    
    # pNOx PWMC Impacts
    
    df_dh_pm25_impacts <- df_dh_pm25_emissions[, 1:17]
    
    # Absolute PM2.5 Impacts
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      df_dh_pm25_impacts$`Biofuel Boiler` <- df_dh_pm25_impacts$`Biofuel Boiler` * dh_nox_IF_oil
      df_dh_pm25_impacts$`ASHP + Biofuel Boiler (Biofuel)` <- df_dh_pm25_impacts$`ASHP + Biofuel Boiler (Biofuel)` * dh_nox_IF_oil
      df_dh_pm25_impacts$`Biomass Boiler` <- df_dh_pm25_impacts$`Biomass Boiler` * dh_nox_IF_wood
      df_dh_pm25_impacts$`Biomass CHP` <- df_dh_pm25_impacts$`Biomass CHP` * ph_nox_IF_public
      df_dh_pm25_impacts$`District Heating (Biomass)` <- df_dh_pm25_impacts$`District Heating (Biomass)` * ph_nox_IF_public
      df_dh_pm25_impacts$`District Heating (Biomethane)` <- df_dh_pm25_impacts$`District Heating (Biomethane)` * ph_nox_IF_public
      df_dh_pm25_impacts$`District Heating (Gas)` <- df_dh_pm25_impacts$`District Heating (Gas)` * ph_nox_IF_public
      df_dh_pm25_impacts$`Gas Boiler` <- df_dh_pm25_impacts$`Gas Boiler` * dh_nox_IF_gas
      df_dh_pm25_impacts$`Gas CHP` <- df_dh_pm25_impacts$`Gas CHP` * ph_nox_IF_public
      df_dh_pm25_impacts$`District Heating (Hydrogen)` <- df_dh_pm25_impacts$`District Heating (Hydrogen)` * ph_nox_IF_public
      df_dh_pm25_impacts$`Gas Boiler - H2-NG Blend` <- df_dh_pm25_impacts$`Gas Boiler - H2-NG Blend` * dh_nox_IF_gas
      df_dh_pm25_impacts$`Gas CHP - H2-NG Blend` <- df_dh_pm25_impacts$`Gas CHP - H2-NG Blend` * ph_nox_IF_public
      df_dh_pm25_impacts$`ASHP + Hydrogen Boiler (Hydrogen)` <- df_dh_pm25_impacts$`ASHP + Hydrogen Boiler (Hydrogen)` * dh_nox_IF_gas
      df_dh_pm25_impacts$`Hydrogen Boiler` <- df_dh_pm25_impacts$`Hydrogen Boiler` * dh_nox_IF_gas
      df_dh_pm25_impacts$`Oil Boiler` <- df_dh_pm25_impacts$`Oil Boiler` * dh_nox_IF_oil
      df_dh_pm25_impacts$`Community Heating` <- df_dh_pm25_impacts$`Community Heating` * ph_nox_IF_public
      df_dh_pm25_impacts$`Total Impact` <- rowSums(df_dh_pm25_impacts[, 2:17], na.rm = TRUE)
      
      df_dh_pm25_impacts <<- df_dh_pm25_impacts
      
      long_df_dh_pm25_impacts <- melt(df_dh_pm25_impacts[, 1:17], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_df_dh_pm25_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() + 
        labs(y = y_label_pm25)
      
      ggplotly(p)
      
    }
    
    # Per TWh PM2.5 Impacts
    
    else {
      
      df_dh_pm25_impacts$`Biofuel Boiler` <- (df_dh_pm25_impacts$`Biofuel Boiler` * dh_nox_IF_oil)/dh_data_sum()
      df_dh_pm25_impacts$`ASHP + Biofuel Boiler (Biofuel)` <- (df_dh_pm25_impacts$`ASHP + Biofuel Boiler (Biofuel)` * dh_nox_IF_oil)/dh_data_sum()
      df_dh_pm25_impacts$`Biomass Boiler` <- (df_dh_pm25_impacts$`Biomass Boiler` * dh_nox_IF_wood)/dh_data_sum()
      df_dh_pm25_impacts$`Biomass CHP` <- (df_dh_pm25_impacts$`Biomass CHP` * ph_nox_IF_public)/dh_data_sum()
      df_dh_pm25_impacts$`District Heating (Biomass)` <- (df_dh_pm25_impacts$`District Heating (Biomass)` * ph_nox_IF_public)/dh_data_sum()
      df_dh_pm25_impacts$`District Heating (Biomethane)` <- (df_dh_pm25_impacts$`District Heating (Biomethane)` * ph_nox_IF_public)/dh_data_sum()
      df_dh_pm25_impacts$`District Heating (Gas)` <- (df_dh_pm25_impacts$`District Heating (Gas)` * ph_nox_IF_public)/dh_data_sum()
      df_dh_pm25_impacts$`Gas Boiler` <- (df_dh_pm25_impacts$`Gas Boiler` * dh_nox_IF_gas)/dh_data_sum()
      df_dh_pm25_impacts$`Gas CHP` <- (df_dh_pm25_impacts$`Gas CHP` * ph_nox_IF_public)/dh_data_sum()
      df_dh_pm25_impacts$`District Heating (Hydrogen)` <- (df_dh_pm25_impacts$`District Heating (Hydrogen)` * ph_nox_IF_public)/dh_data_sum()
      df_dh_pm25_impacts$`Gas Boiler - H2-NG Blend` <- (df_dh_pm25_impacts$`Gas Boiler - H2-NG Blend` * dh_nox_IF_gas)/dh_data_sum()
      df_dh_pm25_impacts$`Gas CHP - H2-NG Blend` <- (df_dh_pm25_impacts$`Gas CHP - H2-NG Blend` * ph_nox_IF_public)/dh_data_sum()
      df_dh_pm25_impacts$`ASHP + Hydrogen Boiler (Hydrogen)` <- (df_dh_pm25_impacts$`ASHP + Hydrogen Boiler (Hydrogen)` * dh_nox_IF_gas)/dh_data_sum()
      df_dh_pm25_impacts$`Hydrogen Boiler` <- (df_dh_pm25_impacts$`Hydrogen Boiler` * dh_nox_IF_gas)/dh_data_sum()
      df_dh_pm25_impacts$`Oil Boiler` <- (df_dh_pm25_impacts$`Oil Boiler` * dh_nox_IF_oil)/dh_data_sum()
      df_dh_pm25_impacts$`Community Heating` <- (df_dh_pm25_impacts$`Community Heating` * ph_nox_IF_public)/dh_data_sum()
      df_dh_pm25_impacts$`Total Impact per TWh` <- rowSums(df_dh_pm25_impacts[, 2:17], na.rm = TRUE)
      
      df_dh_pm25_impacts <<- df_dh_pm25_impacts
      
      long_df_dh_pm25_impacts <- melt(df_dh_pm25_impacts[, 1:17], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_df_dh_pm25_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() + 
        labs(y = y_label_pm25_perTWh)
      
      ggplotly(p)
      
    }
    
  })
  
  
  ###################################################################################################################################################
  
  # Public and commercial Heating
  
  # Public and commercial Heating CO2 Emissions
  
  output$ph_co2 <- renderPlotly({
    
    req(input_ph_file())
    
    df_ph_co2_emissions <- input_ph_file()[, 1:17]
    
    # Absolute CO2 Emissions
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      df_ph_co2_emissions$`Biofuel Boiler` <- df_ph_co2_emissions$`Biofuel Boiler` * ph_co2_EF_fueloil_boiler
      df_ph_co2_emissions$`ASHP + Biofuel Boiler (Biofuel)` <- df_ph_co2_emissions$`ASHP + Biofuel Boiler (Biofuel)` * ph_co2_EF_fueloil_boiler
      df_ph_co2_emissions$`Biomass Boiler` <- df_ph_co2_emissions$`Biomass Boiler` * ph_co2_EF_biomass_boiler
      df_ph_co2_emissions$`Biomass CHP` <- df_ph_co2_emissions$`Biomass CHP` * ph_co2_EF_biomass_boiler
      df_ph_co2_emissions$`District Heating (Biomass)` <- df_ph_co2_emissions$`District Heating (Biomass)` * ph_co2_EF_biomass_boiler
      df_ph_co2_emissions$`District Heating (Biomethane)` <- df_ph_co2_emissions$`District Heating (Biomethane)` * ph_co2_EF_gas_boiler
      df_ph_co2_emissions$`District Heating (Gas)` <- df_ph_co2_emissions$`District Heating (Gas)` * ph_co2_EF_gas_boiler
      df_ph_co2_emissions$`Gas Boiler` <- df_ph_co2_emissions$`Gas Boiler` * ph_co2_EF_gas_boiler
      df_ph_co2_emissions$`Gas CHP` <- df_ph_co2_emissions$`Gas CHP` * ph_co2_EF_gas_boiler
      df_ph_co2_emissions$`District Heating (Hydrogen)` <- df_ph_co2_emissions$`District Heating (Hydrogen)` * ph_co2_EF_hydrogen_boiler
      df_ph_co2_emissions$`Gas Boiler - H2-NG Blend` <- df_ph_co2_emissions$`Gas Boiler - H2-NG Blend` * ph_co2_EF_hydrogen_natgas_boiler
      df_ph_co2_emissions$`Gas CHP - H2-NG Blend` <- df_ph_co2_emissions$`Gas CHP - H2-NG Blend` * ph_co2_EF_hydrogen_natgas_boiler
      df_ph_co2_emissions$`ASHP + Hydrogen Boiler (Hydrogen)` <- df_ph_co2_emissions$`ASHP + Hydrogen Boiler (Hydrogen)` * ph_co2_EF_hydrogen_boiler
      df_ph_co2_emissions$`Hydrogen Boiler` <- df_ph_co2_emissions$`Hydrogen Boiler` * ph_co2_EF_hydrogen_boiler
      df_ph_co2_emissions$`Oil Boiler` <- df_ph_co2_emissions$`Oil Boiler` * ph_co2_EF_fueloil_boiler
      df_ph_co2_emissions$`Community Heating` <- df_ph_co2_emissions$`Community Heating` * ph_co2_EF_fueloil_boiler
      df_ph_co2_emissions$`Total Emissions` <- rowSums(df_ph_co2_emissions[, 2:17], na.rm = TRUE)
      
      
      df_ph_co2_emissions <<- df_dh_co2_emissions
      
      long_df_ph_co2_emissions <- melt(df_ph_co2_emissions[, 1:17], id.vars = "Year", variable.name = "Source", value.name = "Emissions", na.rm = TRUE)
      
      p <- ggplot(long_df_ph_co2_emissions, aes(Year, Emissions, col = Source)) +
        geom_line() + 
        labs(y = y_label_co2)
      
      ggplotly(p)
      
    }
    
    # Per TWh CO2 Emissions
    
    else {
      
      df_ph_co2_emissions$`Biofuel Boiler` <- (df_ph_co2_emissions$`Biofuel Boiler` * ph_co2_EF_fueloil_boiler)/ph_data_sum()
      df_ph_co2_emissions$`ASHP + Biofuel Boiler (Biofuel)` <- (df_ph_co2_emissions$`ASHP + Biofuel Boiler (Biofuel)` * ph_co2_EF_fueloil_boiler)/ph_data_sum()
      df_ph_co2_emissions$`Biomass Boiler` <- (df_ph_co2_emissions$`Biomass Boiler` * ph_co2_EF_biomass_boiler)/ph_data_sum()
      df_ph_co2_emissions$`Biomass CHP` <- (df_ph_co2_emissions$`Biomass CHP` * ph_co2_EF_biomass_boiler)/ph_data_sum()
      df_ph_co2_emissions$`District Heating (Biomass)` <- (df_ph_co2_emissions$`District Heating (Biomass)` * ph_co2_EF_biomass_boiler)/ph_data_sum()
      df_ph_co2_emissions$`District Heating (Biomethane)` <- (df_ph_co2_emissions$`District Heating (Biomethane)` * ph_co2_EF_gas_boiler)/ph_data_sum()
      df_ph_co2_emissions$`District Heating (Gas)` <- (df_ph_co2_emissions$`District Heating (Gas)` * ph_co2_EF_gas_boiler)/ph_data_sum()
      df_ph_co2_emissions$`Gas Boiler` <- (df_ph_co2_emissions$`Gas Boiler` * ph_co2_EF_gas_boiler)/ph_data_sum()
      df_ph_co2_emissions$`Gas CHP` <- (df_ph_co2_emissions$`Gas CHP` * ph_co2_EF_gas_boiler)/ph_data_sum()
      df_ph_co2_emissions$`District Heating (Hydrogen)` <- (df_ph_co2_emissions$`District Heating (Hydrogen)` * ph_co2_EF_hydrogen_boiler)/ph_data_sum()
      df_ph_co2_emissions$`Gas Boiler - H2-NG Blend` <- (df_ph_co2_emissions$`Gas Boiler - H2-NG Blend` * ph_co2_EF_hydrogen_natgas_boiler)/ph_data_sum()
      df_ph_co2_emissions$`Gas CHP - H2-NG Blend` <- (df_ph_co2_emissions$`Gas CHP - H2-NG Blend` * ph_co2_EF_hydrogen_natgas_boiler)/ph_data_sum()
      df_ph_co2_emissions$`ASHP + Hydrogen Boiler (Hydrogen)` <- (df_ph_co2_emissions$`ASHP + Hydrogen Boiler (Hydrogen)` * ph_co2_EF_hydrogen_boiler)/ph_data_sum()
      df_ph_co2_emissions$`Hydrogen Boiler` <- (df_ph_co2_emissions$`Hydrogen Boiler` * ph_co2_EF_hydrogen_boiler)/ph_data_sum()
      df_ph_co2_emissions$`Oil Boiler` <- (df_ph_co2_emissions$`Oil Boiler` * ph_co2_EF_fueloil_boiler)/ph_data_sum()
      df_ph_co2_emissions$`Community Heating` <- (df_ph_co2_emissions$`Community Heating` * ph_co2_EF_fueloil_boiler)/ph_data_sum()
      df_ph_co2_emissions$`Total Emissions per TWh` <- rowSums(df_ph_co2_emissions[, 2:17], na.rm = TRUE)
      
      
      df_ph_co2_emissions <<- df_dh_co2_emissions
      
      long_df_ph_co2_emissions <- melt(df_ph_co2_emissions[, 1:17], id.vars = "Year", variable.name = "Source", value.name = "Emissions", na.rm = TRUE)
      
      p <- ggplot(long_df_ph_co2_emissions, aes(Year, Emissions, col = Source)) +
        geom_line() + 
        labs(y = y_label_co2_perTWh)
      
      ggplotly(p)
      
    }
    
    
  })
  
  
  ###############################################################################################################     
  
  # Public and commercial Heating NOx Emissions
  
  output$ph_nox <- renderPlotly({
    
    req(input_ph_file())
    
    df_ph_nox_emissions <- input_ph_file()[, 1:17]
    
    df_ph_nox_emissions$`Biofuel Boiler` <- df_ph_nox_emissions$`Biofuel Boiler` * ph_nox_EF_fueloil_boiler
    df_ph_nox_emissions$`ASHP + Biofuel Boiler (Biofuel)` <- df_ph_nox_emissions$`ASHP + Biofuel Boiler (Biofuel)` * ph_nox_EF_fueloil_boiler
    df_ph_nox_emissions$`Biomass Boiler` <- df_ph_nox_emissions$`Biomass Boiler` * ph_nox_EF_biomass_boiler
    df_ph_nox_emissions$`Biomass CHP` <- df_ph_nox_emissions$`Biomass CHP` * ph_nox_EF_biomass_boiler
    df_ph_nox_emissions$`District Heating (Biomass)` <- df_ph_nox_emissions$`District Heating (Biomass)` * ph_nox_EF_biomass_boiler
    df_ph_nox_emissions$`District Heating (Biomethane)` <- df_ph_nox_emissions$`District Heating (Biomethane)` * ph_nox_EF_gas_boiler
    df_ph_nox_emissions$`District Heating (Gas)` <- df_ph_nox_emissions$`District Heating (Gas)` * ph_nox_EF_gas_boiler
    df_ph_nox_emissions$`Gas Boiler` <- df_ph_nox_emissions$`Gas Boiler` * ph_nox_EF_gas_boiler
    df_ph_nox_emissions$`Gas CHP` <- df_ph_nox_emissions$`Gas CHP` * ph_nox_EF_gas_boiler
    df_ph_nox_emissions$`District Heating (Hydrogen)` <- df_ph_nox_emissions$`District Heating (Hydrogen)` * ph_nox_EF_hydrogen_boiler
    df_ph_nox_emissions$`Gas Boiler - H2-NG Blend` <- df_ph_nox_emissions$`Gas Boiler - H2-NG Blend` * ph_nox_EF_hydrogen_natgas_boiler
    df_ph_nox_emissions$`Gas CHP - H2-NG Blend` <- df_ph_nox_emissions$`Gas CHP - H2-NG Blend` * ph_nox_EF_hydrogen_natgas_boiler
    df_ph_nox_emissions$`ASHP + Hydrogen Boiler (Hydrogen)` <- df_ph_nox_emissions$`ASHP + Hydrogen Boiler (Hydrogen)` * ph_nox_EF_hydrogen_boiler
    df_ph_nox_emissions$`Hydrogen Boiler` <- df_ph_nox_emissions$`Hydrogen Boiler` * ph_nox_EF_hydrogen_boiler
    df_ph_nox_emissions$`Oil Boiler` <- df_ph_nox_emissions$`Oil Boiler` * ph_nox_EF_fueloil_boiler
    df_ph_nox_emissions$`Community Heating` <- df_ph_nox_emissions$`Community Heating` * ph_nox_EF_fueloil_boiler
    df_ph_nox_emissions$`Total Emissions` <- rowSums(df_ph_nox_emissions[, 2:17], na.rm = TRUE)
    
    
    # pNOx PWMC Impacts
    
    df_ph_nox_impacts <- df_ph_nox_emissions[, 1:17]
    
    # Absolute NOx Impacts
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      df_ph_nox_impacts$`Biofuel Boiler` <- df_ph_nox_impacts$`Biofuel Boiler` * ph_nox_IF_public
      df_ph_nox_impacts$`ASHP + Biofuel Boiler (Biofuel)` <- df_ph_nox_impacts$`ASHP + Biofuel Boiler (Biofuel)` * ph_nox_IF_public
      df_ph_nox_impacts$`Biomass Boiler` <- df_ph_nox_impacts$`Biomass Boiler` * ph_nox_IF_public
      df_ph_nox_impacts$`Biomass CHP` <- df_ph_nox_impacts$`Biomass CHP` * ph_nox_IF_public
      df_ph_nox_impacts$`District Heating (Biomass)` <- df_ph_nox_impacts$`District Heating (Biomass)` * ph_nox_IF_public
      df_ph_nox_impacts$`District Heating (Biomethane)` <- df_ph_nox_impacts$`District Heating (Biomethane)` * ph_nox_IF_public
      df_ph_nox_impacts$`District Heating (Gas)` <- df_ph_nox_impacts$`District Heating (Gas)` * ph_nox_IF_public
      df_ph_nox_impacts$`Gas Boiler` <- df_ph_nox_impacts$`Gas Boiler` * ph_nox_IF_public
      df_ph_nox_impacts$`Gas CHP` <- df_ph_nox_impacts$`Gas CHP` * ph_nox_IF_public
      df_ph_nox_impacts$`District Heating (Hydrogen)` <- df_ph_nox_impacts$`District Heating (Hydrogen)` * ph_nox_IF_public
      df_ph_nox_impacts$`Gas Boiler - H2-NG Blend` <- df_ph_nox_impacts$`Gas Boiler - H2-NG Blend` * ph_nox_IF_public
      df_ph_nox_impacts$`Gas CHP - H2-NG Blend` <- df_ph_nox_impacts$`Gas CHP - H2-NG Blend` * ph_nox_IF_public
      df_ph_nox_impacts$`ASHP + Hydrogen Boiler (Hydrogen)` <- df_ph_nox_impacts$`ASHP + Hydrogen Boiler (Hydrogen)` * ph_nox_IF_public
      df_ph_nox_impacts$`Hydrogen Boiler` <- df_ph_nox_impacts$`Hydrogen Boiler` * ph_nox_IF_public
      df_ph_nox_impacts$`Oil Boiler` <- df_ph_nox_impacts$`Oil Boiler` * ph_nox_IF_public
      df_ph_nox_impacts$`Community Heating` <- df_ph_nox_impacts$`Community Heating` * ph_nox_IF_public
      df_ph_nox_impacts$`Total Impact` <- rowSums(df_ph_nox_impacts[, 2:17], na.rm = TRUE)
      
      df_ph_nox_impacts <<- df_ph_nox_impacts
      
      long_df_ph_nox_impacts <- melt(df_ph_nox_impacts[, 1:17], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_df_ph_nox_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() + 
        labs(y = y_label_nox)
      
      ggplotly(p)
      
    }
    
    # Per TWh NOx Impacts
    
    else {
      
      df_ph_nox_impacts$`Biofuel Boiler` <- (df_ph_nox_impacts$`Biofuel Boiler` * ph_nox_IF_public)/ph_data_sum()
      df_ph_nox_impacts$`ASHP + Biofuel Boiler (Biofuel)` <- (df_ph_nox_impacts$`ASHP + Biofuel Boiler (Biofuel)` * ph_nox_IF_public)/ph_data_sum()
      df_ph_nox_impacts$`Biomass Boiler` <- (df_ph_nox_impacts$`Biomass Boiler` * ph_nox_IF_public)/ph_data_sum()
      df_ph_nox_impacts$`Biomass CHP` <- (df_ph_nox_impacts$`Biomass CHP` * ph_nox_IF_public)/ph_data_sum()
      df_ph_nox_impacts$`District Heating (Biomass)` <- (df_ph_nox_impacts$`District Heating (Biomass)` * ph_nox_IF_public)/ph_data_sum()
      df_ph_nox_impacts$`District Heating (Biomethane)` <- (df_ph_nox_impacts$`District Heating (Biomethane)` * ph_nox_IF_public)/ph_data_sum()
      df_ph_nox_impacts$`District Heating (Gas)` <- (df_ph_nox_impacts$`District Heating (Gas)` * ph_nox_IF_public)/ph_data_sum()
      df_ph_nox_impacts$`Gas Boiler` <- (df_ph_nox_impacts$`Gas Boiler` * ph_nox_IF_public)/ph_data_sum()
      df_ph_nox_impacts$`Gas CHP` <- (df_ph_nox_impacts$`Gas CHP` * ph_nox_IF_public)/ph_data_sum()
      df_ph_nox_impacts$`District Heating (Hydrogen)` <-(df_ph_nox_impacts$`District Heating (Hydrogen)` * ph_nox_IF_public)/ph_data_sum()
      df_ph_nox_impacts$`Gas Boiler - H2-NG Blend` <- (df_ph_nox_impacts$`Gas Boiler - H2-NG Blend` * ph_nox_IF_public)/ph_data_sum()
      df_ph_nox_impacts$`Gas CHP - H2-NG Blend` <- df_ph_nox_impacts$`Gas CHP - H2-NG Blend` * ph_nox_IF_public/ph_data_sum()
      df_ph_nox_impacts$`ASHP + Hydrogen Boiler (Hydrogen)` <- (df_ph_nox_impacts$`ASHP + Hydrogen Boiler (Hydrogen)` * ph_nox_IF_public)/ph_data_sum()
      df_ph_nox_impacts$`Hydrogen Boiler` <- (df_ph_nox_impacts$`Hydrogen Boiler` * ph_nox_IF_public)/ph_data_sum()
      df_ph_nox_impacts$`Oil Boiler` <- (df_ph_nox_impacts$`Oil Boiler` * ph_nox_IF_public)/ph_data_sum()
      df_ph_nox_impacts$`Community Heating` <- (df_ph_nox_impacts$`Community Heating` * ph_nox_IF_public)/ph_data_sum()
      df_ph_nox_impacts$`Total Impact per TWh` <- rowSums(df_ph_nox_impacts[, 2:17], na.rm = TRUE)
      
      df_ph_nox_impacts <<- df_ph_nox_impacts
      
      long_df_ph_nox_impacts <- melt(df_ph_nox_impacts[, 1:17], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_df_ph_nox_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() + 
        labs(y = y_label_nox_perTWh)
      
      ggplotly(p)
      
    }
    
  })
  
  
  
  ###################################################################################################################
  
  # Public and commercial PM2.5 Emissions
  
  output$ph_pm25 <- renderPlotly({
    
    req(input_ph_file())
    
    df_ph_pm25_emissions <- input_ph_file()[, 1:17]
    
    df_ph_pm25_emissions$`Biofuel Boiler` <- df_ph_pm25_emissions$`Biofuel Boiler` * ph_pm25_EF_fueloil_boiler
    df_ph_pm25_emissions$`ASHP + Biofuel Boiler (Biofuel)` <- df_ph_pm25_emissions$`ASHP + Biofuel Boiler (Biofuel)` * ph_pm25_EF_fueloil_boiler
    df_ph_pm25_emissions$`Biomass Boiler` <- df_ph_pm25_emissions$`Biomass Boiler` * ph_pm25_EF_biomass_boiler
    df_ph_pm25_emissions$`Biomass CHP` <- df_ph_pm25_emissions$`Biomass CHP` * ph_pm25_EF_biomass_boiler
    df_ph_pm25_emissions$`District Heating (Biomass)` <- df_ph_pm25_emissions$`District Heating (Biomass)` * ph_pm25_EF_biomass_boiler
    df_ph_pm25_emissions$`District Heating (Biomethane)` <- df_ph_pm25_emissions$`District Heating (Biomethane)` * ph_pm25_EF_gas_boiler
    df_ph_pm25_emissions$`District Heating (Gas)` <- df_ph_pm25_emissions$`District Heating (Gas)` * ph_pm25_EF_gas_boiler
    df_ph_pm25_emissions$`Gas Boiler` <- df_ph_pm25_emissions$`Gas Boiler` * ph_pm25_EF_gas_boiler
    df_ph_pm25_emissions$`Gas CHP` <- df_ph_pm25_emissions$`Gas CHP` * ph_pm25_EF_gas_boiler
    df_ph_pm25_emissions$`District Heating (Hydrogen)` <- df_ph_pm25_emissions$`District Heating (Hydrogen)` * ph_pm25_EF_hydrogen_boiler
    df_ph_pm25_emissions$`Gas Boiler - H2-NG Blend` <- df_ph_pm25_emissions$`Gas Boiler - H2-NG Blend` * ph_pm25_EF_hydrogen_natgas_boiler
    df_ph_pm25_emissions$`Gas CHP - H2-NG Blend` <- df_ph_pm25_emissions$`Gas CHP - H2-NG Blend` * ph_pm25_EF_hydrogen_natgas_boiler
    df_ph_pm25_emissions$`ASHP + Hydrogen Boiler (Hydrogen)` <- df_ph_pm25_emissions$`ASHP + Hydrogen Boiler (Hydrogen)` * ph_pm25_EF_hydrogen_boiler
    df_ph_pm25_emissions$`Hydrogen Boiler` <- df_ph_pm25_emissions$`Hydrogen Boiler` * ph_pm25_EF_hydrogen_boiler
    df_ph_pm25_emissions$`Oil Boiler` <- df_ph_pm25_emissions$`Oil Boiler` * ph_pm25_EF_fueloil_boiler
    df_ph_pm25_emissions$`Community Heating` <- df_ph_pm25_emissions$`Community Heating` * ph_pm25_EF_fueloil_boiler
    df_ph_pm25_emissions$`Total Emissions` <- rowSums(df_ph_pm25_emissions[, 2:17], na.rm = TRUE)
    
    
    # PM2.5 PWMC Impacts
    
    df_ph_pm25_impacts <- df_ph_pm25_emissions[, 1:17]
    
    # Absolute PM2.5 Impacts
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      df_ph_pm25_impacts$`Biofuel Boiler` <- df_ph_pm25_impacts$`Biofuel Boiler` * ph_pm25_IF_public
      df_ph_pm25_impacts$`ASHP + Biofuel Boiler (Biofuel)` <- df_ph_pm25_impacts$`ASHP + Biofuel Boiler (Biofuel)` * ph_pm25_IF_public
      df_ph_pm25_impacts$`Biomass Boiler` <- df_ph_pm25_impacts$`Biomass Boiler` * ph_pm25_IF_public
      df_ph_pm25_impacts$`Biomass CHP` <- df_ph_pm25_impacts$`Biomass CHP` * ph_pm25_IF_public
      df_ph_pm25_impacts$`District Heating (Biomass)` <- df_ph_pm25_impacts$`District Heating (Biomass)` * ph_pm25_IF_public
      df_ph_pm25_impacts$`District Heating (Biomethane)` <- df_ph_pm25_impacts$`District Heating (Biomethane)` * ph_pm25_IF_public
      df_ph_pm25_impacts$`District Heating (Gas)` <- df_ph_pm25_impacts$`District Heating (Gas)` * ph_pm25_IF_public
      df_ph_pm25_impacts$`Gas Boiler` <- df_ph_pm25_impacts$`Gas Boiler` * ph_pm25_IF_public
      df_ph_pm25_impacts$`Gas CHP` <- df_ph_pm25_impacts$`Gas CHP` * ph_pm25_IF_public
      df_ph_pm25_impacts$`District Heating (Hydrogen)` <- df_ph_pm25_impacts$`District Heating (Hydrogen)` * ph_pm25_IF_public
      df_ph_pm25_impacts$`Gas Boiler - H2-NG Blend` <- df_ph_pm25_impacts$`Gas Boiler - H2-NG Blend` * ph_pm25_IF_public
      df_ph_pm25_impacts$`Gas CHP - H2-NG Blend` <- df_ph_pm25_impacts$`Gas CHP - H2-NG Blend` * ph_pm25_IF_public
      df_ph_pm25_impacts$`ASHP + Hydrogen Boiler (Hydrogen)` <- df_ph_pm25_impacts$`ASHP + Hydrogen Boiler (Hydrogen)` * ph_pm25_IF_public
      df_ph_pm25_impacts$`Hydrogen Boiler` <- df_ph_pm25_impacts$`Hydrogen Boiler` * ph_pm25_IF_public
      df_ph_pm25_impacts$`Oil Boiler` <- df_ph_pm25_impacts$`Oil Boiler` * ph_pm25_IF_public
      df_ph_pm25_impacts$`Community Heating` <- df_ph_pm25_impacts$`Community Heating` * ph_pm25_IF_public
      df_ph_pm25_impacts$`Total Impact` <- rowSums(df_ph_pm25_impacts[, 2:17], na.rm = TRUE)
      
      df_ph_pm25_impacts <<- df_ph_pm25_impacts
      
      long_df_ph_pm25_impacts <- melt(df_ph_pm25_impacts[, 1:17], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_df_ph_pm25_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() + 
        labs(y = y_label_pm25)
      
      ggplotly(p)
      
    }
    
    # Per TWh PM2.5 Impacts
    
    else {
      
      df_ph_pm25_impacts$`Biofuel Boiler` <- (df_ph_pm25_impacts$`Biofuel Boiler` * ph_pm25_IF_public)/ph_data_sum()
      df_ph_pm25_impacts$`ASHP + Biofuel Boiler (Biofuel)` <- (df_ph_pm25_impacts$`ASHP + Biofuel Boiler (Biofuel)` * ph_pm25_IF_public)/ph_data_sum()
      df_ph_pm25_impacts$`Biomass Boiler` <- (df_ph_pm25_impacts$`Biomass Boiler` * ph_pm25_IF_public)/ph_data_sum()
      df_ph_pm25_impacts$`Biomass CHP` <- (df_ph_pm25_impacts$`Biomass CHP` * ph_pm25_IF_public)/ph_data_sum()
      df_ph_pm25_impacts$`District Heating (Biomass)` <- (df_ph_pm25_impacts$`District Heating (Biomass)` * ph_pm25_IF_public)/ph_data_sum()
      df_ph_pm25_impacts$`District Heating (Biomethane)` <- (df_ph_pm25_impacts$`District Heating (Biomethane)` * ph_pm25_IF_public)/ph_data_sum()
      df_ph_pm25_impacts$`District Heating (Gas)` <- (df_ph_pm25_impacts$`District Heating (Gas)` * ph_pm25_IF_public)/ph_data_sum()
      df_ph_pm25_impacts$`Gas Boiler` <- (df_ph_pm25_impacts$`Gas Boiler` * ph_pm25_IF_public)/ph_data_sum()
      df_ph_pm25_impacts$`Gas CHP` <- (df_ph_pm25_impacts$`Gas CHP` * ph_pm25_IF_public)/ph_data_sum()
      df_ph_pm25_impacts$`District Heating (Hydrogen)` <- (df_ph_pm25_impacts$`District Heating (Hydrogen)` * ph_pm25_IF_public)/ph_data_sum()
      df_ph_pm25_impacts$`Gas Boiler - H2-NG Blend` <- (df_ph_pm25_impacts$`Gas Boiler - H2-NG Blend` * ph_pm25_IF_public)/ph_data_sum()
      df_ph_pm25_impacts$`Gas CHP - H2-NG Blend` <- (df_ph_pm25_impacts$`Gas CHP - H2-NG Blend` * ph_pm25_IF_public)/ph_data_sum()
      df_ph_pm25_impacts$`ASHP + Hydrogen Boiler (Hydrogen)` <- (df_ph_pm25_impacts$`ASHP + Hydrogen Boiler (Hydrogen)` * ph_pm25_IF_public)/ph_data_sum()
      df_ph_pm25_impacts$`Hydrogen Boiler` <- (df_ph_pm25_impacts$`Hydrogen Boiler` * ph_pm25_IF_public)/ph_data_sum()
      df_ph_pm25_impacts$`Oil Boiler` <- (df_ph_pm25_impacts$`Oil Boiler` * ph_pm25_IF_public)/ph_data_sum()
      df_ph_pm25_impacts$`Community Heating` <- (df_ph_pm25_impacts$`Community Heating` * ph_pm25_IF_public)/ph_data_sum()
      df_ph_pm25_impacts$`Total Impact per TWh` <- rowSums(df_ph_pm25_impacts[, 2:17], na.rm = TRUE)
      
      df_ph_pm25_impacts <<- df_ph_pm25_impacts
      
      long_df_ph_pm25_impacts <- melt(df_ph_pm25_impacts[, 1:17], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_df_ph_pm25_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() + 
        labs(y = y_label_pm25_perTWh)
      
      ggplotly(p)
      
    }
    
    
  })
  
  ####################################################################################################################
  
  # Iron and Steel Combustion Emissions
  
  
  output$ironsteel_co2 <- renderPlotly({
    
    req(ironsteel_data())
    
    ironsteel_co2_emissions <- ironsteel_data()[, c(1,3:8)]
    
    # Absolute CO2 Emissions
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      ironsteel_co2_emissions$`Iron and steel - Natural Gas` <- ironsteel_co2_emissions$`Iron and steel - Natural Gas` * ironsteel_co2_EF_gas
      ironsteel_co2_emissions$`Iron and steel - Hydrogen` <- ironsteel_co2_emissions$`Iron and steel - Hydrogen` * ironsteel_co2_EF_hydrogen
      ironsteel_co2_emissions$`Iron and steel - Oil/Petroleum` <- ironsteel_co2_emissions$`Iron and steel - Oil/Petroleum` * ironsteel_co2_EF_fueloil
      ironsteel_co2_emissions$`Iron and steel - Bioenergy/Other` <- ironsteel_co2_emissions$`Iron and steel - Bioenergy/Other` * ironsteel_co2_EF_biomass
      ironsteel_co2_emissions$`Iron and steel - Gas CCS` <- ironsteel_co2_emissions$`Iron and steel - Gas CCS` * ironsteel_co2_EF_gasccs
      ironsteel_co2_emissions$`Iron and steel - BECCS` <- ironsteel_co2_emissions$`Iron and steel - BECCS` * ironsteel_co2_EF_beccs
      ironsteel_co2_emissions$`Total Emissions` <- rowSums(ironsteel_co2_emissions[ , 2:7], na.rm = TRUE)
      
      ironsteel_co2_emissions <<- ironsteel_co2_emissions
      
      long_ironsteel_co2_emissions <- melt(ironsteel_co2_emissions[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Emissions", na.rm = TRUE)
      
      p <- ggplot(long_ironsteel_co2_emissions, aes(Year, Emissions, col = Source)) +
        geom_line() +
        labs(y = y_label_co2)
      
      ggplotly(p)
      
    }
    
    # Per TWh CO2 Emissions
    
    else {
      
      ironsteel_co2_emissions$`Iron and steel - Natural Gas` <- (ironsteel_co2_emissions$`Iron and steel - Natural Gas` * ironsteel_co2_EF_gas)/ironsteel_data_sum()
      ironsteel_co2_emissions$`Iron and steel - Hydrogen` <- (ironsteel_co2_emissions$`Iron and steel - Hydrogen` * ironsteel_co2_EF_hydrogen)/ironsteel_data_sum()
      ironsteel_co2_emissions$`Iron and steel - Oil/Petroleum` <- (ironsteel_co2_emissions$`Iron and steel - Oil/Petroleum` * ironsteel_co2_EF_fueloil)/ironsteel_data_sum()
      ironsteel_co2_emissions$`Iron and steel - Bioenergy/Other` <- (ironsteel_co2_emissions$`Iron and steel - Bioenergy/Other` * ironsteel_co2_EF_biomass)/ironsteel_data_sum()
      ironsteel_co2_emissions$`Iron and steel - Gas CCS` <- (ironsteel_co2_emissions$`Iron and steel - Gas CCS` * ironsteel_co2_EF_gasccs)/ironsteel_data_sum()
      ironsteel_co2_emissions$`Iron and steel - BECCS` <- (ironsteel_co2_emissions$`Iron and steel - BECCS` * ironsteel_co2_EF_beccs)/ironsteel_data_sum()
      ironsteel_co2_emissions$`Total Emissions per TWh` <- rowSums(ironsteel_co2_emissions[ , 2:7], na.rm = TRUE)
      
      ironsteel_co2_emissions <<- ironsteel_co2_emissions
      
      long_ironsteel_co2_emissions <- melt(ironsteel_co2_emissions[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Emissions", na.rm = TRUE)
      
      p <- ggplot(long_ironsteel_co2_emissions, aes(Year, Emissions, col = Source)) +
        geom_line() +
        labs(y = y_label_co2_perTWh)
      
      ggplotly(p)
      
    }
    
    
  })
  
  ####################################################################################################################
  
  output$ironsteel_nox <- renderPlotly({
    
    req(ironsteel_data())
    
    ironsteel_nox_emissions <- ironsteel_data()[, c(1,3:8)]
    
    ironsteel_nox_emissions$`Iron and steel - Natural Gas` <- ironsteel_nox_emissions$`Iron and steel - Natural Gas` * ironsteel_nox_EF_gas
    ironsteel_nox_emissions$`Iron and steel - Hydrogen` <- ironsteel_nox_emissions$`Iron and steel - Hydrogen` * ironsteel_nox_EF_hydrogen
    ironsteel_nox_emissions$`Iron and steel - Oil/Petroleum` <- ironsteel_nox_emissions$`Iron and steel - Oil/Petroleum` * ironsteel_nox_EF_fueloil
    ironsteel_nox_emissions$`Iron and steel - Bioenergy/Other` <- ironsteel_nox_emissions$`Iron and steel - Bioenergy/Other` * ironsteel_nox_EF_biomass
    ironsteel_nox_emissions$`Iron and steel - Gas CCS` <- ironsteel_nox_emissions$`Iron and steel - Gas CCS` * ironsteel_nox_EF_gasccs
    ironsteel_nox_emissions$`Iron and steel - BECCS` <- ironsteel_nox_emissions$`Iron and steel - BECCS` * ironsteel_nox_EF_beccs
    ironsteel_nox_emissions$`Total Emissions` <- rowSums(ironsteel_nox_emissions[ , 2:7], na.rm = TRUE)
    
    
    ironsteel_nox_impacts <- ironsteel_nox_emissions[, 1:7]
    
    # Absolute NOx Impacts
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      ironsteel_nox_impacts$`Iron and steel - Natural Gas` <- ironsteel_nox_impacts$`Iron and steel - Natural Gas` * ironsteel_nox_IF
      ironsteel_nox_impacts$`Iron and steel - Hydrogen` <- ironsteel_nox_impacts$`Iron and steel - Hydrogen` * ironsteel_nox_IF
      ironsteel_nox_impacts$`Iron and steel - Oil/Petroleum` <- ironsteel_nox_impacts$`Iron and steel - Oil/Petroleum` * ironsteel_nox_IF
      ironsteel_nox_impacts$`Iron and steel - Bioenergy/Other` <- ironsteel_nox_impacts$`Iron and steel - Bioenergy/Other` * ironsteel_nox_IF
      ironsteel_nox_emissions$`Iron and steel - Gas CCS` <- ironsteel_nox_emissions$`Iron and steel - Gas CCS` * ironsteel_nox_IF
      ironsteel_nox_emissions$`Iron and steel - BECCS` <- ironsteel_nox_emissions$`Iron and steel - BECCS` * ironsteel_nox_IF
      ironsteel_nox_impacts$`Total Impact` <- rowSums(ironsteel_nox_impacts[ , 2:7], na.rm = TRUE)
      
      ironsteel_nox_impacts <<- ironsteel_nox_impacts
      
      long_ironsteel_nox_impacts <- melt(ironsteel_nox_impacts[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_ironsteel_nox_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() +
        labs(y = y_label_nox)
      
      ggplotly(p)
      
    }
    
    # Per TWh NOx Impacts
    
    else {
      
      ironsteel_nox_impacts$`Iron and steel - Natural Gas` <- (ironsteel_nox_impacts$`Iron and steel - Natural Gas` * ironsteel_nox_IF)/ironsteel_data_sum()
      ironsteel_nox_impacts$`Iron and steel - Hydrogen` <- (ironsteel_nox_impacts$`Iron and steel - Hydrogen` * ironsteel_nox_IF)/ironsteel_data_sum()
      ironsteel_nox_impacts$`Iron and steel - Oil/Petroleum` <- (ironsteel_nox_impacts$`Iron and steel - Oil/Petroleum` * ironsteel_nox_IF)/ironsteel_data_sum()
      ironsteel_nox_impacts$`Iron and steel - Bioenergy/Other` <- (ironsteel_nox_impacts$`Iron and steel - Bioenergy/Other` * ironsteel_nox_IF)/ironsteel_data_sum()
      ironsteel_nox_emissions$`Iron and steel - Gas CCS` <- (ironsteel_nox_emissions$`Iron and steel - Gas CCS` * ironsteel_nox_IF)/ironsteel_data_sum()
      ironsteel_nox_emissions$`Iron and steel - BECCS` <- (ironsteel_nox_emissions$`Iron and steel - BECCS` * ironsteel_nox_IF)/ironsteel_data_sum()
      ironsteel_nox_impacts$`Total Impact per TWh` <- rowSums(ironsteel_nox_impacts[ , 2:7], na.rm = TRUE)
      
      ironsteel_nox_impacts <<- ironsteel_nox_impacts
      
      long_ironsteel_nox_impacts <- melt(ironsteel_nox_impacts[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_ironsteel_nox_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() +
        labs(y = y_label_nox_perTWh)
      
      ggplotly(p)
      
    }
    
    
    
  })
  
  ####################################################################################################################
  
  output$ironsteel_pm25 <- renderPlotly({
    
    req(ironsteel_data())
    
    ironsteel_pm25_emissions <- ironsteel_data()[, c(1,3:8)]
    
    ironsteel_pm25_emissions$`Iron and steel - Natural Gas` <- ironsteel_pm25_emissions$`Iron and steel - Natural Gas` * ironsteel_pm25_EF_gas
    ironsteel_pm25_emissions$`Iron and steel - Hydrogen` <- ironsteel_pm25_emissions$`Iron and steel - Hydrogen` * ironsteel_pm25_EF_hydrogen
    ironsteel_pm25_emissions$`Iron and steel - Oil/Petroleum` <- ironsteel_pm25_emissions$`Iron and steel - Oil/Petroleum` * ironsteel_pm25_EF_fueloil
    ironsteel_pm25_emissions$`Iron and steel - Bioenergy/Other` <- ironsteel_pm25_emissions$`Iron and steel - Bioenergy/Other` * ironsteel_pm25_EF_biomass
    ironsteel_pm25_emissions$`Iron and steel - Gas CCS` <- ironsteel_pm25_emissions$`Iron and steel - Gas CCS` * ironsteel_pm25_EF_gasccs
    ironsteel_pm25_emissions$`Iron and steel - BECCS` <- ironsteel_pm25_emissions$`Iron and steel - BECCS` * ironsteel_pm25_EF_beccs
    ironsteel_pm25_emissions$`Total Emissions` <- rowSums(ironsteel_pm25_emissions[ , 2:7], na.rm = TRUE)
    
    
    ironsteel_pm25_impacts <- ironsteel_pm25_emissions[, 1:7]
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      ironsteel_pm25_impacts$`Iron and steel - Natural Gas` <- ironsteel_pm25_impacts$`Iron and steel - Natural Gas` * ironsteel_pm25_IF
      ironsteel_pm25_impacts$`Iron and steel - Hydrogen` <- ironsteel_pm25_impacts$`Iron and steel - Hydrogen` * ironsteel_pm25_IF
      ironsteel_pm25_impacts$`Iron and steel - Oil/Petroleum` <- ironsteel_pm25_impacts$`Iron and steel - Oil/Petroleum` * ironsteel_pm25_IF
      ironsteel_pm25_impacts$`Iron and steel - Bioenergy/Other` <- ironsteel_pm25_impacts$`Iron and steel - Bioenergy/Other` * ironsteel_pm25_IF
      ironsteel_pm25_impacts$`Iron and steel - Gas CCS` <- ironsteel_pm25_impacts$`Iron and steel - Gas CCS` * ironsteel_pm25_IF
      ironsteel_pm25_impacts$`Iron and steel - BECCS` <- ironsteel_pm25_impacts$`Iron and steel - BECCS` * ironsteel_pm25_IF
      ironsteel_pm25_impacts$`Total Impact` <- rowSums(ironsteel_pm25_impacts[ , 2:7], na.rm = TRUE)
      
      ironsteel_pm25_impacts <<- ironsteel_pm25_impacts
      
      long_ironsteel_pm25_impacts <- melt(ironsteel_pm25_impacts[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_ironsteel_pm25_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() +
        labs(y = y_label_pm25)
      
      ggplotly(p)
      
    }
    
    else {
      
      ironsteel_pm25_impacts$`Iron and steel - Natural Gas` <- (ironsteel_pm25_impacts$`Iron and steel - Natural Gas` * ironsteel_pm25_IF)/ironsteel_data_sum()
      ironsteel_pm25_impacts$`Iron and steel - Hydrogen` <- (ironsteel_pm25_impacts$`Iron and steel - Hydrogen` * ironsteel_pm25_IF)/ironsteel_data_sum()
      ironsteel_pm25_impacts$`Iron and steel - Oil/Petroleum` <- (ironsteel_pm25_impacts$`Iron and steel - Oil/Petroleum` * ironsteel_pm25_IF)/ironsteel_data_sum()
      ironsteel_pm25_impacts$`Iron and steel - Bioenergy/Other` <- (ironsteel_pm25_impacts$`Iron and steel - Bioenergy/Other` * ironsteel_pm25_IF)/ironsteel_data_sum()
      ironsteel_pm25_impacts$`Iron and steel - Gas CCS` <- (ironsteel_pm25_impacts$`Iron and steel - Gas CCS` * ironsteel_pm25_IF)/ironsteel_data_sum()
      ironsteel_pm25_impacts$`Iron and steel - BECCS` <- (ironsteel_pm25_impacts$`Iron and steel - BECCS` * ironsteel_pm25_IF)/ironsteel_data_sum()
      ironsteel_pm25_impacts$`Total Impact per TWh` <- rowSums(ironsteel_pm25_impacts[ , 2:7], na.rm = TRUE)
      
      ironsteel_pm25_impacts <<- ironsteel_pm25_impacts
      
      long_ironsteel_pm25_impacts <- melt(ironsteel_pm25_impacts[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_ironsteel_pm25_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() +
        labs(y = y_label_pm25_perTWh)
      
      ggplotly(p)
      
    }
    
  })
  
  ####################################################################################################################
  
  # Hydrogen Production Emissions
  
  output$hydrogen_co2 <- renderPlotly({
    
    req(input_hyd_file())
    
    hyd_co2_emissions <- input_hyd_file()[ , 1:4]
    
    # Absolute Hydrogen Production CO2 Emissions
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      # 20-Year GWP
      if(input$gwpPotentials == "GWP20") {
        
        hyd_co2_emissions$`Methane Reformation with CCUS (Blue)` <- hyd_co2_emissions$`Methane Reformation with CCUS (Blue)` * hyd_prod_co2_EF_blue_gwp20
        hyd_co2_emissions$`Biomass Gasification` <- hyd_co2_emissions$`Biomass Gasification` * hyd_prod_co2_EF_biomass_gasification_gwp20
        hyd_co2_emissions$`Methane Reformation (Grey)` <- hyd_co2_emissions$`Methane Reformation (Grey)` * hyd_prod_co2_EF_grey_gwp20
        hyd_co2_emissions$`Total Emissions` <- rowSums(hyd_co2_emissions[ , 2:4], na.rm = TRUE)
        
      }
      
      # 100-Year GWP
      else {
        
        hyd_co2_emissions$`Methane Reformation with CCUS (Blue)` <- hyd_co2_emissions$`Methane Reformation with CCUS (Blue)` * hyd_prod_co2_EF_blue_gwp100
        hyd_co2_emissions$`Biomass Gasification` <- hyd_co2_emissions$`Biomass Gasification` * hyd_prod_co2_EF_biomass_gasification_gwp100
        hyd_co2_emissions$`Methane Reformation (Grey)` <- hyd_co2_emissions$`Methane Reformation (Grey)` * hyd_prod_co2_EF_grey_gwp100
        hyd_co2_emissions$`Total Emissions` <- rowSums(hyd_co2_emissions[ , 2:4], na.rm = TRUE)
        
      }
      
      hyd_co2_emissions <<- hyd_co2_emissions
      
      long_hyd_co2_emissions <- melt(hyd_co2_emissions[ , 1:4], id.vars = "Year", variable.name = "Source", value.name = "Emissions", na.rm = TRUE)
      
      p <- ggplot(long_hyd_co2_emissions, aes(Year, Emissions, col = Source)) +
        geom_line() + 
        labs(y = y_label_co2e)
      
      ggplotly(p)
      
    }
    
    
    # Per TWh Hydrogen Production CO2 Emissions
    
    else {
      
      # 20-Year GWP
      if(input$gwpPotentials == "GWP20") {
        
        hyd_co2_emissions$`Methane Reformation with CCUS (Blue)` <- (hyd_co2_emissions$`Methane Reformation with CCUS (Blue)` * hyd_prod_co2_EF_blue_gwp20)/hyd_data_sum()
        hyd_co2_emissions$`Biomass Gasification` <- (hyd_co2_emissions$`Biomass Gasification` * hyd_prod_co2_EF_biomass_gasification_gwp20)/hyd_data_sum()
        hyd_co2_emissions$`Methane Reformation (Grey)` <- (hyd_co2_emissions$`Methane Reformation (Grey)` * hyd_prod_co2_EF_grey_gwp20)/hyd_data_sum()
        hyd_co2_emissions$`Total Emissions per TWh` <- rowSums(hyd_co2_emissions[ , 2:4], na.rm = TRUE)
        
      }
      
      # 100-Year GWP
      else {
        
        hyd_co2_emissions$`Methane Reformation with CCUS (Blue)` <- (hyd_co2_emissions$`Methane Reformation with CCUS (Blue)` * hyd_prod_co2_EF_blue_gwp100)/hyd_data_sum()
        hyd_co2_emissions$`Biomass Gasification` <- (hyd_co2_emissions$`Biomass Gasification` * hyd_prod_co2_EF_biomass_gasification_gwp100)/hyd_data_sum()
        hyd_co2_emissions$`Methane Reformation (Grey)` <- (hyd_co2_emissions$`Methane Reformation (Grey)` * hyd_prod_co2_EF_grey_gwp100)/hyd_data_sum()
        hyd_co2_emissions$`Total Emissions per TWh` <- rowSums(hyd_co2_emissions[ , 2:4], na.rm = TRUE)
        
      }
      
      hyd_co2_emissions <<- hyd_co2_emissions
      
      long_hyd_co2_emissions <- melt(hyd_co2_emissions[ , 1:4], id.vars = "Year", variable.name = "Source", value.name = "Emissions", na.rm = TRUE)
      
      p <- ggplot(long_hyd_co2_emissions, aes(Year, Emissions, col = Source)) +
        geom_line() + 
        labs(y = y_label_co2e_perTWh)
      
      ggplotly(p)
      
    }
    
  })
  
  ####################################################################################################################
  
  output$hydrogen_nox <- renderPlotly({
    
    req(input_hyd_file())
    
    hyd_nox_impacts <- input_hyd_file()[ , 1:4]
    
    # Absolute NOx Impact
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      hyd_nox_impacts$`Methane Reformation with CCUS (Blue)` <- hyd_nox_impacts$`Methane Reformation with CCUS (Blue)` * hyd_prod_nox_EF_blue * hyd_prod_nox_IF_Gas
      hyd_nox_impacts$`Biomass Gasification` <- hyd_nox_impacts$`Biomass Gasification` * hyd_prod_nox_EF_biomass_gasification * hyd_prod_nox_IF_Gas
      hyd_nox_impacts$`Methane Reformation (Grey)` <- hyd_nox_impacts$`Methane Reformation (Grey)` * hyd_prod_nox_EF_grey * hyd_prod_nox_IF_Gas
      hyd_nox_impacts$`Total Impact` <- rowSums(hyd_nox_impacts[ , 2:4], na.rm = TRUE)
      
      hyd_nox_impacts <<- hyd_nox_impacts
      
      long_hyd_nox_impacts <- melt(hyd_nox_impacts[ , 1:4], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_hyd_nox_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() + 
        labs(y = y_label_nox)
      
      ggplotly(p)
      
    }
    
    # Per TWh NOx Impact
    
    else {
      
      hyd_nox_impacts$`Methane Reformation with CCUS (Blue)` <- (hyd_nox_impacts$`Methane Reformation with CCUS (Blue)` * hyd_prod_nox_EF_blue * hyd_prod_nox_IF_Gas)/hyd_data_sum()
      hyd_nox_impacts$`Biomass Gasification` <- (hyd_nox_impacts$`Biomass Gasification` * hyd_prod_nox_EF_biomass_gasification * hyd_prod_nox_IF_Gas)/hyd_data_sum()
      hyd_nox_impacts$`Methane Reformation (Grey)` <- (hyd_nox_impacts$`Methane Reformation (Grey)` * hyd_prod_nox_EF_grey * hyd_prod_nox_IF_Gas)/hyd_data_sum()
      hyd_nox_impacts$`Total Impact per TWh` <- rowSums(hyd_nox_impacts[ , 2:4], na.rm = TRUE)
      
      hyd_nox_impacts <<- hyd_nox_impacts
      
      long_hyd_nox_impacts <- melt(hyd_nox_impacts[ , 1:4], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_hyd_nox_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() + 
        labs(y = y_label_nox_perTWh)
      
      ggplotly(p)
      
    }
    
  })
  
  ####################################################################################################################
  
  output$hydrogen_pm25 <- renderPlotly({
    
    req(input_hyd_file())
    
    hyd_pm25_impacts <- input_hyd_file()[ , 1:4]
    
    # Absolute PM2.5 Impact
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      hyd_pm25_impacts$`Methane Reformation with CCUS (Blue)` <- hyd_pm25_impacts$`Methane Reformation with CCUS (Blue)` * hyd_prod_pm25_EF_blue * hyd_prod_pm25_IF_Gas
      hyd_pm25_impacts$`Biomass Gasification` <- hyd_pm25_impacts$`Biomass Gasification` * hyd_prod_pm25_EF_biomass_gasification * hyd_prod_pm25_IF_Gas
      hyd_pm25_impacts$`Methane Reformation (Grey)` <- hyd_pm25_impacts$`Methane Reformation (Grey)` * hyd_prod_pm25_EF_grey * hyd_prod_pm25_IF_Gas
      hyd_pm25_impacts$`Total Impact` <- rowSums(hyd_pm25_impacts[ , 2:4], na.rm = TRUE)
      
      hyd_pm25_impacts <<- hyd_pm25_impacts
      
      long_hyd_pm25_impacts <- melt(hyd_pm25_impacts[ , 1:4], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_hyd_pm25_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() + 
        labs(y = y_label_pm25)
      
      ggplotly(p)
      
    }
    
    # Per TWh PM2.5 Impact
    
    else {
      
      hyd_pm25_impacts$`Methane Reformation with CCUS (Blue)` <- (hyd_pm25_impacts$`Methane Reformation with CCUS (Blue)` * hyd_prod_pm25_EF_blue * hyd_prod_pm25_IF_Gas)/hyd_data_sum()
      hyd_pm25_impacts$`Biomass Gasification` <- (hyd_pm25_impacts$`Biomass Gasification` * hyd_prod_pm25_EF_biomass_gasification * hyd_prod_pm25_IF_Gas)/hyd_data_sum()
      hyd_pm25_impacts$`Methane Reformation (Grey)` <- (hyd_pm25_impacts$`Methane Reformation (Grey)` * hyd_prod_pm25_EF_grey * hyd_prod_pm25_IF_Gas)/hyd_data_sum()
      hyd_pm25_impacts$`Total Impact per TWh` <- rowSums(hyd_pm25_impacts[ , 2:4], na.rm = TRUE)
      
      hyd_pm25_impacts <<- hyd_pm25_impacts
      
      long_hyd_pm25_impacts <- melt(hyd_pm25_impacts[ , 1:4], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_hyd_pm25_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() + 
        labs(y = y_label_pm25_perTWh)
      
      ggplotly(p)
      
    }
    
  })
  
  
  ####################################################################################################################
  
  # Non-ferrous metals Combustion Emissions
  # Non-ferrous metals CO2 emissions
  
  
  output$nfm_co2 <- renderPlotly({
    
    req(nfm_data())
    
    nfm_co2_emissions <- nfm_data()[, c(1,3:8)]
    
    # Absolute CO2 Emissions
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      nfm_co2_emissions$`Non-ferrous metals - Natural Gas` <- nfm_co2_emissions$`Non-ferrous metals - Natural Gas` * nfm_co2_EF_gas
      nfm_co2_emissions$`Non-ferrous metals - Hydrogen` <- nfm_co2_emissions$`Non-ferrous metals - Hydrogen` * nfm_co2_EF_hydrogen
      nfm_co2_emissions$`Non-ferrous metals - Oil/Petroleum` <- nfm_co2_emissions$`Non-ferrous metals - Oil/Petroleum` * nfm_co2_EF_fueloil
      nfm_co2_emissions$`Non-ferrous metals - Bioenergy/Other` <- nfm_co2_emissions$`Non-ferrous metals - Bioenergy/Other` * nfm_co2_EF_biomass
      nfm_co2_emissions$`Non-ferrous metals - Gas CCS` <- nfm_co2_emissions$`Non-ferrous metals - Gas CCS` * nfm_co2_EF_gascss
      nfm_co2_emissions$`Non-ferrous metals - BECCS` <- nfm_co2_emissions$`Non-ferrous metals - BECCS` * nfm_co2_EF_beccs
      nfm_co2_emissions$`Total Emissions` <- rowSums(nfm_co2_emissions[ , 2:7], na.rm = TRUE)
      
      nfm_co2_emissions <<- nfm_co2_emissions
      
      long_nfm_co2_emissions <- melt(nfm_co2_emissions[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Emissions", na.rm = TRUE)
      
      p <- ggplot(long_nfm_co2_emissions, aes(Year, Emissions, col = Source)) +
        geom_line() +
        labs(y = y_label_co2)
      
      ggplotly(p)
      
    }
    
    # Per TWh CO2 Emissions
    
    else {
      
      nfm_co2_emissions$`Non-ferrous metals - Natural Gas` <- (nfm_co2_emissions$`Non-ferrous metals - Natural Gas` * nfm_co2_EF_gas)/nfm_data_sum()
      nfm_co2_emissions$`Non-ferrous metals - Hydrogen` <- (nfm_co2_emissions$`Non-ferrous metals - Hydrogen` * nfm_co2_EF_hydrogen)/nfm_data_sum()
      nfm_co2_emissions$`Non-ferrous metals - Oil/Petroleum` <- (nfm_co2_emissions$`Non-ferrous metals - Oil/Petroleum` * nfm_co2_EF_fueloil)/nfm_data_sum()
      nfm_co2_emissions$`Non-ferrous metals - Bioenergy/Other` <- (nfm_co2_emissions$`Non-ferrous metals - Bioenergy/Other` * nfm_co2_EF_biomass)/nfm_data_sum()
      nfm_co2_emissions$`Non-ferrous metals - Gas CCS` <- (nfm_co2_emissions$`Non-ferrous metals - Gas CCS` * nfm_co2_EF_gascss)/nfm_data_sum()
      nfm_co2_emissions$`Non-ferrous metals - BECCS` <- (nfm_co2_emissions$`Non-ferrous metals - BECCS` * nfm_co2_EF_beccs)/nfm_data_sum()
      nfm_co2_emissions$`Total Emissions per TWh` <- rowSums(nfm_co2_emissions[ , 2:7], na.rm = TRUE)
      
      nfm_co2_emissions <<- nfm_co2_emissions
      
      long_nfm_co2_emissions <- melt(nfm_co2_emissions[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Emissions", na.rm = TRUE)
      
      p <- ggplot(long_nfm_co2_emissions, aes(Year, Emissions, col = Source)) +
        geom_line() +
        labs(y = y_label_co2_perTWh)
      
      ggplotly(p)
      
    }
    
  })
  
  ####################################################################################################################
  
  # Non-ferrous metals NOx Impacts 
  
  output$nfm_nox <- renderPlotly({
    
    req(nfm_data())
    
    nfm_nox_emissions <- nfm_data()[, c(1,3:8)]
    
    nfm_nox_emissions$`Non-ferrous metals - Natural Gas` <- nfm_nox_emissions$`Non-ferrous metals - Natural Gas` * nfm_nox_EF_gas
    nfm_nox_emissions$`Non-ferrous metals - Hydrogen` <- nfm_nox_emissions$`Non-ferrous metals - Hydrogen` * nfm_nox_EF_hydrogen
    nfm_nox_emissions$`Non-ferrous metals - Oil/Petroleum` <- nfm_nox_emissions$`Non-ferrous metals - Oil/Petroleum` * nfm_nox_EF_fueloil
    nfm_nox_emissions$`Non-ferrous metals - Bioenergy/Other` <- nfm_nox_emissions$`Non-ferrous metals - Bioenergy/Other` * nfm_nox_EF_biomass
    nfm_nox_emissions$`Non-ferrous metals - Gas CCS` <- nfm_nox_emissions$`Non-ferrous metals - Gas CCS` * nfm_nox_EF_gasccs
    nfm_nox_emissions$`Non-ferrous metals - BECCS` <- nfm_nox_emissions$`Non-ferrous metals - BECCS` * nfm_nox_EF_beccs
    nfm_nox_emissions$`Total Emissions` <- rowSums(nfm_nox_emissions[ , 2:7], na.rm = TRUE)
    
    
    nfm_nox_impacts <- nfm_nox_emissions[, 1:7]
    
    # Absolute NOx Impacts
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      nfm_nox_impacts$`Non-ferrous metals - Natural Gas` <- nfm_nox_impacts$`Non-ferrous metals - Natural Gas` * nfm_nox_IF
      nfm_nox_impacts$`Non-ferrous metals - Hydrogen` <- nfm_nox_impacts$`Non-ferrous metals - Hydrogen` * nfm_nox_IF
      nfm_nox_emissions$`Non-ferrous metals - Oil/Petroleum` <- nfm_nox_emissions$`Non-ferrous metals - Oil/Petroleum` * nfm_nox_IF
      nfm_nox_emissions$`Non-ferrous metals - Bioenergy/Other` <- nfm_nox_emissions$`Non-ferrous metals - Bioenergy/Other` * nfm_nox_IF
      nfm_nox_impacts$`Non-ferrous metals - Gas CCS` <- nfm_nox_impacts$`Non-ferrous metals - Gas CCS` * nfm_nox_IF
      nfm_nox_impacts$`Non-ferrous metals - BECCS` <- nfm_nox_impacts$`Non-ferrous metals - BECCS` * nfm_nox_IF
      nfm_nox_impacts$`Total Impact` <- rowSums(nfm_nox_impacts[ , 2:7], na.rm = TRUE)
      
      nfm_nox_impacts <<- nfm_nox_impacts
      
      long_nfm_nox_impacts <- melt(nfm_nox_impacts[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_nfm_nox_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() +
        labs(y = y_label_nox)
      
      ggplotly(p)
      
    }
    
    # Per TWh NOx Impacts
    
    else {
      
      nfm_nox_impacts$`Non-ferrous metals - Natural Gas` <- (nfm_nox_impacts$`Non-ferrous metals - Natural Gas` * nfm_nox_IF)/nfm_data_sum()
      nfm_nox_impacts$`Non-ferrous metals - Hydrogen` <- (nfm_nox_impacts$`Non-ferrous metals - Hydrogen` * nfm_nox_IF)/nfm_data_sum()
      nfm_nox_impacts$`Non-ferrous metals - Oil/Petroleum` <- (nfm_nox_impacts$`Non-ferrous metals - Oil/Petroleum` * nfm_nox_IF)/nfm_data_sum()
      nfm_nox_impacts$`Non-ferrous metals - Bioenergy/Other` <- (nfm_nox_impacts$`Non-ferrous metals - Bioenergy/Other` * nfm_nox_IF)/nfm_data_sum()
      nfm_nox_impacts$`Non-ferrous metals - Gas CCS` <- (nfm_nox_impacts$`Non-ferrous metals - Gas CCS` * nfm_nox_IF)/nfm_data_sum()
      nfm_nox_impacts$`Non-ferrous metals - BECCS` <- (nfm_nox_impacts$`Non-ferrous metals - BECCS` * nfm_nox_IF)/nfm_data_sum()
      nfm_nox_impacts$`Total Impact` <- rowSums(nfm_nox_impacts[ , 2:7], na.rm = TRUE)
      
      nfm_nox_impacts <<- nfm_nox_impacts
      
      long_nfm_nox_impacts <- melt(nfm_nox_impacts[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_nfm_nox_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() +
        labs(y = y_label_nox_perTWh)
      
      ggplotly(p)
      
    }
    
    
  })
  
  ####################################################################################################################
  
  # Non-ferrous metals PM2.5 Impacts
  
  output$nfm_pm25 <- renderPlotly({
    
    req(nfm_data())
    
    nfm_pm25_emissions <- nfm_data()[, c(1,3:8)]
    
    nfm_pm25_emissions$`Non-ferrous metals - Natural Gas` <- nfm_pm25_emissions$`Non-ferrous metals - Natural Gas` * nfm_pm25_EF_gas
    nfm_pm25_emissions$`Non-ferrous metals - Hydrogen` <- nfm_pm25_emissions$`Non-ferrous metals - Hydrogen` * nfm_pm25_EF_hydrogen
    nfm_pm25_emissions$`Non-ferrous metals - Oil/Petroleum` <- nfm_pm25_emissions$`Non-ferrous metals - Oil/Petroleum` * nfm_pm25_EF_fueloil
    nfm_pm25_emissions$`Non-ferrous metals - Bioenergy/Other` <- nfm_pm25_emissions$`Non-ferrous metals - Bioenergy/Other` * nfm_pm25_EF_biomass
    nfm_pm25_emissions$`Non-ferrous metals - Gas CCS` <- nfm_pm25_emissions$`Non-ferrous metals - Gas CCS` * nfm_pm25_EF_gasccs
    nfm_pm25_emissions$`Non-ferrous metals - BECCS` <- nfm_pm25_emissions$`Non-ferrous metals - BECCS` * nfm_pm25_EF_beccs
    nfm_pm25_emissions$`Total Emissions` <- rowSums(nfm_pm25_emissions[ , 2:7], na.rm = TRUE)
    
    
    nfm_pm25_impacts <- nfm_pm25_emissions[, 1:7]
    
    # Absolute PM2.5 Impacts
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      nfm_pm25_impacts$`Non-ferrous metals - Natural Gas` <- nfm_pm25_impacts$`Non-ferrous metals - Natural Gas` * nfm_pm25_IF
      nfm_pm25_impacts$`Non-ferrous metals - Hydrogen` <- nfm_pm25_impacts$`Non-ferrous metals - Hydrogen` * nfm_pm25_IF
      nfm_pm25_impacts$`Non-ferrous metals - Oil/Petroleum` <- nfm_pm25_impacts$`Non-ferrous metals - Oil/Petroleum` * nfm_pm25_IF
      nfm_pm25_impacts$`Non-ferrous metals - Bioenergy/Other` <- nfm_pm25_impacts$`Non-ferrous metals - Bioenergy/Other` * nfm_pm25_IF
      nfm_pm25_impacts$`Non-ferrous metals - Gas CCS` <- nfm_pm25_impacts$`Non-ferrous metals - Gas CCS` * nfm_pm25_IF
      nfm_pm25_impacts$`Non-ferrous metals - BECCS` <- nfm_pm25_impacts$`Non-ferrous metals - BECCS` * nfm_pm25_IF
      nfm_pm25_impacts$`Total Impact` <- rowSums(nfm_pm25_impacts[ , 2:7], na.rm = TRUE)
      
      nfm_pm25_impacts <<- nfm_pm25_impacts
      
      long_nfm_pm25_impacts <- melt(nfm_pm25_impacts[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_nfm_pm25_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() +
        labs(y = y_label_pm25)
      
      ggplotly(p)
      
    }
    
    # Per TWh PM2.5 Impacts
    
    else {
      
      nfm_pm25_impacts$`Non-ferrous metals - Natural Gas` <- (nfm_pm25_impacts$`Non-ferrous metals - Natural Gas` * nfm_pm25_IF)/nfm_data_sum()
      nfm_pm25_impacts$`Non-ferrous metals - Hydrogen` <- (nfm_pm25_impacts$`Non-ferrous metals - Hydrogen` * nfm_pm25_IF)/nfm_data_sum()
      nfm_pm25_impacts$`Non-ferrous metals - Oil/Petroleum` <- (nfm_pm25_impacts$`Non-ferrous metals - Oil/Petroleum` * nfm_pm25_IF)/nfm_data_sum()
      nfm_pm25_impacts$`Non-ferrous metals - Bioenergy/Other` <- (nfm_pm25_impacts$`Non-ferrous metals - Bioenergy/Other` * nfm_pm25_IF)/nfm_data_sum()
      nfm_pm25_impacts$`Non-ferrous metals - Gas CCS` <- (nfm_pm25_impacts$`Non-ferrous metals - Gas CCS` * nfm_pm25_IF)/nfm_data_sum()
      nfm_pm25_impacts$`Non-ferrous metals - BECCS` <- (nfm_pm25_impacts$`Non-ferrous metals - BECCS` * nfm_pm25_IF)/nfm_data_sum()
      nfm_pm25_impacts$`Total Impact per TWh` <- rowSums(nfm_pm25_impacts[ , 2:7], na.rm = TRUE)
      
      nfm_pm25_impacts <<- nfm_pm25_impacts
      
      long_nfm_pm25_impacts <- melt(nfm_pm25_impacts[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_nfm_pm25_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() +
        labs(y = y_label_pm25_perTWh)
      
      ggplotly(p) 
      
    }
    
  })
  
  ####################################################################################################################     
  
  ####################################################################################################################
  
  # Chemicals Combustion Emissions
  # Chemicals CO2 emissions
  
  
  output$chem_co2 <- renderPlotly({
    
    req(chem_data())
    
    chem_co2_emissions <- chem_data()[, c(1,3:8)]
    
    # Absolute CO2 Emissions
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      chem_co2_emissions$`Chemicals - Natural Gas` <- chem_co2_emissions$`Chemicals - Natural Gas` * chem_co2_EF_gas
      chem_co2_emissions$`Chemicals - Hydrogen` <- chem_co2_emissions$`Chemicals - Hydrogen` * chem_co2_EF_hydrogen
      chem_co2_emissions$`Chemicals - Oil/Petroleum` <- chem_co2_emissions$`Chemicals - Oil/Petroleum` * chem_co2_EF_fueloil
      chem_co2_emissions$`Chemicals - Bioenergy/Other` <- chem_co2_emissions$`Chemicals - Bioenergy/Other` * chem_co2_EF_biomass
      chem_co2_emissions$`Chemicals - Gas CCS` <- chem_co2_emissions$`Chemicals - Gas CCS` * chem_co2_EF_gasccs
      chem_co2_emissions$`Chemicals - BECCS` <- chem_co2_emissions$`Chemicals - BECCS` * chem_co2_EF_beccs
      chem_co2_emissions$`Total Emissions` <- rowSums(chem_co2_emissions[ , 2:7], na.rm = TRUE)
      
      chem_co2_emissions <<- chem_co2_emissions
      
      long_chem_co2_emissions <- melt(chem_co2_emissions[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Emissions", na.rm = TRUE)
      
      p <- ggplot(long_chem_co2_emissions, aes(Year, Emissions, col = Source)) +
        geom_line() +
        labs(y = y_label_co2)
      
      ggplotly(p)
      
    }
    
    # Per TWh CO2 Emissions
    
    else {
      
      chem_co2_emissions$`Chemicals - Natural Gas` <- (chem_co2_emissions$`Chemicals - Natural Gas` * chem_co2_EF_gas)/chem_data_sum()
      chem_co2_emissions$`Chemicals - Hydrogen` <- (chem_co2_emissions$`Chemicals - Hydrogen` * chem_co2_EF_hydrogen)/chem_data_sum()
      chem_co2_emissions$`Chemicals - Oil/Petroleum` <- (chem_co2_emissions$`Chemicals - Oil/Petroleum` * chem_co2_EF_fueloil)/chem_data_sum()
      chem_co2_emissions$`Chemicals - Bioenergy/Other` <- (chem_co2_emissions$`Chemicals - Bioenergy/Other` * chem_co2_EF_biomass)/chem_data_sum()
      chem_co2_emissions$`Chemicals - Gas CCS` <- (chem_co2_emissions$`Chemicals - Gas CCS` * chem_co2_EF_gasccs)/chem_data_sum()
      chem_co2_emissions$`Chemicals - BECCS` <- (chem_co2_emissions$`Chemicals - BECCS` * chem_co2_EF_beccs)/chem_data_sum()
      chem_co2_emissions$`Total Emissions per TWh` <- rowSums(chem_co2_emissions[ , 2:7], na.rm = TRUE)
      
      chem_co2_emissions <<- chem_co2_emissions
      
      long_chem_co2_emissions <- melt(chem_co2_emissions[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Emissions", na.rm = TRUE)
      
      p <- ggplot(long_chem_co2_emissions, aes(Year, Emissions, col = Source)) +
        geom_line() +
        labs(y = y_label_co2_perTWh)
      
      ggplotly(p)
      
    }
    
  })
  
  ####################################################################################################################
  
  # Chemicals NOx Impacts 
  
  output$chem_nox <- renderPlotly({
    
    req(chem_data())
    
    chem_nox_emissions <- chem_data()[, c(1,3:8)]
    
    chem_nox_emissions$`Chemicals - Natural Gas` <- chem_nox_emissions$`Chemicals - Natural Gas` * chem_nox_EF_gas
    chem_nox_emissions$`Chemicals - Hydrogen` <- chem_nox_emissions$`Chemicals - Hydrogen` * chem_nox_EF_hydrogen
    chem_nox_emissions$`Chemicals - Oil/Petroleum` <- chem_nox_emissions$`Chemicals - Oil/Petroleum` * chem_nox_EF_fueloil
    chem_nox_emissions$`Chemicals - Bioenergy/Other` <- chem_nox_emissions$`Chemicals - Bioenergy/Other` * chem_nox_EF_biomass
    chem_nox_emissions$`Chemicals - Gas CCS` <- chem_nox_emissions$`Chemicals - Gas CCS` * chem_nox_EF_gasccs
    chem_nox_emissions$`Chemicals - BECCS` <- chem_nox_emissions$`Chemicals - BECCS` * chem_nox_EF_beccs
    chem_nox_emissions$`Total Emissions` <- rowSums(chem_nox_emissions[ , 2:7], na.rm = TRUE)
    
    
    chem_nox_impacts <- chem_nox_emissions[, 1:7]
    
    # Absolute NOx Impacts
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      chem_nox_impacts$`Chemicals - Natural Gas` <- chem_nox_impacts$`Chemicals - Natural Gas` * chem_nox_IF
      chem_nox_impacts$`Chemicals - Hydrogen` <- chem_nox_impacts$`Chemicals - Hydrogen` * chem_nox_IF
      chem_nox_impacts$`Chemicals - Oil/Petroleum` <- chem_nox_impacts$`Chemicals - Oil/Petroleum` * chem_nox_IF
      chem_nox_impacts$`Chemicals - Bioenergy/Other` <- chem_nox_impacts$`Chemicals - Bioenergy/Other` * chem_nox_IF
      chem_nox_impacts$`Chemicals - Gas CCS` <- chem_nox_impacts$`Chemicals - Gas CCS` * chem_nox_IF
      chem_nox_impacts$`Chemicals - BECCS` <- chem_nox_impacts$`Chemicals - BECCS` * chem_nox_IF
      chem_nox_impacts$`Total Impact` <- rowSums(chem_nox_impacts[ , 2:7], na.rm = TRUE)
      
      chem_nox_impacts <<- chem_nox_impacts
      
      long_chem_nox_impacts <- melt(chem_nox_impacts[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_chem_nox_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() +
        labs(y = y_label_nox)
      
      ggplotly(p)
      
    }
    
    # Per TWh NOx Impacts
    
    else {
      
      chem_nox_impacts$`Chemicals - Natural Gas` <- (chem_nox_impacts$`Chemicals - Natural Gas` * chem_nox_IF)/chem_data_sum()
      chem_nox_impacts$`Chemicals - Hydrogen` <- (chem_nox_impacts$`Chemicals - Hydrogen` * chem_nox_IF)/chem_data_sum()
      chem_nox_impacts$`Chemicals - Oil/Petroleum` <- (chem_nox_impacts$`Chemicals - Oil/Petroleum` * chem_nox_IF)/chem_data_sum()
      chem_nox_impacts$`Chemicals - Bioenergy/Other` <- (chem_nox_impacts$`Chemicals - Bioenergy/Other` * chem_nox_IF)/chem_data_sum()
      chem_nox_impacts$`Chemicals - Gas CCS` <- (chem_nox_impacts$`Chemicals - Gas CCS` * chem_nox_IF)/chem_data_sum()
      chem_nox_impacts$`Chemicals - BECCS` <- (chem_nox_impacts$`Chemicals - BECCS` * chem_nox_IF)/chem_data_sum()
      chem_nox_impacts$`Total Impact per TWh` <- rowSums(chem_nox_impacts[ , 2:7], na.rm = TRUE)
      
      chem_nox_impacts <<- chem_nox_impacts
      
      long_chem_nox_impacts <- melt(chem_nox_impacts[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_chem_nox_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() +
        labs(y = y_label_nox_perTWh)
      
      ggplotly(p)
      
    }
    
    
  })
  
  ####################################################################################################################
  
  # Chemicals PM2.5 Impacts
  
  output$chem_pm25 <- renderPlotly({
    
    req(chem_data())
    
    chem_pm25_emissions <- chem_data()[, c(1,3:8)]
    
    chem_pm25_emissions$`Chemicals - Natural Gas` <- chem_pm25_emissions$`Chemicals - Natural Gas` * chem_pm25_EF_gas
    chem_pm25_emissions$`Chemicals - Hydrogen` <- chem_pm25_emissions$`Chemicals - Hydrogen` * chem_pm25_EF_hydrogen
    chem_pm25_emissions$`Chemicals - Oil/Petroleum` <- chem_pm25_emissions$`Chemicals - Oil/Petroleum` * chem_pm25_EF_fueloil
    chem_pm25_emissions$`Chemicals - Bioenergy/Other` <- chem_pm25_emissions$`Chemicals - Bioenergy/Other` * chem_pm25_EF_biomass
    chem_pm25_emissions$`Chemicals - Gas CCS` <- chem_pm25_emissions$`Chemicals - Gas CCS` * chem_pm25_EF_gasccs
    chem_pm25_emissions$`Chemicals - BECCS` <- chem_pm25_emissions$`Chemicals - BECCS` * chem_pm25_EF_beccs
    chem_pm25_emissions$`Total Emissions` <- rowSums(chem_pm25_emissions[ , 2:7], na.rm = TRUE)
    
    
    chem_pm25_impacts <- chem_pm25_emissions[, 1:7]
    
    # Absolute PM2.5 Impacts
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      chem_pm25_impacts$`Chemicals - Natural Gas` <- chem_pm25_impacts$`Chemicals - Natural Gas` * chem_pm25_IF
      chem_pm25_impacts$`Chemicals - Hydrogen` <- chem_pm25_impacts$`Chemicals - Hydrogen` * chem_pm25_IF
      chem_pm25_impacts$`Chemicals - Oil/Petroleum` <- chem_pm25_impacts$`Chemicals - Oil/Petroleum` * chem_pm25_IF
      chem_pm25_impacts$`Chemicals - Bioenergy/Other` <- chem_pm25_impacts$`Chemicals - Bioenergy/Other` * chem_pm25_IF
      chem_pm25_impacts$`Chemicals - Gas CCS` <- chem_pm25_impacts$`Chemicals - Gas CCS` * chem_pm25_IF
      chem_pm25_impacts$`Chemicals - BECCS` <- chem_pm25_impacts$`Chemicals - BECCS` * chem_pm25_IF
      chem_pm25_impacts$`Total Impact` <- rowSums(chem_pm25_impacts[ , 2:7], na.rm = TRUE)
      
      chem_pm25_impacts <<- chem_pm25_impacts
      
      long_chem_pm25_impacts <- melt(chem_pm25_impacts[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_chem_pm25_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() +
        labs(y = y_label_pm25)
      
      ggplotly(p)
      
    }
    
    # Per TWh PM2.5 Impacts
    
    else {
      
      chem_pm25_impacts$`Chemicals - Natural Gas` <- (chem_pm25_impacts$`Chemicals - Natural Gas` * chem_pm25_IF)/chem_data_sum()
      chem_pm25_impacts$`Chemicals - Hydrogen` <- (chem_pm25_impacts$`Chemicals - Hydrogen` * chem_pm25_IF)/chem_data_sum()
      chem_pm25_impacts$`Chemicals - Oil/Petroleum` <- (chem_pm25_impacts$`Chemicals - Oil/Petroleum` * chem_pm25_IF)/chem_data_sum()
      chem_pm25_impacts$`Chemicals - Bioenergy/Other` <- (chem_pm25_impacts$`Chemicals - Bioenergy/Other` * chem_pm25_IF)/chem_data_sum()
      chem_pm25_impacts$`Chemicals - Gas CCS` <- (chem_pm25_impacts$`Chemicals - Gas CCS` * chem_pm25_IF)/chem_data_sum()
      chem_pm25_impacts$`Chemicals - BECCS` <- (chem_pm25_impacts$`Chemicals - BECCS` * chem_pm25_IF)/chem_data_sum()
      chem_pm25_impacts$`Total Impact per TWh` <- rowSums(chem_pm25_impacts[ , 2:7], na.rm = TRUE)
      
      chem_pm25_impacts <<- chem_pm25_impacts
      
      long_chem_pm25_impacts <- melt(chem_pm25_impacts[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_chem_pm25_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() +
        labs(y = y_label_pm25_perTWh)
      
      ggplotly(p) 
      
    }
    
  })
  
  #################################################################################################################### 
  
  ####################################################################################################################
  
  # Paper and Pulp Combustion Emissions
  # Paper and Pulp CO2 emissions
  
  
  output$pap_co2 <- renderPlotly({
    
    req(pap_data())
    
    # Excluding Electricity - (Taking [12:16] into a new variable makes them [2:6])
    
    pap_co2_emissions <- pap_data()[, c(1,3:8)]
    
    # Absolute CO2 Emissions
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      pap_co2_emissions$`Paper and Pulp - Natural Gas` <- pap_co2_emissions$`Paper and Pulp - Natural Gas` * pap_co2_EF_gas
      pap_co2_emissions$`Paper and Pulp - Hydrogen` <- pap_co2_emissions$`Paper and Pulp - Hydrogen` * pap_co2_EF_hydrogen
      pap_co2_emissions$`Paper and Pulp - Oil/Petroleum` <- pap_co2_emissions$`Paper and Pulp - Oil/Petroleum` * pap_co2_EF_fueloil
      pap_co2_emissions$`Paper and Pulp - Bioenergy/Other` <- pap_co2_emissions$`Paper and Pulp - Bioenergy/Other` * pap_co2_EF_biomass
      pap_co2_emissions$`Paper and Pulp - Gas CCS` <- pap_co2_emissions$`Paper and Pulp - Gas CCS` * pap_co2_EF_gasccs
      pap_co2_emissions$`Paper and Pulp - BECCS` <- pap_co2_emissions$`Paper and Pulp - BECCS` * pap_co2_EF_beccs
      pap_co2_emissions$`Total Emissions` <- rowSums(pap_co2_emissions[ , 2:7], na.rm = TRUE)
      
      pap_co2_emissions <<- pap_co2_emissions
      
      long_pap_co2_emissions <- melt(pap_co2_emissions[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Emissions", na.rm = TRUE)
      
      p <- ggplot(long_pap_co2_emissions, aes(Year, Emissions, col = Source)) +
        geom_line() +
        labs(y = y_label_co2)
      
      ggplotly(p)
      
    }
    
    # Per TWh CO2 Emissions
    
    else {
      
      pap_co2_emissions$`Paper and Pulp - Natural Gas` <- (pap_co2_emissions$`Paper and Pulp - Natural Gas` * pap_co2_EF_gas)/pap_data_sum()
      pap_co2_emissions$`Paper and Pulp - Hydrogen` <- (pap_co2_emissions$`Paper and Pulp - Hydrogen` * pap_co2_EF_hydrogen)/pap_data_sum()
      pap_co2_emissions$`Paper and Pulp - Oil/Petroleum` <- (pap_co2_emissions$`Paper and Pulp - Oil/Petroleum` * pap_co2_EF_fueloil)/pap_data_sum()
      pap_co2_emissions$`Paper and Pulp - Bioenergy/Other` <- (pap_co2_emissions$`Paper and Pulp - Bioenergy/Other` * pap_co2_EF_biomass)/pap_data_sum()
      pap_co2_emissions$`Paper and Pulp - Gas CCS` <- (pap_co2_emissions$`Paper and Pulp - Gas CCS` * pap_co2_EF_gasccs)/pap_data_sum()
      pap_co2_emissions$`Paper and Pulp - BECCS` <- (pap_co2_emissions$`Paper and Pulp - BECCS` * pap_co2_EF_beccs)/pap_data_sum()
      pap_co2_emissions$`Total Emissions per TWh` <- rowSums(pap_co2_emissions[ , 2:7], na.rm = TRUE)
      
      pap_co2_emissions <<- pap_co2_emissions
      
      long_pap_co2_emissions <- melt(pap_co2_emissions[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Emissions", na.rm = TRUE)
      
      p <- ggplot(long_pap_co2_emissions, aes(Year, Emissions, col = Source)) +
        geom_line() +
        labs(y = y_label_co2_perTWh)
      
      ggplotly(p)
      
    }
    
  })
  
  ####################################################################################################################
  
  # Chemicals NOx Impacts 
  
  output$pap_nox <- renderPlotly({
    
    req(pap_data())
    
    pap_nox_emissions <- pap_data()[, c(1,3:8)]
    
    pap_nox_emissions$`Paper and Pulp - Natural Gas` <- pap_nox_emissions$`Paper and Pulp - Natural Gas` * pap_nox_EF_gas
    pap_nox_emissions$`Paper and Pulp - Hydrogen` <- pap_nox_emissions$`Paper and Pulp - Hydrogen` * pap_nox_EF_hydrogen
    pap_nox_emissions$`Paper and Pulp - Oil/Petroleum` <- pap_nox_emissions$`Paper and Pulp - Oil/Petroleum` * pap_nox_EF_fueloil
    pap_nox_emissions$`Paper and Pulp - Bioenergy/Other` <- pap_nox_emissions$`Paper and Pulp - Bioenergy/Other` * pap_nox_EF_biomass
    pap_nox_emissions$`Paper and Pulp - Gas CCS` <- pap_nox_emissions$`Paper and Pulp - Gas CCS` * pap_nox_EF_gasccs
    pap_nox_emissions$`Paper and Pulp - BECCS` <- pap_nox_emissions$`Paper and Pulp - BECCS` * pap_nox_EF_beccs
    pap_nox_emissions$`Total Emissions` <- rowSums(pap_nox_emissions[ , 2:7], na.rm = TRUE)
    
    
    pap_nox_impacts <- pap_nox_emissions[, 1:7]
    
    # Absolute NOx Impacts
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      pap_nox_impacts$`Paper and Pulp - Natural Gas` <- pap_nox_impacts$`Paper and Pulp - Natural Gas` * pap_nox_IF
      pap_nox_impacts$`Paper and Pulp - Hydrogen` <- pap_nox_impacts$`Paper and Pulp - Hydrogen` * pap_nox_IF
      pap_nox_impacts$`Paper and Pulp - Oil/Petroleum` <- pap_nox_impacts$`Paper and Pulp - Oil/Petroleum` * pap_nox_IF
      pap_nox_impacts$`Paper and Pulp - Bioenergy/Other` <- pap_nox_impacts$`Paper and Pulp - Bioenergy/Other` * pap_nox_IF
      pap_nox_impacts$`Paper and Pulp - Gas CCS` <- pap_nox_impacts$`Paper and Pulp - Gas CCS` * pap_nox_IF
      pap_nox_impacts$`Paper and Pulp - BECCS` <- pap_nox_impacts$`Paper and Pulp - BECCS` * pap_nox_IF
      pap_nox_impacts$`Total Impact` <- rowSums(pap_nox_impacts[ , 2:7], na.rm = TRUE)
      
      pap_nox_impacts <<- pap_nox_impacts
      
      long_pap_nox_impacts <- melt(pap_nox_impacts[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_pap_nox_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() +
        labs(y = y_label_nox)
      
      ggplotly(p)
      
    }
    
    # Per TWh NOx Impacts
    
    else {
      
      pap_nox_impacts$`Paper and Pulp - Natural Gas` <- (pap_nox_impacts$`Paper and Pulp - Natural Gas` * pap_nox_IF)/pap_data_sum()
      pap_nox_impacts$`Paper and Pulp - Hydrogen` <- (pap_nox_impacts$`Paper and Pulp - Hydrogen` * pap_nox_IF)/pap_data_sum()
      pap_nox_impacts$`Paper and Pulp - Oil/Petroleum` <- (pap_nox_impacts$`Paper and Pulp - Oil/Petroleum` * pap_nox_IF)/pap_data_sum()
      pap_nox_impacts$`Paper and Pulp - Bioenergy/Other` <- (pap_nox_impacts$`Paper and Pulp - Bioenergy/Other` * pap_nox_IF)/pap_data_sum()
      pap_nox_impacts$`Paper and Pulp - Gas CCS` <- (pap_nox_impacts$`Paper and Pulp - Gas CCS` * pap_nox_IF)/pap_data_sum()
      pap_nox_impacts$`Paper and Pulp - BECCS` <- (pap_nox_impacts$`Paper and Pulp - BECCS` * pap_nox_IF)/pap_data_sum()
      pap_nox_impacts$`Total Impact` <- rowSums(pap_nox_impacts[ , 2:7], na.rm = TRUE)
      
      pap_nox_impacts <<- pap_nox_impacts
      
      long_pap_nox_impacts <- melt(pap_nox_impacts[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_pap_nox_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() +
        labs(y = y_label_nox_perTWh)
      
      ggplotly(p)
      
    }
    
    
  })
  
  ####################################################################################################################
  
  # Chemicals PM2.5 Impacts
  
  output$pap_pm25 <- renderPlotly({
    
    req(pap_data())
    
    pap_pm25_emissions <- pap_data()[, c(1,3:8)]
    
    pap_pm25_emissions$`Paper and Pulp - Natural Gas` <- pap_pm25_emissions$`Paper and Pulp - Natural Gas` * pap_pm25_EF_gas
    pap_pm25_emissions$`Paper and Pulp - Hydrogen` <- pap_pm25_emissions$`Paper and Pulp - Hydrogen` * pap_pm25_EF_hydrogen
    pap_pm25_emissions$`Paper and Pulp - Oil/Petroleum` <- pap_pm25_emissions$`Paper and Pulp - Oil/Petroleum` * pap_pm25_EF_fueloil
    pap_pm25_emissions$`Paper and Pulp - Bioenergy/Other` <- pap_pm25_emissions$`Paper and Pulp - Bioenergy/Other` * pap_pm25_EF_biomass
    pap_pm25_emissions$`Paper and Pulp - Gas CCS` <- pap_pm25_emissions$`Paper and Pulp - Gas CCS` * pap_pm25_EF_gasccs
    pap_pm25_emissions$`Paper and Pulp - BECCS` <- pap_pm25_emissions$`Paper and Pulp - BECCS` * pap_pm25_EF_beccs
    pap_pm25_emissions$`Total Emissions` <- rowSums(pap_pm25_emissions[ , 2:7], na.rm = TRUE)
    
    
    pap_pm25_impacts <- pap_pm25_emissions[, 1:7]
    
    # Absolute PM2.5 Impacts
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      pap_pm25_impacts$`Paper and Pulp - Natural Gas` <- pap_pm25_impacts$`Paper and Pulp - Natural Gas` * pap_pm25_IF
      pap_pm25_impacts$`Paper and Pulp - Hydrogen` <- pap_pm25_impacts$`Paper and Pulp - Hydrogen` * pap_pm25_IF
      pap_pm25_impacts$`Paper and Pulp - Oil/Petroleum` <- pap_pm25_impacts$`Paper and Pulp - Oil/Petroleum` * pap_pm25_IF
      pap_pm25_impacts$`Paper and Pulp - Bioenergy/Other` <- pap_pm25_impacts$`Paper and Pulp - Bioenergy/Other` * pap_pm25_IF
      pap_pm25_impacts$`Paper and Pulp - Gas CCS` <- pap_pm25_impacts$`Paper and Pulp - Gas CCS` * pap_pm25_IF
      pap_pm25_impacts$`Paper and Pulp - BECCS` <- pap_pm25_impacts$`Paper and Pulp - BECCS` * pap_pm25_IF
      pap_pm25_impacts$`Total Impact` <- rowSums(pap_pm25_impacts[ , 2:7], na.rm = TRUE)
      
      pap_pm25_impacts <<- pap_pm25_impacts
      
      long_pap_pm25_impacts <- melt(pap_pm25_impacts[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_pap_pm25_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() +
        labs(y = y_label_pm25)
      
      ggplotly(p)
      
    }
    
    # Per TWh PM2.5 Impacts
    
    else {
      
      pap_pm25_impacts$`Paper and Pulp - Natural Gas` <- (pap_pm25_impacts$`Paper and Pulp - Natural Gas` * pap_pm25_IF)/pap_data_sum()
      pap_pm25_impacts$`Paper and Pulp - Hydrogen` <- (pap_pm25_impacts$`Paper and Pulp - Hydrogen` * pap_pm25_IF)/pap_data_sum()
      pap_pm25_impacts$`Paper and Pulp - Oil/Petroleum` <- (pap_pm25_impacts$`Paper and Pulp - Oil/Petroleum` * pap_pm25_IF)/pap_data_sum()
      pap_pm25_impacts$`Paper and Pulp - Bioenergy/Other` <- (pap_pm25_impacts$`Paper and Pulp - Bioenergy/Other` * pap_pm25_IF)/pap_data_sum()
      pap_pm25_impacts$`Paper and Pulp - Gas CCS` <- (pap_pm25_impacts$`Paper and Pulp - Gas CCS` * pap_pm25_IF)/pap_data_sum()
      pap_pm25_impacts$`Paper and Pulp - BECCS` <- (pap_pm25_impacts$`Paper and Pulp - BECCS` * pap_pm25_IF)/pap_data_sum()
      pap_pm25_impacts$`Total Impact per TWh` <- rowSums(pap_pm25_impacts[ , 2:7], na.rm = TRUE)
      
      pap_pm25_impacts <<- pap_pm25_impacts
      
      long_pap_pm25_impacts <- melt(pap_pm25_impacts[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_pap_pm25_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() +
        labs(y = y_label_pm25_perTWh)
      
      ggplotly(p) 
      
    }
    
  })
  
  #################################################################################################################### 
  
  ####################################################################################################################
  
  # Food and Drink Combustion Emissions
  # Food and Drink CO2 emissions
  
  
  output$food_co2 <- renderPlotly({
    
    req(food_data())
    
    # Excluding Electricity - (Taking [12:16] into a new variable makes them [2:6])
    
    food_co2_emissions <- food_data()[, c(1,3:8)]
    
    # Absolute CO2 Emissions
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      food_co2_emissions$`Food and Beverages - Natural Gas` <- food_co2_emissions$`Food and Beverages - Natural Gas` * food_co2_EF_gas
      food_co2_emissions$`Food and Beverages - Hydrogen` <- food_co2_emissions$`Food and Beverages - Hydrogen` * food_co2_EF_hydrogen
      food_co2_emissions$`Food and Beverages - Oil/Petroleum` <- food_co2_emissions$`Food and Beverages - Oil/Petroleum` * food_co2_EF_fueloil
      food_co2_emissions$`Food and Beverages - Bioenergy/Other` <- food_co2_emissions$`Food and Beverages - Bioenergy/Other` * food_co2_EF_biomass
      food_co2_emissions$`Food and Beverages - Gas CCS` <- food_co2_emissions$`Food and Beverages - Gas CCS` * food_co2_EF_gasccs
      food_co2_emissions$`Food and Beverages - BECCS` <- food_co2_emissions$`Food and Beverages - BECCS` * food_co2_EF_beccs
      food_co2_emissions$`Total Emissions` <- rowSums(food_co2_emissions[ , 2:7], na.rm = TRUE)
      
      food_co2_emissions <<- food_co2_emissions
      
      long_food_co2_emissions <- melt(food_co2_emissions[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Emissions", na.rm = TRUE)
      
      p <- ggplot(long_food_co2_emissions, aes(Year, Emissions, col = Source)) +
        geom_line() +
        labs(y = y_label_co2)
      
      ggplotly(p)
      
    }
    
    # Per TWh CO2 Emissions
    
    else {
      
      food_co2_emissions$`Food and Beverages - Natural Gas` <- (food_co2_emissions$`Food and Beverages - Natural Gas` * food_co2_EF_gas)/food_data_sum()
      food_co2_emissions$`Food and Beverages - Hydrogen` <- (food_co2_emissions$`Food and Beverages - Hydrogen` * food_co2_EF_hydrogen)/food_data_sum()
      food_co2_emissions$`Food and Beverages - Oil/Petroleum` <- (food_co2_emissions$`Food and Beverages - Oil/Petroleum` * food_co2_EF_fueloil)/food_data_sum()
      food_co2_emissions$`Food and Beverages - Bioenergy/Other` <- (food_co2_emissions$`Food and Beverages - Bioenergy/Other` * food_co2_EF_biomass)/food_data_sum()
      food_co2_emissions$`Food and Beverages - Gas CCS` <- (food_co2_emissions$`Food and Beverages - Gas CCS` * food_co2_EF_gasccs)/food_data_sum()
      food_co2_emissions$`Food and Beverages - BECCS` <- (food_co2_emissions$`Food and Beverages - BECCS` * food_co2_EF_beccs)/food_data_sum()
      food_co2_emissions$`Total Emissions per TWh` <- rowSums(food_co2_emissions[ , 2:7], na.rm = TRUE)
      
      food_co2_emissions <<- food_co2_emissions
      
      long_food_co2_emissions <- melt(food_co2_emissions[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Emissions", na.rm = TRUE)
      
      p <- ggplot(long_food_co2_emissions, aes(Year, Emissions, col = Source)) +
        geom_line() +
        labs(y = y_label_co2_perTWh)
      
      ggplotly(p)
      
    }
    
  })
  
  ####################################################################################################################
  
  # Food and Beverages NOx Impacts 
  
  output$food_nox <- renderPlotly({
    
    req(food_data())
    
    food_nox_emissions <- food_data()[, c(1,3:8)]
    
    food_nox_emissions$`Food and Beverages - Natural Gas` <- food_nox_emissions$`Food and Beverages - Natural Gas` * food_nox_EF_gas
    food_nox_emissions$`Food and Beverages - Hydrogen` <- food_nox_emissions$`Food and Beverages - Hydrogen` * food_nox_EF_hydrogen
    food_nox_emissions$`Food and Beverages - Oil/Petroleum` <- food_nox_emissions$`Food and Beverages - Oil/Petroleum` * food_nox_EF_fueloil
    food_nox_emissions$`Food and Beverages - Bioenergy/Other` <- food_nox_emissions$`Food and Beverages - Bioenergy/Other` * food_nox_EF_biomass
    food_nox_emissions$`Food and Beverages - Gas CCS` <- food_nox_emissions$`Food and Beverages - Gas CCS` * food_nox_EF_gasccs
    food_nox_emissions$`Food and Beverages - BECCS` <- food_nox_emissions$`Food and Beverages - BECCS` * food_nox_EF_beccs
    food_nox_emissions$`Total Emissions` <- rowSums(food_nox_emissions[ , 2:7], na.rm = TRUE)
    
    
    food_nox_impacts <- food_nox_emissions[, 1:7]
    
    # Absolute NOx Impacts
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      food_nox_impacts$`Food and Beverages - Natural Gas` <- food_nox_impacts$`Food and Beverages - Natural Gas` * food_nox_IF
      food_nox_impacts$`Food and Beverages - Hydrogen` <- food_nox_impacts$`Food and Beverages - Hydrogen` * food_nox_IF
      food_nox_impacts$`Food and Beverages - Oil/Petroleum` <- food_nox_impacts$`Food and Beverages - Oil/Petroleum` * food_nox_IF
      food_nox_impacts$`Food and Beverages - Bioenergy/Other` <- food_nox_impacts$`Food and Beverages - Bioenergy/Other` * food_nox_IF
      food_nox_impacts$`Food and Beverages - Gas CCS` <- food_nox_impacts$`Food and Beverages - Gas CCS` * food_nox_IF
      food_nox_impacts$`Food and Beverages - BECCS` <- food_nox_impacts$`Food and Beverages - BECCS` * food_nox_IF
      food_nox_impacts$`Total Impact` <- rowSums(food_nox_impacts[ , 2:7], na.rm = TRUE)
      
      food_nox_impacts <<- food_nox_impacts
      
      long_food_nox_impacts <- melt(food_nox_impacts[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_food_nox_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() +
        labs(y = y_label_nox)
      
      ggplotly(p)
      
    }
    
    # Per TWh NOx Impacts
    
    else {
      
      food_nox_impacts$`Food and Beverages - Natural Gas` <- (food_nox_impacts$`Food and Beverages - Natural Gas` * food_nox_IF)/food_data_sum()
      food_nox_impacts$`Food and Beverages - Hydrogen` <- (food_nox_impacts$`Food and Beverages - Hydrogen` * food_nox_IF)/food_data_sum()
      food_nox_impacts$`Food and Beverages - Oil/Petroleum` <- (food_nox_impacts$`Food and Beverages - Oil/Petroleum` * food_nox_IF)/food_data_sum()
      food_nox_impacts$`Food and Beverages - Bioenergy/Other` <- (food_nox_impacts$`Food and Beverages - Bioenergy/Other` * food_nox_IF)/food_data_sum()
      food_nox_impacts$`Food and Beverages - Gas CCS` <- (food_nox_impacts$`Food and Beverages - Gas CCS` * food_nox_IF)/food_data_sum()
      food_nox_impacts$`Food and Beverages - BECCS` <- (food_nox_impacts$`Food and Beverages - BECCS` * food_nox_IF)/food_data_sum()
      food_nox_impacts$`Total Impact` <- rowSums(food_nox_impacts[ , 2:7], na.rm = TRUE)
      
      food_nox_impacts <<- food_nox_impacts
      
      long_food_nox_impacts <- melt(food_nox_impacts[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_food_nox_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() +
        labs(y = y_label_nox_perTWh)
      
      ggplotly(p)
      
    }
    
    
  })
  
  ####################################################################################################################
  
  # Chemicals PM2.5 Impacts
  
  output$food_pm25 <- renderPlotly({
    
    req(food_data())
    
    food_pm25_emissions <- food_data()[, c(1,3:8)]
    
    food_pm25_emissions$`Food and Beverages - Natural Gas` <- food_pm25_emissions$`Food and Beverages - Natural Gas` * food_pm25_EF_gas
    food_pm25_emissions$`Food and Beverages - Hydrogen` <- food_pm25_emissions$`Food and Beverages - Hydrogen` * food_pm25_EF_hydrogen
    food_pm25_emissions$`Food and Beverages - Oil/Petroleum` <- food_pm25_emissions$`Food and Beverages - Oil/Petroleum` * food_pm25_EF_fueloil
    food_pm25_emissions$`Food and Beverages - Bioenergy/Other` <- food_pm25_emissions$`Food and Beverages - Bioenergy/Other` * food_pm25_EF_biomass
    food_pm25_emissions$`Food and Beverages - Gas CCS` <- food_pm25_emissions$`Food and Beverages - Gas CCS` * food_pm25_EF_gasccs
    food_pm25_emissions$`Food and Beverages - BECCS` <- food_pm25_emissions$`Food and Beverages - BECCS` * food_pm25_EF_beccs
    food_pm25_emissions$`Total Emissions` <- rowSums(food_pm25_emissions[ , 2:7], na.rm = TRUE)
    
    
    food_pm25_impacts <- food_pm25_emissions[, 1:7]
    
    # Absolute PM2.5 Impacts
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      food_pm25_impacts$`Food and Beverages - Natural Gas` <- food_pm25_impacts$`Food and Beverages - Natural Gas` * food_pm25_IF
      food_pm25_impacts$`Food and Beverages - Hydrogen` <- food_pm25_impacts$`Food and Beverages - Hydrogen` * food_pm25_IF
      food_pm25_impacts$`Food and Beverages - Oil/Petroleum` <- food_pm25_impacts$`Food and Beverages - Oil/Petroleum` * food_pm25_IF
      food_pm25_impacts$`Food and Beverages - Bioenergy/Other` <- food_pm25_impacts$`Food and Beverages - Bioenergy/Other` * food_pm25_IF
      food_pm25_impacts$`Food and Beverages - Gas CCS` <- food_pm25_impacts$`Food and Beverages - Gas CCS` * food_pm25_IF
      food_pm25_impacts$`Food and Beverages - BECCS` <- food_pm25_impacts$`Food and Beverages - BECCS` * food_pm25_IF
      food_pm25_impacts$`Total Impact` <- rowSums(food_pm25_impacts[ , 2:7], na.rm = TRUE)
      
      food_pm25_impacts <<- food_pm25_impacts
      
      long_food_pm25_impacts <- melt(food_pm25_impacts[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_food_pm25_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() +
        labs(y = y_label_pm25)
      
      ggplotly(p)
      
    }
    
    # Per TWh PM2.5 Impacts
    
    else {
      
      food_pm25_impacts$`Food and Beverages - Natural Gas` <- (food_pm25_impacts$`Food and Beverages - Natural Gas` * food_pm25_IF)/food_data_sum()
      food_pm25_impacts$`Food and Beverages - Hydrogen` <- (food_pm25_impacts$`Food and Beverages - Hydrogen` * food_pm25_IF)/food_data_sum()
      food_pm25_impacts$`Food and Beverages - Oil/Petroleum` <- (food_pm25_impacts$`Food and Beverages - Oil/Petroleum` * food_pm25_IF)/food_data_sum()
      food_pm25_impacts$`Food and Beverages - Bioenergy/Other` <- (food_pm25_impacts$`Food and Beverages - Bioenergy/Other` * food_pm25_IF)/food_data_sum()
      food_pm25_impacts$`Food and Beverages - Gas CCS` <- (food_pm25_impacts$`Food and Beverages - Gas CCS` * food_pm25_IF)/food_data_sum()
      food_pm25_impacts$`Food and Beverages - BECCS` <- (food_pm25_impacts$`Food and Beverages - BECCS` * food_pm25_IF)/food_data_sum()
      food_pm25_impacts$`Total Impact per TWh` <- rowSums(food_pm25_impacts[ , 2:7], na.rm = TRUE)
      
      food_pm25_impacts <<- food_pm25_impacts
      
      long_food_pm25_impacts <- melt(food_pm25_impacts[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_food_pm25_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() +
        labs(y = y_label_pm25_perTWh)
      
      ggplotly(p) 
      
    }
    
  })
  
  ####################################################################################################################   
  
  
}

shinyApp(ui = ui, server = server)