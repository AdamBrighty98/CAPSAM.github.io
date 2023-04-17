# Loading in data - all impact factors, emission factors, and assumption CSV files
elec_gen_EFs <- read.csv("EFs_and_IFs/Elec_EFs_kt_TWh.csv")
dom_heat_EFs <- read.csv("EFs_and_IFs/Res_Heat_EFs_kt_TWh.csv")
pub_heat_EFs <- read.csv("EFs_and_IFs/Pub_Heat_EFs_kt_TWh.csv")
ind_com_EFs <- read.csv("EFs_and_IFs/Ind_Com_EFs_kt_TWh.csv")
hyd_prod_EFs <- read.csv("EFs_and_IFs/Hydrogen_Production_EFs_kt_TWh.csv")
impact_factors <- read.csv("EFs_and_IFs/UK_to_UK_IFs.csv")
<<<<<<< HEAD
dh_vector_share <- read.csv("EFs_and_IFs/DH_VectorShare.csv")
ph_vector_share <- read.csv("EFs_and_IFs/PH_VectorShare.csv")
ind_vector_share <- read.csv("EFs_and_IFs/Ind_VectorShare.csv")
=======


>>>>>>> 245ff27aba04bc04dcd05669e262b4cde1930467

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

# Chemicals Impact Factors
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

# Paper and Pulp Impact Factors
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

# Food and Beverages Impact Factors
food_nox_IF <- impact_factors[21,7]
food_pm25_IF <- impact_factors[21,6]

#################################################################################################
# Mineral Products Combustion - Cement from UKIAM

# Mineral Products CO2 Emission Factors
min_co2_EF_coal <- ind_com_EFs[44,3]
min_co2_EF_fueloil <- ind_com_EFs[45,3]
min_co2_EF_gasoil <- ind_com_EFs[46,3]
min_co2_EF_gas <- ind_com_EFs[47,3]
min_co2_EF_hydrogen <- ind_com_EFs[48,3]
min_co2_EF_biomass <- ind_com_EFs[49,3]
min_co2_EF_gasccs <- ind_com_EFs[50,3]
min_co2_EF_beccs <- ind_com_EFs[51,3]

# Mineral Products NOx Emission Factors
min_nox_EF_coal <- ind_com_EFs[44,4]
min_nox_EF_fueloil <- ind_com_EFs[45,4]
min_nox_EF_gasoil <- ind_com_EFs[46,4]
min_nox_EF_gas <- ind_com_EFs[47,4]
min_nox_EF_hydrogen <- ind_com_EFs[48,4]
min_nox_EF_biomass <- ind_com_EFs[49,4]
min_nox_EF_gasccs <- ind_com_EFs[50,4]
min_nox_EF_beccs <- ind_com_EFs[51,4]

# Mineral Products PM2.5 Emission Factors
min_pm25_EF_coal <- ind_com_EFs[44,5]
min_pm25_EF_fueloil <- ind_com_EFs[45,5]
min_pm25_EF_gasoil <- ind_com_EFs[46,5]
min_pm25_EF_gas <- ind_com_EFs[47,5]
min_pm25_EF_hydrogen <- ind_com_EFs[48,5]
min_pm25_EF_biomass <- ind_com_EFs[49,5]
min_pm25_EF_gasccs <- ind_com_EFs[50,5]
min_pm25_EF_beccs <- ind_com_EFs[51,5]

# Mineral Products Impact Factors 
min_nox_IF <- impact_factors[13,7]
min_pm25_IF <- impact_factors[13,6]

#################################################################################################
# Textiles Combustion

# Textiles CO2 Emission Factors
text_co2_EF_coal <- ind_com_EFs[44,3]
text_co2_EF_fueloil <- ind_com_EFs[45,3]
text_co2_EF_gasoil <- ind_com_EFs[46,3]
text_co2_EF_gas <- ind_com_EFs[47,3]
text_co2_EF_hydrogen <- ind_com_EFs[48,3]
text_co2_EF_biomass <- ind_com_EFs[49,3]
text_co2_EF_gasccs <- ind_com_EFs[50,3]
text_co2_EF_beccs <- ind_com_EFs[51,3]

# Textiles NOx Emission Factors
text_nox_EF_coal <- ind_com_EFs[44,4]
text_nox_EF_fueloil <- ind_com_EFs[45,4]
text_nox_EF_gasoil <- ind_com_EFs[46,4]
text_nox_EF_gas <- ind_com_EFs[47,4]
text_nox_EF_hydrogen <- ind_com_EFs[48,4]
text_nox_EF_biomass <- ind_com_EFs[49,4]
text_nox_EF_gasccs <- ind_com_EFs[50,4]
text_nox_EF_beccs <- ind_com_EFs[51,4]

# Textiles PM2.5 Emission Factors
text_pm25_EF_coal <- ind_com_EFs[44,5]
text_pm25_EF_fueloil <- ind_com_EFs[45,5]
text_pm25_EF_gasoil <- ind_com_EFs[46,5]
text_pm25_EF_gas <- ind_com_EFs[47,5]
text_pm25_EF_hydrogen <- ind_com_EFs[48,5]
text_pm25_EF_biomass <- ind_com_EFs[49,5]
text_pm25_EF_gasccs <- ind_com_EFs[50,5]
text_pm25_EF_beccs <- ind_com_EFs[51,5]

# Textiles Impact Factors 
text_nox_IF <- impact_factors[21,7]
text_pm25_IF <- impact_factors[21,6]

#################################################################################################
# Construction Combustion

# Construction CO2 Emission Factors
con_co2_EF_coal <- ind_com_EFs[52,3]
con_co2_EF_derv <- ind_com_EFs[53,3]
con_co2_EF_gasoil <- ind_com_EFs[54,3]
con_co2_EF_petrol <- ind_com_EFs[55,3]
con_co2_EF_gas <- ind_com_EFs[56,3]
con_co2_EF_hydrogen <- ind_com_EFs[57,3]
con_co2_EF_biomass <- ind_com_EFs[58,3]
con_co2_EF_gasccs <- ind_com_EFs[59,3]
con_co2_EF_beccs <- ind_com_EFs[60,3]

# Construction NOx Emission Factors
con_nox_EF_coal <- ind_com_EFs[52,4]
con_nox_EF_derv <- ind_com_EFs[53,4]
con_nox_EF_gasoil <- ind_com_EFs[54,4]
con_nox_EF_petrol <- ind_com_EFs[55,4]
con_nox_EF_gas <- ind_com_EFs[56,4]
con_nox_EF_hydrogen <- ind_com_EFs[57,4]
con_nox_EF_biomass <- ind_com_EFs[58,4]
con_nox_EF_gasccs <- ind_com_EFs[59,4]
con_nox_EF_beccs <- ind_com_EFs[60,4]

# Construction PM2.5 Emission Factors
con_pm25_EF_coal <- ind_com_EFs[52,5]
con_pm25_EF_fueloil <- ind_com_EFs[53,5]
con_pm25_EF_gasoil <- ind_com_EFs[54,5]
con_pm25_EF_petrol <- ind_com_EFs[55,5]
con_pm25_EF_gas <- ind_com_EFs[56,5]
con_pm25_EF_hydrogen <- ind_com_EFs[57,5]
con_pm25_EF_biomass <- ind_com_EFs[58,5]
con_pm25_EF_gasccs <- ind_com_EFs[59,5]
con_pm25_EF_beccs <- ind_com_EFs[60,5]

# Construction Impact Factors 
con_nox_IF <- impact_factors[21,7]
con_pm25_IF <- impact_factors[21,6]

#################################################################################################
# Other Industrial Combustion

# Other Industrial CO2 Emission Factors
other_co2_EF_gas <- ind_com_EFs[61,3]
other_co2_EF_burningoil <- ind_com_EFs[62,3]
other_co2_EF_coal <- ind_com_EFs[63,3]
other_co2_EF_cokeovengas <- ind_com_EFs[64,3]
other_co2_EF_collierymethane <- ind_com_EFs[65,3]
other_co2_EF_fueloil <- ind_com_EFs[66,3]
other_co2_EF_gasoil <- ind_com_EFs[67,3]
other_co2_EF_lpg <- ind_com_EFs[68,3]
other_co2_EF_hydrogen <- ind_com_EFs[69,3]
other_co2_EF_biomass <- ind_com_EFs[70,3]
other_co2_EF_gasccs <- ind_com_EFs[71,3]
other_co2_EF_beccs <- ind_com_EFs[72,3]

# Other Industrial NOx Emission Factors
other_nox_EF_gas <- ind_com_EFs[61,4]
other_nox_EF_burningoil <- ind_com_EFs[62,4]
other_nox_EF_coal <- ind_com_EFs[63,4]
other_nox_EF_cokeovengas <- ind_com_EFs[64,4]
other_nox_EF_collierymethane <- ind_com_EFs[65,4]
other_nox_EF_fueloil <- ind_com_EFs[66,4]
other_nox_EF_gasoil <- ind_com_EFs[67,4]
other_nox_EF_lpg <- ind_com_EFs[68,4]
other_nox_EF_hydrogen <- ind_com_EFs[69,4]
other_nox_EF_biomass <- ind_com_EFs[70,4]
other_nox_EF_gasccs <- ind_com_EFs[71,4]
other_nox_EF_beccs <- ind_com_EFs[72,4]

# Other Industrial PM2.5 Emission Factors
other_pm25_EF_gas <- ind_com_EFs[61,4]
other_pm25_EF_burningoil <- ind_com_EFs[62,4]
other_pm25_EF_coal <- ind_com_EFs[63,4]
other_pm25_EF_cokeovengas <- ind_com_EFs[64,4]
other_pm25_EF_collierymethane <- ind_com_EFs[65,4]
other_pm25_EF_fueloil <- ind_com_EFs[66,4]
other_pm25_EF_gasoil <- ind_com_EFs[67,4]
other_pm25_EF_lpg <- ind_com_EFs[68,4]
other_pm25_EF_hydrogen <- ind_com_EFs[69,4]
other_pm25_EF_biomass <- ind_com_EFs[70,4]
other_pm25_EF_gasccs <- ind_com_EFs[71,4]
other_pm25_EF_beccs <- ind_com_EFs[72,4]

# Other Industrial Impact Factors 
other_nox_IF <- impact_factors[21,7]
other_pm25_IF <- impact_factors[21,6]

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

###############################################################################################################################################

# Domestic Heating Vector Shares
dh_vector_share_biofuel_boiler <- dh_vector_share[1,2]
dh_vector_share_ashp_biofuel_boiler_biofuel <- dh_vector_share[2,2]
dh_vector_share_biomass_boiler <- dh_vector_share[3,2]
dh_vector_share_biomass_chp <- dh_vector_share[4,2]
dh_vector_share_district_biomass <- dh_vector_share[5,2]
dh_vector_share_district_biomethane <- dh_vector_share[6,2]
dh_vector_share_district_gas <- dh_vector_share[7,2]
dh_vector_share_gas_boiler <- dh_vector_share[8,2]
dh_vector_share_gas_chp <- dh_vector_share[9,2]
dh_vector_share_district_hydrogen <- dh_vector_share[10,2]
dh_vector_share_gas_boiler_h2_blend <- dh_vector_share[11,2]
dh_vector_share_gas_chp_h2_blend <- dh_vector_share[12,2]
dh_vector_share_ashp_hydrogen_boiler_hydrogen <- dh_vector_share[13,2]
dh_vector_share_hydrogen_boiler <- dh_vector_share[14,2]
dh_vector_share_oil_boiler <- dh_vector_share[15,2]
dh_vector_share_community_heat <- dh_vector_share[16,2]
dh_vector_share_district_waste_heat <- dh_vector_share[17,2]
dh_vector_share_ashp <- dh_vector_share[18,2]
dh_vector_share_gshp <- dh_vector_share[19,2]
dh_vector_share_ashp_biofuel_boiler_electricity <- dh_vector_share[20,2]
dh_vector_share_ashp_electric_resistive <- dh_vector_share[21,2]
dh_vector_share_ashp_hydrogen_boiler_electricity <- dh_vector_share[22,2]
dh_vector_share_ashp_solar_thermal_electricity <- dh_vector_share[23,2]
dh_vector_share_electric_resistive <- dh_vector_share[24,2]
dh_vector_share_electric_storage <- dh_vector_share[25,2]
dh_vector_share_district_electricity <- dh_vector_share[26,2]
dh_vector_share_ashp_solar_thermal_solar <- dh_vector_share[27,2]

###############################################################################################################################################

# Public Heating Vector Shares
ph_vector_share_biofuel_boiler <- ph_vector_share[1,2]
ph_vector_share_ashp_biofuel_boiler_biofuel <- ph_vector_share[2,2]
ph_vector_share_biomass_boiler <- ph_vector_share[3,2]
ph_vector_share_biomass_chp <- ph_vector_share[4,2]
ph_vector_share_district_biomass <- ph_vector_share[5,2]
ph_vector_share_district_biomethane <- ph_vector_share[6,2]
ph_vector_share_district_gas <- ph_vector_share[7,2]
ph_vector_share_gas_boiler <- ph_vector_share[8,2]
ph_vector_share_gas_chp <- ph_vector_share[9,2]
ph_vector_share_district_hydrogen <- ph_vector_share[10,2]
ph_vector_share_gas_boiler_h2_blend <- ph_vector_share[11,2]
ph_vector_share_gas_chp_h2_blend <- ph_vector_share[12,2]
ph_vector_share_ashp_hydrogen_boiler_hydrogen <- ph_vector_share[13,2]
ph_vector_share_hydrogen_boiler <- ph_vector_share[14,2]
ph_vector_share_oil_boiler <- ph_vector_share[15,2]
ph_vector_share_community_heat <- ph_vector_share[16,2]
ph_vector_share_district_waste_heat <- ph_vector_share[17,2]
ph_vector_share_ashp <- ph_vector_share[18,2]
ph_vector_share_gshp <- ph_vector_share[19,2]
ph_vector_share_ashp_biofuel_boiler_electricity <- ph_vector_share[20,2]
ph_vector_share_ashp_electric_resistive <- ph_vector_share[21,2]
ph_vector_share_ashp_hydrogen_boiler_electricity <- ph_vector_share[22,2]
ph_vector_share_ashp_solar_thermal_electricity <- ph_vector_share[23,2]
ph_vector_share_electric_resistive <- ph_vector_share[24,2]
ph_vector_share_electric_storage <- ph_vector_share[25,2]
ph_vector_share_district_electricity <- ph_vector_share[26,2]
ph_vector_share_ashp_solar_thermal_solar <- ph_vector_share[27,2]

###############################################################################################################################################

# Industrial Combustion Vector Shares

ironsteel_vector_share_petroleum <- ind_vector_share[1,4]
ironsteel_vector_share_natural_gas <- ind_vector_share[1,5]
ironsteel_vector_share_hydrogen <- ind_vector_share[1,5]
ironsteel_vector_share_bioenergy_other <- ind_vector_share[1,8]
ironsteel_vector_share_electricity <- ind_vector_share[1,7]
ironsteel_vector_share_gasccs <- ind_vector_share[1,9]
ironsteel_vector_share_beccs <- ind_vector_share[1,10]
nfm_vector_share_petroleum <- ind_vector_share[2,4]
nfm_vector_share_natural_gas <- ind_vector_share[2,5]
nfm_vector_share_hydrogen <- ind_vector_share[2,5]
nfm_vector_share_bioenergy_other <- ind_vector_share[2,8]
nfm_vector_share_electricity <- ind_vector_share[2,7]
nfm_vector_share_gasccs <- ind_vector_share[2,9]
nfm_vector_share_beccs <- ind_vector_share[2,10]
chem_vector_share_petroleum <- ind_vector_share[3,4]
chem_vector_share_natural_gas <- ind_vector_share[3,5]
chem_vector_share_hydrogen <- ind_vector_share[3,5]
chem_vector_share_bioenergy_other <- ind_vector_share[3,8]
chem_vector_share_electricity <- ind_vector_share[3,7]
chem_vector_share_gasccs <- ind_vector_share[3,9]
chem_vector_share_beccs <- ind_vector_share[3,10]
pap_vector_share_petroleum <- ind_vector_share[4,4]
pap_vector_share_natural_gas <- ind_vector_share[4,5]
pap_vector_share_hydrogen <- ind_vector_share[4,5]
pap_vector_share_bioenergy_other <- ind_vector_share[4,8]
pap_vector_share_electricity <- ind_vector_share[4,7]
pap_vector_share_gasccs <- ind_vector_share[4,9]
pap_vector_share_beccs <- ind_vector_share[4,10]
food_vector_share_petroleum <- ind_vector_share[5,4]
food_vector_share_natural_gas <- ind_vector_share[5,5]
food_vector_share_hydrogen <- ind_vector_share[5,5]
food_vector_share_bioenergy_other <- ind_vector_share[5,8]
food_vector_share_electricity <- ind_vector_share[5,7]
food_vector_share_gasccs <- ind_vector_share[5,9]
food_vector_share_beccs <- ind_vector_share[5,10]
min_vector_share_petroleum <- ind_vector_share[6,4]
min_vector_share_natural_gas <- ind_vector_share[6,5]
min_vector_share_hydrogen <- ind_vector_share[6,5]
min_vector_share_bioenergy_other <- ind_vector_share[6,8]
min_vector_share_electricity <- ind_vector_share[6,7]
min_vector_share_gasccs <- ind_vector_share[6,9]
min_vector_share_beccs <- ind_vector_share[6,10]
text_vector_share_petroleum <- ind_vector_share[7,4]
text_vector_share_natural_gas <- ind_vector_share[7,5]
text_vector_share_hydrogen <- ind_vector_share[7,5]
text_vector_share_bioenergy_other <- ind_vector_share[7,8]
text_vector_share_electricity <- ind_vector_share[7,7]
text_vector_share_gasccs <- ind_vector_share[7,9]
text_vector_share_beccs <- ind_vector_share[7,10]
con_vector_share_petroleum <- ind_vector_share[8,4]
con_vector_share_natural_gas <- ind_vector_share[8,5]
con_vector_share_hydrogen <- ind_vector_share[8,5]
con_vector_share_bioenergy_other <- ind_vector_share[8,8]
con_vector_share_electricity <- ind_vector_share[8,7]
con_vector_share_gasccs <- ind_vector_share[8,9]
con_vector_share_beccs <- ind_vector_share[8,10]
other_vector_share_petroleum <- ind_vector_share[9,4]
other_vector_share_natural_gas <- ind_vector_share[9,5]
other_vector_share_hydrogen <- ind_vector_share[9,5]
other_vector_share_bioenergy_other <- ind_vector_share[9,8]
other_vector_share_electricity <- ind_vector_share[9,7]
other_vector_share_gasccs <- ind_vector_share[9,9]
other_vector_share_beccs <- ind_vector_share[9,10]





###############################################################################################################################################

# Variables for initial selection

data_levels_Heating <- c( "Technologic-Specific Energy Demand (e.g., electricity demand from heat pumps for building heating)", "Energy Vector Demand (e.g., hydrogen demand for building heating)", "N/A")
data_levels_Industrial <- c("Process-Specific Energy Demand (e.g., electricity demand for Iron & Steel)", "Energy Vector Demand (e.g., hydrogen demand for industrial combustion)", "N/A")
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
library(openxlsx)
library(cli)


# Y-Axis Labels
y_label_co2e <- "Lifecycle CO2e Emissions (kt)"
y_label_co2e_perTWh <- "Lifecycle CO2e Emissions per TWh (kt TWh-1)"
y_label_co2 <- "CO2 Emissions (kt)"
y_label_co2_perTWh <- "CO2 Emissions per TWh (kt TWh-1)"
y_label_nox <- "NOx Impact (ng m-3)"
y_label_nox_perTWh <- "NOx Impact per TWh (ng m-3 TWh-1)"
y_label_pm25 <- "PM2.5 Impact (ng m-3)"
y_label_pm25_perTWh <- "PM2.5 Impact per TWh (ng m-3 TWh-1)"

############################################################################################################################################################################################

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
                                                  radioButtons("dataLevelsHeat", "Select the level of detail involved in the building heating scenario. If building heating is not included, select N/A.", choices = data_levels_Heating, width = 600),    
                                                  
                                                  # Deciding on basic levels of information for Industrial Combustion
                                                  radioButtons("dataLevelsIndustry", "Select the level of detail involved in the industrial combustion scenario. If industrial combustion is not included, select N/A", choices = data_levels_Industrial, width = 600),  
                                                  
                                                  # Selecting GWP potentials for lifecycle assessments
                                                  radioButtons("gwpPotentials", "Please select either 20-year or 100-year global warming potentials (GWP)", choices = gwpPotentials, width = 600),
                                                  
                                                  # Selecting whether emissons/impacts should be illustrated per unit energy or absolute
                                                  radioButtons("absolute_or_perUnit", "Specify whether emissions/impacts should be stated as absolute or per TWh energy generated or used", choices = per_unit_or_absolute_choice, width = 600)
                                                  
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
















#########################################################################################################################################################################################


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
  
  ###########################################################################################################################################
  
  dh_data <- reactive({
    
    req(input_dh_file())
    
    # Data for perfect data
    
    if(input$dataLevelsHeat == "Technologic-Specific Energy Demand (e.g., electricity demand from heat pumps for building heating)") 
      
    {
      
      dh_data <- input_dh_file()[, 1:28]
      
      return(dh_data)
      
    }
    
    # Data Treatment for energy vectors only - get into same format as dh_data when perfect form!

    else if (input$dataLevelsHeat =="Energy Vector Demand (e.g., hydrogen demand for building heating)") 
      
    {
      
      dh_data_vector <- input_dh_file()[, 1:7]
      
      dh_data_vector$`Biofuel Boiler` <- dh_data_vector$Biofuels * dh_vector_share_biomass_boiler
      dh_data_vector$`ASHP + Biofuel Boiler (Biofuel)` <- dh_data_vector$Biofuels * dh_vector_share_ashp_biofuel_boiler_biofuel
      dh_data_vector$`Biomass Boiler` <- dh_data_vector$Biofuels * dh_vector_share_biomass_boiler
      dh_data_vector$`Biomass CHP` <- dh_data_vector$Biofuels * dh_vector_share_biomass_chp
      dh_data_vector$`District Heating (Biomass)` <- dh_data_vector$Biofuels * dh_vector_share_district_biomass
      dh_data_vector$`District Heating (Biomethane)` <- dh_data_vector$Biofuels * dh_vector_share_district_biomethane
      dh_data_vector$`District Heating (Gas)` <- dh_data_vector$`Natural Gas` * dh_vector_share_district_gas
      dh_data_vector$`Gas Boiler` <- dh_data_vector$`Natural Gas` * dh_vector_share_gas_boiler
      dh_data_vector$`Gas CHP` <- dh_data_vector$`Natural Gas` * dh_vector_share_gas_chp
      dh_data_vector$`District Heating (Hydrogen)` <- dh_data_vector$Hydrogen * dh_vector_share_district_hydrogen
      dh_data_vector$`Gas Boiler - H2-NG Blend` <- dh_data_vector$Hydrogen * dh_vector_share_gas_boiler_h2_blend
      dh_data_vector$`Gas CHP - H2-NG Blend` <- dh_data_vector$Hydrogen * dh_vector_share_gas_chp_h2_blend
      dh_data_vector$`ASHP + Hydrogen Boiler (Hydrogen)` <- dh_data_vector$Hydrogen * dh_vector_share_ashp_hydrogen_boiler_hydrogen
      dh_data_vector$`Hydrogen Boiler` <- dh_data_vector$Hydrogen * dh_co2_EF_hydrogen_boiler * dh_vector_share_hydrogen_boiler
      dh_data_vector$`Oil Boiler` <- dh_data_vector$`Oil/Petroleum` * dh_vector_share_oil_boiler
      dh_data_vector$`Community Heating` <- dh_data_vector$Other * dh_vector_share_community_heat
      
      dh_data <- dh_data_vector[, c(1, 8:23)]
      
      
      return(dh_data)
      
    }
    
    
    
    
  })
  
  dh_data_sum <- reactive({
    
    req(input_dh_file())
    
    # Data sum for perfect data
    
    if(input$dataLevelsHeat == "Technologic-Specific Energy Demand (e.g., electricity demand from heat pumps for building heating)") 
    
    {
    
    dh_data_sum <- rowSums(input_dh_file()[, 2:28], na.rm = TRUE)
    
    return(dh_data_sum)
    
    }
    
    # Data sum for energy vector data only - easy to keep this way, can always change later but does not save too much code
    
    else if (input$dataLevelsHeat =="Energy Vector Demand (e.g., hydrogen demand for building heating)") 
    
    {
      
    dh_data_sum <- rowSums(input_dh_file()[, 2:7], na.rm = TRUE)
      
      
    return(dh_data_sum)
    
    }
    
  })
  
  ###########################################################################################################################################
  
  ph_data <- reactive({
    
    req(input_ph_file())
    
    # Data for perfect data
    
    if(input$dataLevelsHeat == "Technologic-Specific Energy Demand (e.g., electricity demand from heat pumps for building heating)") 
      
    {
      
      ph_data <- input_ph_file()[, 1:28]
      
      return(ph_data)
      
    }
    
    # Data Treatment for energy vectors only - get into same format as ph_data when perfect form!
    
    else if (input$dataLevelsHeat =="Energy Vector Demand (e.g., hydrogen demand for building heating)") 
      
    {
      
      ph_data_vector <- input_ph_file()[, 1:7]
      
      ph_data_vector$`Biofuel Boiler` <- ph_data_vector$Biofuels * dh_vector_share_biomass_boiler
      ph_data_vector$`ASHP + Biofuel Boiler (Biofuel)` <- ph_data_vector$Biofuels * dh_vector_share_ashp_biofuel_boiler_biofuel
      ph_data_vector$`Biomass Boiler` <- ph_data_vector$Biofuels * dh_vector_share_biomass_boiler
      ph_data_vector$`Biomass CHP` <- ph_data_vector$Biofuels * dh_vector_share_biomass_chp
      ph_data_vector$`District Heating (Biomass)` <- ph_data_vector$Biofuels * dh_vector_share_district_biomass
      ph_data_vector$`District Heating (Biomethane)` <- ph_data_vector$Biofuels * dh_vector_share_district_biomethane
      ph_data_vector$`District Heating (Gas)` <- ph_data_vector$`Natural Gas` * dh_vector_share_district_gas
      ph_data_vector$`Gas Boiler` <- ph_data_vector$`Natural Gas` * dh_vector_share_gas_boiler
      ph_data_vector$`Gas CHP` <- ph_data_vector$`Natural Gas` * dh_vector_share_gas_chp
      ph_data_vector$`District Heating (Hydrogen)` <- ph_data_vector$Hydrogen * dh_vector_share_district_hydrogen
      ph_data_vector$`Gas Boiler - H2-NG Blend` <- ph_data_vector$Hydrogen * dh_vector_share_gas_boiler_h2_blend
      ph_data_vector$`Gas CHP - H2-NG Blend` <- ph_data_vector$Hydrogen * dh_vector_share_gas_chp_h2_blend
      ph_data_vector$`ASHP + Hydrogen Boiler (Hydrogen)` <- ph_data_vector$Hydrogen * dh_vector_share_ashp_hydrogen_boiler_hydrogen
      ph_data_vector$`Hydrogen Boiler` <- ph_data_vector$Hydrogen * dh_co2_EF_hydrogen_boiler * dh_vector_share_hydrogen_boiler
      ph_data_vector$`Oil Boiler` <- ph_data_vector$`Oil/Petroleum` * dh_vector_share_oil_boiler
      ph_data_vector$`Community Heating` <- ph_data_vector$Other * dh_vector_share_community_heat
      
      ph_data <- ph_data_vector[, c(1, 8:23)]
      
      
      return(ph_data)
      
    }
    
  })
  
  ph_data_sum <- reactive({
    
    req(input_ph_file())
    
    # Data sum for perfect data
    
    if(input$dataLevelsHeat == "Technologic-Specific Energy Demand (e.g., electricity demand from heat pumps for building heating)") 
    
    {
    
    ph_data_sum <- rowSums(input_ph_file()[, 2:28], na.rm = TRUE)
    
    return(ph_data_sum)
    
    }
    
    # Data sum for energy vector data only - easy to keep this way, can always change later but does not save too much code
    
    else if (input$dataLevelsHeat == "Energy Vector Demand (e.g., hydrogen demand for building heating)") 
    
    {
      
      ph_data_sum <- rowSums(input_ph_file()[, 2:7], na.rm = TRUE)
      
      
      return(ph_data_sum)
      
    }
    
    
  })
  
  ###########################################################################################################################################
  
  hyd_data_sum <- reactive({
    
    req(input_hyd_file())
    
    hyd_data_sum <- rowSums(input_hyd_file()[, 2:7], na.rm = TRUE)
    
    return(hyd_data_sum)
    
  })
  
  # Industry total use data - needs to be broken down into industrial sectors
  
  ironsteel_data <- reactive({
    
    req(input_ind_file)

    if(input$dataLevelsIndustry == "Process-Specific Energy Demand (e.g., electricity demand for Iron & Steel)") { 
      
    ironsteel_data <- input_ind_file()[,1:8]
    
    return(ironsteel_data)
    
    }
    
    # Appended with correct names to 9:15 - before that is the overall input
    
    else if (input$dataLevelsIndustry == "Energy Vector Demand (e.g., hydrogen demand for industrial combustion)") {
      
    ironsteel_data_vector <- input_ind_file()[, 1:8]
    
    ironsteel_data_vector$`Iron and steel - Electricity` <- ironsteel_data_vector$Electricity * ironsteel_vector_share_electricity
    ironsteel_data_vector$`Iron and steel - Natural Gas` <- ironsteel_data_vector$`Natural Gas` * ironsteel_vector_share_natural_gas
    ironsteel_data_vector$`Iron and steel - Hydrogen` <- ironsteel_data_vector$Hydrogen * ironsteel_vector_share_hydrogen
    ironsteel_data_vector$`Iron and steel - Oil/Petroleum` <- ironsteel_data_vector$`Oil/Petroleum` * ironsteel_vector_share_petroleum 
    ironsteel_data_vector$`Iron and steel - Bioenergy/Other` <- ironsteel_data_vector$`Bioenergy + Other` * ironsteel_vector_share_bioenergy_other
    ironsteel_data_vector$`Iron and steel - Gas CCS` <- ironsteel_data_vector$`Gas CCS` * ironsteel_vector_share_gasccs
    ironsteel_data_vector$`Iron and steel - BECCS` <- ironsteel_data_vector$BECCS * ironsteel_vector_share_beccs
    
    # [, 9:15] in larger database will become [, 2:8] in newer database - not containing the overall energy vectors now - allows ironsteel data to be SAME for both cases from now!
    ironsteel_data <- ironsteel_data_vector[, c(1, 9:15)]
    
    return(ironsteel_data)
    
    }
    
  })
  
  # Ensured both data forms are the same for the ironsteel data sum
  
  ironsteel_data_sum <- reactive({
    
    req(ironsteel_data())
    
      ironsteel_data_sum <- rowSums(ironsteel_data()[, 2:8], na.rm = TRUE)

      return(ironsteel_data_sum)

    })
  
  ###########################################################################################################################################
  
  nfm_data <- reactive({
    
    req(input_ind_file())
    
    if(input$dataLevelsIndustry == "Process-Specific Energy Demand (e.g., electricity demand for Iron & Steel)") { 
      
    nfm_data <- input_ind_file()[, c(1,9:15)]
    
    return(nfm_data)
    
    }
    
    else if (input$dataLevelsIndustry == "Energy Vector Demand (e.g., hydrogen demand for industrial combustion)") {
      
      # 1:8 each time as same input file 
      nfm_data_vector <- input_ind_file()[, 1:8]
      
      nfm_data_vector$`Non-ferrous metals - Electricity` <- nfm_data_vector$Electricity * nfm_vector_share_electricity
      nfm_data_vector$`Non-ferrous metals - Natural Gas` <- nfm_data_vector$`Natural Gas` * nfm_vector_share_natural_gas
      nfm_data_vector$`Non-ferrous metals - Hydrogen` <- nfm_data_vector$Hydrogen * nfm_vector_share_hydrogen
      nfm_data_vector$`Non-ferrous metals - Oil/Petroleum` <- nfm_data_vector$`Oil/Petroleum` * nfm_vector_share_petroleum 
      nfm_data_vector$`Non-ferrous metals - Bioenergy/Other` <- nfm_data_vector$`Bioenergy + Other` * nfm_vector_share_bioenergy_other
      nfm_data_vector$`Non-ferrous metals - Gas CCS` <- nfm_data_vector$`Gas CCS` * nfm_vector_share_gasccs
      nfm_data_vector$`Non-ferrous metals - BECCS` <- nfm_data_vector$BECCS * nfm_vector_share_beccs
      
      # [, 9:15] in larger database will become [, 2:8] in newer database - not containing the overall energy vectors now - allows nfm data to be SAME for both cases from now!
      nfm_data <- nfm_data_vector[, c(1, 9:15)]
      
      return(nfm_data)
      
    }
    
    
    
  })
  
  nfm_data_sum <- reactive({
    
    req(nfm_data())
    
    nfm_data_sum <- rowSums(nfm_data()[, 2:8], na.rm = TRUE)
    
    return(nfm_data_sum)
    
  })
  
  ###########################################################################################################################################
  
  chem_data <- reactive({
    
    req(input_ind_file())
    
    if(input$dataLevelsIndustry == "Process-Specific Energy Demand (e.g., electricity demand for Iron & Steel)") { 
      
    chem_data <- input_ind_file()[, c(1,16:22)]
     
    return(chem_data)
    
    }
    
    else if (input$dataLevelsIndustry == "Energy Vector Demand (e.g., hydrogen demand for industrial combustion)") {
      
      # 1:8 each time as same input file 
      chem_data_vector <- input_ind_file()[, 1:8]
      
      chem_data_vector$`Chemicals - Electricity` <- chem_data_vector$Electricity * chem_vector_share_electricity
      chem_data_vector$`Chemicals - Natural Gas` <- chem_data_vector$`Natural Gas` * chem_vector_share_natural_gas
      chem_data_vector$`Chemicals - Hydrogen` <- chem_data_vector$Hydrogen * chem_vector_share_hydrogen
      chem_data_vector$`Chemicals - Oil/Petroleum` <- chem_data_vector$`Oil/Petroleum` * chem_vector_share_petroleum 
      chem_data_vector$`Chemicals - Bioenergy/Other` <- chem_data_vector$`Bioenergy + Other` * chem_vector_share_bioenergy_other
      chem_data_vector$`Chemicals - Gas CCS` <- chem_data_vector$`Gas CCS` * chem_vector_share_gasccs
      chem_data_vector$`Chemicals - BECCS` <- chem_data_vector$BECCS * chem_vector_share_beccs
      
      # [, 9:15] in larger database will become [, 2:8] in newer database - not containing the overall energy vectors now - allows chem data to be SAME for both cases from now!
      chem_data <- chem_data_vector[, c(1, 9:15)]
      
      return(chem_data)
      
    }
    
    
  })
  
  chem_data_sum <- reactive({
    
    req(chem_data())
    
    chem_data_sum <- rowSums(chem_data()[, 2:8], na.rm = TRUE)
    
    return(chem_data_sum)
    
  })
  
  ###########################################################################################################################################
  
  pap_data <- reactive({
    
    req(input_ind_file())
    
    if(input$dataLevelsIndustry == "Process-Specific Energy Demand (e.g., electricity demand for Iron & Steel)") { 
      
    pap_data <- input_ind_file()[, c(1,23:29)]
    
    return(pap_data)
    
    }
    
    else if (input$dataLevelsIndustry == "Energy Vector Demand (e.g., hydrogen demand for industrial combustion)") {
      
      # 1:8 each time as same input file 
      pap_data_vector <- input_ind_file()[, 1:8]
      
      pap_data_vector$`Paper and Pulp - Electricity` <- pap_data_vector$Electricity * pap_vector_share_electricity
      pap_data_vector$`Paper and Pulp - Natural Gas` <- pap_data_vector$`Natural Gas` * pap_vector_share_natural_gas
      pap_data_vector$`Paper and Pulp - Hydrogen` <- pap_data_vector$Hydrogen * pap_vector_share_hydrogen
      pap_data_vector$`Paper and Pulp - Oil/Petroleum` <- pap_data_vector$`Oil/Petroleum` * pap_vector_share_petroleum 
      pap_data_vector$`Paper and Pulp - Bioenergy/Other` <- pap_data_vector$`Bioenergy + Other` * pap_vector_share_bioenergy_other
      pap_data_vector$`Paper and Pulp - Gas CCS` <- pap_data_vector$`Gas CCS` * pap_vector_share_gasccs
      pap_data_vector$`Paper and Pulp - BECCS` <- pap_data_vector$BECCS * pap_vector_share_beccs
      
      # [, 9:15] in larger database will become [, 2:8] in newer database - not containing the overall energy vectors now - allows pap data to be SAME for both cases from now!
      pap_data <- pap_data_vector[, c(1, 9:15)]
      
      return(pap_data)
      
    }
  })
  
  pap_data_sum <- reactive({
    
    req(pap_data())
    
    pap_data_sum <- rowSums(pap_data()[, 2:8], na.rm = TRUE)
    
    return(pap_data_sum)
    
  })
  
  ###########################################################################################################################################
  
  food_data <- reactive({
    
    req(input_ind_file())
    
    if(input$dataLevelsIndustry == "Process-Specific Energy Demand (e.g., electricity demand for Iron & Steel)") { 
      
    food_data <- input_ind_file()[, c(1,30:36)]
    
    return(food_data)
    
    }
    
    else if (input$dataLevelsIndustry == "Energy Vector Demand (e.g., hydrogen demand for industrial combustion)") {
      
      # 1:8 each time as same input file 
      food_data_vector <- input_ind_file()[, 1:8]
      
      food_data_vector$`Food and Beverages - Electricity` <- food_data_vector$Electricity * food_vector_share_electricity
      food_data_vector$`Food and Beverages - Natural Gas` <- food_data_vector$`Natural Gas` * food_vector_share_natural_gas
      food_data_vector$`Food and Beverages - Hydrogen` <- food_data_vector$Hydrogen * food_vector_share_hydrogen
      food_data_vector$`Food and Beverages - Oil/Petroleum` <- food_data_vector$`Oil/Petroleum` * food_vector_share_petroleum 
      food_data_vector$`Food and Beverages - Bioenergy/Other` <- food_data_vector$`Bioenergy + Other` * food_vector_share_bioenergy_other
      food_data_vector$`Food and Beverages - Gas CCS` <- food_data_vector$`Gas CCS` * food_vector_share_gasccs
      food_data_vector$`Food and Beverages - BECCS` <- food_data_vector$BECCS * food_vector_share_beccs
      
      # [, 9:15] in larger database will become [, 2:8] in newer database - not containing the overall energy vectors now - allows food data to be SAME for both cases from now!
      food_data <- food_data_vector[, c(1, 9:15)]
      
      return(food_data)
      
    }
    
    
  })
  
  food_data_sum <- reactive({
    
    req(food_data())
    
    food_data_sum <- rowSums(food_data()[, 2:8], na.rm = TRUE)
    
    return(food_data_sum)
    
  })
  
  ###########################################################################################################################################
  
  min_data <- reactive({
    
    req(input_ind_file())
    
    if(input$dataLevelsIndustry == "Process-Specific Energy Demand (e.g., electricity demand for Iron & Steel)") { 
      
    min_data <- input_ind_file()[, c(1,37:43)]
    
    return(min_data)
    
    }
    
    
    else if (input$dataLevelsIndustry == "Energy Vector Demand (e.g., hydrogen demand for industrial combustion)") {
      
      # 1:8 each time as same input file 
      min_data_vector <- input_ind_file()[, 1:8]
      
      min_data_vector$`Mineral Products - Electricity` <- min_data_vector$Electricity * min_vector_share_electricity
      min_data_vector$`Mineral Products - Natural Gas` <- min_data_vector$`Natural Gas` * min_vector_share_natural_gas
      min_data_vector$`Mineral Products - Hydrogen` <- min_data_vector$Hydrogen * min_vector_share_hydrogen
      min_data_vector$`Mineral Products - Oil/Petroleum` <- min_data_vector$`Oil/Petroleum` * min_vector_share_petroleum 
      min_data_vector$`Mineral Products - Bioenergy/Other` <- min_data_vector$`Bioenergy + Other` * min_vector_share_bioenergy_other
      min_data_vector$`Mineral Products - Gas CCS` <- min_data_vector$`Gas CCS` * min_vector_share_gasccs
      min_data_vector$`Mineral Products - BECCS` <- min_data_vector$BECCS * min_vector_share_beccs
      
      # [, 9:15] in larger database will become [, 2:8] in newer database - not containing the overall energy vectors now - allows chem data to be SAME for both cases from now!
      min_data <- min_data_vector[, c(1, 9:15)]
      
      return(min_data)
      
    }
  })
  
  min_data_sum <- reactive({
    
    req(min_data())
    
    min_data_sum <- rowSums(min_data()[, 2:8], na.rm = TRUE)
    
    return(min_data_sum)
    
  })
  
  ###########################################################################################################################################
  
  text_data <- reactive({
    
    req(input_ind_file())
    
    if(input$dataLevelsIndustry == "Process-Specific Energy Demand (e.g., electricity demand for Iron & Steel)") { 
      
          text_data <- input_ind_file()[, c(1,44:50)]
          
          return(text_data)
          
    }
    
    else if (input$dataLevelsIndustry == "Energy Vector Demand (e.g., hydrogen demand for industrial combustion)") {
      
      # 1:8 each time as same input file 
      text_data_vector <- input_ind_file()[, 1:8]
      
      text_data_vector$`Textiles and Leather - Electricity` <- text_data_vector$Electricity * text_vector_share_electricity
      text_data_vector$`Textiles and Leather - Natural Gas` <- text_data_vector$`Natural Gas` * text_vector_share_natural_gas
      text_data_vector$`Textiles and Leather - Hydrogen` <- text_data_vector$Hydrogen * text_vector_share_hydrogen
      text_data_vector$`Textiles and Leather - Oil/Petroleum` <- text_data_vector$`Oil/Petroleum` * text_vector_share_petroleum 
      text_data_vector$`Textiles and Leather - Bioenergy/Other` <- text_data_vector$`Bioenergy + Other` * text_vector_share_bioenergy_other
      text_data_vector$`Textiles and Leather - Gas CCS` <- text_data_vector$`Gas CCS` * text_vector_share_gasccs
      text_data_vector$`Textiles and Leather - BECCS` <- text_data_vector$BECCS * text_vector_share_beccs
      
      # [, 9:15] in larger database will become [, 2:8] in newer database - not containing the overall energy vectors now - allows text data to be SAME for both cases from now!
      text_data <- text_data_vector[, c(1, 9:15)]
      
      return(text_data)
      
    }
    
    
  })
  
  text_data_sum <- reactive({
    
    req(text_data())
    
    text_data_sum <- rowSums(text_data()[, 2:8], na.rm = TRUE)
    
    return(text_data_sum)
    
  })
  
  ###########################################################################################################################################
  
  con_data <- reactive({
    
    req(input_ind_file())
    
    
    if(input$dataLevelsIndustry == "Process-Specific Energy Demand (e.g., electricity demand for Iron & Steel)") { 
      
    con_data <- input_ind_file()[, c(1,51:57)]
    
    return(con_data)
    
    }
    
    
    else if (input$dataLevelsIndustry == "Energy Vector Demand (e.g., hydrogen demand for industrial combustion)") {
      
      # 1:8 each time as same input file 
      con_data_vector <- input_ind_file()[, 1:8]
      
      con_data_vector$`Construction - Electricity` <- con_data_vector$Electricity * con_vector_share_electricity
      con_data_vector$`Construction - Natural Gas` <- con_data_vector$`Natural Gas` * con_vector_share_natural_gas
      con_data_vector$`Construction - Hydrogen` <- con_data_vector$Hydrogen * con_vector_share_hydrogen
      con_data_vector$`Construction - Oil/Petroleum` <- con_data_vector$`Oil/Petroleum` * con_vector_share_petroleum 
      con_data_vector$`Construction - Bioenergy/Other` <- con_data_vector$`Bioenergy + Other` * con_vector_share_bioenergy_other
      con_data_vector$`Construction - Gas CCS` <- con_data_vector$`Gas CCS` * con_vector_share_gasccs
      con_data_vector$`Construction - BECCS` <- con_data_vector$BECCS * con_vector_share_beccs
      
      # [, 9:15] in larger database will become [, 2:8] in newer database - not containing the overall energy vectors now - allows con data to be SAME for both cases from now!
      con_data <- con_data_vector[, c(1, 9:15)]
      
      return(con_data)
      
    }
  })
  
  con_data_sum <- reactive({
    
    req(con_data())
    
    con_data_sum <- rowSums(con_data()[, 2:8], na.rm = TRUE)
    
    return(con_data_sum)
    
  })

  ###########################################################################################################################################
  
  other_data <- reactive({
    
    req(input_ind_file())
    
    if(input$dataLevelsIndustry == "Process-Specific Energy Demand (e.g., electricity demand for Iron & Steel)") { 
      
    other_data <- input_ind_file()[, c(1,58:64)]
    
    return(other_data)
    
    }
    
    
    else if (input$dataLevelsIndustry == "Energy Vector Demand (e.g., hydrogen demand for industrial combustion)") {
      
      # 1:8 each time as same input file 
      other_data_vector <- input_ind_file()[, 1:8]
      
      other_data_vector$`Other Industries - Electricity` <- other_data_vector$Electricity * other_vector_share_electricity
      other_data_vector$`Other Industries - Natural Gas` <- other_data_vector$`Natural Gas` * other_vector_share_natural_gas
      other_data_vector$`Other Industries - Hydrogen` <- other_data_vector$Hydrogen * other_vector_share_hydrogen
      other_data_vector$`Other Industries - Oil/Petroleum` <- other_data_vector$`Oil/Petroleum` * other_vector_share_petroleum 
      other_data_vector$`Other Industries - Bioenergy/Other` <- other_data_vector$`Bioenergy + Other` * other_vector_share_bioenergy_other
      other_data_vector$`Other Industries - Gas CCS` <- other_data_vector$`Gas CCS` * other_vector_share_gasccs
      other_data_vector$`Other Industries - BECCS` <- other_data_vector$BECCS * other_vector_share_beccs
      
      # [, 9:15] in larger database will become [, 2:8] in newer database - not containing the overall energy vectors now - allows other data to be SAME for both cases from now!
      other_data <- other_data_vector[, c(1, 9:15)]
      
      return(other_data)
      
    }
    
  })
  
  other_data_sum <- reactive({
    
    req(other_data())
    
    other_data_sum <- rowSums(other_data()[, 2:8], na.rm = TRUE)
    
    return(other_data_sum)
    
  })
  
  ###########################################################################################################################################
  
  # CSV Template Downloads
  
  output$elec_template_download <- downloadHandler(
    
    filename <- function(){
      "Elec_Template.csv"
    },
    
    content <- function(file) {
      file.copy("Templates/Elec_Template.csv", file)
    }
  )
  
  
  output$dh_template_download_pure <- downloadHandler(
    
    filename <- function(){
      "DomHeat_Template_FullData.csv"
    },
    
    content <- function(file) {
      file.copy("Templates/DomHeat_Template_FullData.csv", file)
    }
  )
  
  output$ph_template_download_pure <- downloadHandler(
    
    filename <- function(){
      "PubHeat_Template_FullData.csv"
    },
    
    content <- function(file) {
      file.copy("Templates/PubHeat_Template_FullData.csv", file)
    }
  )
  
  output$ind_template_download_pure <- downloadHandler(
    
    filename <- function(){
      "Industry_Template_FullData.csv"
    },
    
    content <- function(file) {
      file.copy("Templates/Industry_Template_FullData.csv", file)
    }
  )
  
  output$hyd_template_download <- downloadHandler(
    
    filename <- function(){
      "Hydrogen_Template.csv"
    },
    
    content <- function(file) {
      file.copy("Hydrogen_Template.csv", file)
    }
  )
  
  #################################################################################################################################################################     
  # Results CSV Downloads

  # Results download buttons
  output$download_total_xlsx <- downloadHandler(
    
    filename = function(){
      
      paste("CAPSAM_Data-", Sys.time(),".xlsx")
      
    },
    
    content = function(file){
      
      wb <- createWorkbook()
      
      addWorksheet(wb, sheetName = "Electricity_CO2_Emissions")
      writeData(wb, sheet = "Electricity_CO2_Emissions", x = df_elec_co2_emissions())
      
      addWorksheet(wb, sheetName = "Electricity_NOx_Impacts")
      writeData(wb, sheet = "Electricity_NOx_Impacts", x = df_elec_nox_impacts())
      
      addWorksheet(wb, sheetName = "Electricity_PM2.5_Impacts")
      writeData(wb, sheet = "Electricity_PM2.5_Impacts", x = df_elec_pm25_impacts())
      
      addWorksheet(wb, sheetName = "Hydrogen_CO2_Emissions")
      writeData(wb, sheet = "Hydrogen_CO2_Emissions", x = hyd_co2_emissions())
      
      addWorksheet(wb, sheetName = "Hydrogen_NOx_Impacts")
      writeData(wb, sheet = "Hydrogen_NOx_Impacts", x = hyd_nox_impacts())
      
      addWorksheet(wb, sheetName = "Hydrogen_PM2.5_Impacts")
      writeData(wb, sheet = "Hydrogen_PM2.5_Impacts", x = hyd_pm25_impacts())
      
      addWorksheet(wb, sheetName = "Dom_Heat_CO2_Emissions")
      writeData(wb, sheet = "Dom_Heat_CO2_Emissions", x = df_dh_co2_emissions())
      
      addWorksheet(wb, sheetName = "Dom_Heat_NOx_Impacts")
      writeData(wb, sheet = "Dom_Heat_NOx_Impacts", x = df_dh_nox_impacts())
      
      addWorksheet(wb, sheetName = "Dom_Heat_PM2.5_Impacts")
      writeData(wb, sheet = "Dom_Heat_PM2.5_Impacts", x = df_dh_pm25_impacts())
      
      addWorksheet(wb, sheetName = "Pub_Heat_CO2_Emissions")
      writeData(wb, sheet = "Pub_Heat_CO2_Emissions", x = df_ph_co2_emissions())
      
      addWorksheet(wb, sheetName = "Pub_Heat_NOx_Impacts")
      writeData(wb, sheet = "Pub_Heat_NOx_Impacts", x = df_ph_nox_impacts())
      
      addWorksheet(wb, sheetName = "Pub_Heat_PM2.5_Impacts")
      writeData(wb, sheet = "Pub_Heat_PM2.5_Impacts", x = df_ph_pm25_impacts())
      
      addWorksheet(wb, sheetName = "Iron&Steel_CO2_Emissions")
      writeData(wb, sheet = "Iron&Steel_CO2_Emissions", x = ironsteel_co2_emissions())
      
      addWorksheet(wb, sheetName = "Iron&Steel_NOx_Impacts")
      writeData(wb, sheet = "Iron&Steel_NOx_Impacts", x = ironsteel_nox_impacts())
      
      addWorksheet(wb, sheetName = "Iron&Steel_PM2.5_Impacts")
      writeData(wb, sheet = "Iron&Steel_PM2.5_Impacts", x = ironsteel_pm25_impacts())
      
      addWorksheet(wb, sheetName = "NonFerrousMetals_CO2_Emissions")
      writeData(wb, sheet = "NonFerrousMetals_CO2_Emissions", x = nfm_co2_emissions())
      
      addWorksheet(wb, sheetName = "NonFerrousMetals_NOx_Impacts")
      writeData(wb, sheet = "NonFerrousMetals_NOx_Impacts", x = nfm_nox_impacts())
      
      addWorksheet(wb, sheetName = "NonFerrousMetals_PM2.5_Impacts")
      writeData(wb, sheet = "NonFerrousMetals_PM2.5_Impacts", x = nfm_pm25_impacts())
      
      addWorksheet(wb, sheetName = "Chemicals_CO2_Emissions")
      writeData(wb, sheet = "Chemicals_CO2_Emissions", x = chem_co2_emissions())
      
      addWorksheet(wb, sheetName = "Chemicals_NOx_Impacts")
      writeData(wb, sheet = "Chemicals_NOx_Impacts", x = chem_nox_impacts())
      
      addWorksheet(wb, sheetName = "Chemicals_PM2.5_Impacts")
      writeData(wb, sheet = "Chemicals_PM2.5_Impacts", x = chem_pm25_impacts())
      
      addWorksheet(wb, sheetName = "Paper_CO2_Emissions")
      writeData(wb, sheet = "Paper_CO2_Emissions", x = pap_co2_emissions())
      
      addWorksheet(wb, sheetName = "Paper_NOx_Impacts")
      writeData(wb, sheet = "Paper_NOx_Impacts", x = pap_nox_impacts())
      
      addWorksheet(wb, sheetName = "Paper_PM2.5_Impacts")
      writeData(wb, sheet = "Paper_PM2.5_Impacts", x = pap_pm25_impacts())
      
      addWorksheet(wb, sheetName = "Food_CO2_Emissions")
      writeData(wb, sheet = "Food_CO2_Emissions", x = food_co2_emissions())
      
      addWorksheet(wb, sheetName = "Food_NOx_Impacts")
      writeData(wb, sheet = "Food_NOx_Impacts", x = food_nox_impacts())
      
      addWorksheet(wb, sheetName = "Food_PM2.5_Impacts")
      writeData(wb, sheet = "Food_PM2.5_Impacts", x = food_pm25_impacts())
      
      addWorksheet(wb, sheetName = "Minerals_CO2_Emissions")
      writeData(wb, sheet = "Minerals_CO2_Emissions", x = min_co2_emissions())
      
      addWorksheet(wb, sheetName = "Minerals_NOx_Impacts")
      writeData(wb, sheet = "Minerals_NOx_Impacts", x = min_nox_impacts())
      
      addWorksheet(wb, sheetName = "Minerals_PM2.5_Impacts")
      writeData(wb, sheet = "Minerals_PM2.5_Impacts", x = min_pm25_impacts())
      
      addWorksheet(wb, sheetName = "Textiles_CO2_Emissions")
      writeData(wb, sheet = "Textiles_CO2_Emissions", x = text_co2_emissions())
      
      addWorksheet(wb, sheetName = "Textiles_NOx_Impacts")
      writeData(wb, sheet = "Textiles_NOx_Impacts", x = text_nox_impacts())
      
      addWorksheet(wb, sheetName = "Textiles_PM2.5_Impacts")
      writeData(wb, sheet = "Textiles_PM2.5_Impacts", x = text_pm25_impacts())
      
      addWorksheet(wb, sheetName = "Construction_CO2_Emissions")
      writeData(wb, sheet = "Construction_CO2_Emissions", x = con_co2_emissions())
      
      addWorksheet(wb, sheetName = "Construction_NOx_Impacts")
      writeData(wb, sheet = "Construction_NOx_Impacts", x = con_nox_impacts())
      
      addWorksheet(wb, sheetName = "Construction_PM2.5_Impacts")
      writeData(wb, sheet = "Construction_PM2.5_Impacts", x = con_pm25_impacts())
      
      addWorksheet(wb, sheetName = "Other_CO2_Emissions")
      writeData(wb, sheet = "Other_CO2_Emissions", x = other_co2_emissions())
      
      addWorksheet(wb, sheetName = "Other_NOx_Impacts")
      writeData(wb, sheet = "Other_NOx_Impacts", x = other_nox_impacts())
      
      addWorksheet(wb, sheetName = "Other_PM2.5_Impacts")
      writeData(wb, sheet = "Other_PM2.5_Impacts", x = other_pm25_impacts())
      
      saveWorkbook(wb, file)
      
    }
  )
  
  output$download_elec_xlsx <- downloadHandler(
    
    filename = function(){
      
      paste("CAPSAM_Elec_Data-", Sys.time(),".xlsx")
      
    },
    
    content = function(file){
      
      wb <- createWorkbook()
      
      addWorksheet(wb, sheetName = "Electricity_CO2_Emissions")
      writeData(wb, sheet = "Electricity_CO2_Emissions", x = df_elec_co2_emissions())
      
      addWorksheet(wb, sheetName = "Electricity_NOx_Impacts")
      writeData(wb, sheet = "Electricity_NOx_Impacts", x = df_elec_nox_impacts())
      
      addWorksheet(wb, sheetName = "Electricity_PM2.5_Impacts")
      writeData(wb, sheet = "Electricity_PM2.5_Impacts", x = df_elec_pm25_impacts())
      
      saveWorkbook(wb, file)
      
    }
  )
  
  output$download_hyd_xlsx <- downloadHandler(
    
    filename = function(){
      
      paste("CAPSAM_Hydrogen_Data-", Sys.time(),".xlsx")
      
    },
    
    content = function(file){
      
      wb <- createWorkbook()
      
      addWorksheet(wb, sheetName = "Hydrogen_CO2_Emissions")
      writeData(wb, sheet = "Hydrogen_CO2_Emissions", x = hyd_co2_emissions())
      
      addWorksheet(wb, sheetName = "Hydrogen_NOx_Impacts")
      writeData(wb, sheet = "Hydrogen_NOx_Impacts", x = hyd_nox_impacts())
      
      addWorksheet(wb, sheetName = "Hydrogen_PM2.5_Impacts")
      writeData(wb, sheet = "Hydrogen_PM2.5_Impacts", x = hyd_pm25_impacts())
      
      saveWorkbook(wb, file)
      
    }
  )
  
  output$download_dh_xlsx <- downloadHandler(
    
    filename = function(){
      
      paste("CAPSAM_Dom_Heat_Data-", Sys.time(),".xlsx")
      
    },
    
    content = function(file){
      
      wb <- createWorkbook()
      
      addWorksheet(wb, sheetName = "Dom_Heat_CO2_Emissions")
      writeData(wb, sheet = "Dom_Heat_CO2_Emissions", x = df_dh_co2_emissions())
      
      addWorksheet(wb, sheetName = "Dom_Heat_NOx_Impacts")
      writeData(wb, sheet = "Dom_Heat_NOx_Impacts", x = df_dh_nox_impacts())
      
      addWorksheet(wb, sheetName = "Dom_Heat_PM2.5_Impacts")
      writeData(wb, sheet = "Dom_Heat_PM2.5_Impacts", x = df_dh_pm25_impacts())
      
      saveWorkbook(wb, file)
      
    }
  )
  
  output$download_ph_xlsx <- downloadHandler(
    
    filename = function(){
      
      paste("CAPSAM_Pub_Heat_Data-", Sys.time(),".xlsx")
      
    },
    
    content = function(file){
      
      wb <- createWorkbook()
      
      addWorksheet(wb, sheetName = "Pub_Heat_CO2_Emissions")
      writeData(wb, sheet = "Pub_Heat_CO2_Emissions", x = df_ph_co2_emissions())
      
      addWorksheet(wb, sheetName = "Pub_Heat_NOx_Impacts")
      writeData(wb, sheet = "Pub_Heat_NOx_Impacts", x = df_ph_nox_impacts())
      
      addWorksheet(wb, sheetName = "Pub_Heat_PM2.5_Impacts")
      writeData(wb, sheet = "Pub_Heat_PM2.5_Impacts", x = df_ph_pm25_impacts())
      
      saveWorkbook(wb, file)
      
    }
  )
  
  output$download_ind_xlsx <- downloadHandler(
    
    filename = function(){
      
      paste("CAPSAM_Industry_Data-", Sys.time(),".xlsx")
      
    },
    
    content = function(file){
      
      wb <- createWorkbook()
      
      addWorksheet(wb, sheetName = "Iron&Steel_CO2_Emissions")
      writeData(wb, sheet = "Iron&Steel_CO2_Emissions", x = ironsteel_co2_emissions())
      
      addWorksheet(wb, sheetName = "Iron&Steel_NOx_Impacts")
      writeData(wb, sheet = "Iron&Steel_NOx_Impacts", x = ironsteel_nox_impacts())
      
      addWorksheet(wb, sheetName = "Iron&Steel_PM2.5_Impacts")
      writeData(wb, sheet = "Iron&Steel_PM2.5_Impacts", x = ironsteel_pm25_impacts())
      
      addWorksheet(wb, sheetName = "NonFerrousMetals_CO2_Emissions")
      writeData(wb, sheet = "NonFerrousMetals_CO2_Emissions", x = nfm_co2_emissions())
      
      addWorksheet(wb, sheetName = "NonFerrousMetals_NOx_Impacts")
      writeData(wb, sheet = "NonFerrousMetals_NOx_Impacts", x = nfm_nox_impacts())
      
      addWorksheet(wb, sheetName = "NonFerrousMetals_PM2.5_Impacts")
      writeData(wb, sheet = "NonFerrousMetals_PM2.5_Impacts", x = nfm_pm25_impacts())
      
      addWorksheet(wb, sheetName = "Chemicals_CO2_Emissions")
      writeData(wb, sheet = "Chemicals_CO2_Emissions", x = chem_co2_emissions())
      
      addWorksheet(wb, sheetName = "Chemicals_NOx_Impacts")
      writeData(wb, sheet = "Chemicals_NOx_Impacts", x = chem_nox_impacts())
      
      addWorksheet(wb, sheetName = "Chemicals_PM2.5_Impacts")
      writeData(wb, sheet = "Chemicals_PM2.5_Impacts", x = chem_pm25_impacts())
      
      addWorksheet(wb, sheetName = "Paper_CO2_Emissions")
      writeData(wb, sheet = "Paper_CO2_Emissions", x = pap_co2_emissions())
      
      addWorksheet(wb, sheetName = "Paper_NOx_Impacts")
      writeData(wb, sheet = "Paper_NOx_Impacts", x = pap_nox_impacts())
      
      addWorksheet(wb, sheetName = "Paper_PM2.5_Impacts")
      writeData(wb, sheet = "Paper_PM2.5_Impacts", x = pap_pm25_impacts())
      
      addWorksheet(wb, sheetName = "Food_CO2_Emissions")
      writeData(wb, sheet = "Food_CO2_Emissions", x = food_co2_emissions())
      
      addWorksheet(wb, sheetName = "Food_NOx_Impacts")
      writeData(wb, sheet = "Food_NOx_Impacts", x = food_nox_impacts())
      
      addWorksheet(wb, sheetName = "Food_PM2.5_Impacts")
      writeData(wb, sheet = "Food_PM2.5_Impacts", x = food_pm25_impacts())
      
      addWorksheet(wb, sheetName = "Minerals_CO2_Emissions")
      writeData(wb, sheet = "Minerals_CO2_Emissions", x = min_co2_emissions())
      
      addWorksheet(wb, sheetName = "Minerals_NOx_Impacts")
      writeData(wb, sheet = "Minerals_NOx_Impacts", x = min_nox_impacts())
      
      addWorksheet(wb, sheetName = "Minerals_PM2.5_Impacts")
      writeData(wb, sheet = "Minerals_PM2.5_Impacts", x = min_pm25_impacts())
      
      addWorksheet(wb, sheetName = "Textiles_CO2_Emissions")
      writeData(wb, sheet = "Textiles_CO2_Emissions", x = text_co2_emissions())
      
      addWorksheet(wb, sheetName = "Textiles_NOx_Impacts")
      writeData(wb, sheet = "Textiles_NOx_Impacts", x = text_nox_impacts())
      
      addWorksheet(wb, sheetName = "Textiles_PM2.5_Impacts")
      writeData(wb, sheet = "Textiles_PM2.5_Impacts", x = text_pm25_impacts())
      
      addWorksheet(wb, sheetName = "Construction_CO2_Emissions")
      writeData(wb, sheet = "Construction_CO2_Emissions", x = con_co2_emissions())
      
      addWorksheet(wb, sheetName = "Construction_NOx_Impacts")
      writeData(wb, sheet = "Construction_NOx_Impacts", x = con_nox_impacts())
      
      addWorksheet(wb, sheetName = "Construction_PM2.5_Impacts")
      writeData(wb, sheet = "Construction_PM2.5_Impacts", x = con_pm25_impacts())
      
      addWorksheet(wb, sheetName = "Other_CO2_Emissions")
      writeData(wb, sheet = "Other_CO2_Emissions", x = other_co2_emissions())
      
      addWorksheet(wb, sheetName = "Other_NOx_Impacts")
      writeData(wb, sheet = "Other_NOx_Impacts", x = other_nox_impacts())
      
      addWorksheet(wb, sheetName = "Other_PM2.5_Impacts")
      writeData(wb, sheet = "Other_PM2.5_Impacts", x = other_pm25_impacts())
      
      saveWorkbook(wb, file)
      
    }
  )
  
  
  
  
  ##########################################################################################################################################  -> Beginning of calculations
  
  
  # CO2 Emissions - with if function for both absolute and per TWh emissions - taken out into reactive expression for data download, then renderPlotly from reactive expression to get plot!
  
  df_elec_co2_emissions <- reactive({
    
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
      
      return(df_elec_co2_emissions)
    
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
      
      return(df_elec_co2_emissions)
      
    }
    
    
  })
  
  output$elec_co2 <- renderPlotly({
    
    req(df_elec_co2_emissions())
    
    long_df_elec_co2_emissions <- melt(df_elec_co2_emissions()[, 1:16], id.vars = "Year", variable.name = "Source", value.name = "Emissions", na.rm = TRUE)
      
      
    p <- ggplot(long_df_elec_co2_emissions,
                  aes(Year, Emissions, col = Source)) +
        geom_line() + 
      {
        if (input$absolute_or_perUnit == "Absolute emissions/impacts")
        {
          labs(y = y_label_co2e)
          
        }
          
        else 
          {
            labs(y = y_label_co2e_perTWh)
          }
          
        }
      
      ggplotly(p)
    
    
  })
  
  #########################################################################################################
  
  
  # NOx PWMC Impacts (currently not weighted per unit energy)
  
  df_elec_nox_emissions <- reactive({
    
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
    
    return(df_elec_nox_emissions)
    
  })
  
  df_elec_nox_impacts <- reactive({
    
    req(df_elec_nox_emissions())
    
    # Producing PWMC Impacts using UK-to-UK impact factors 
    df_elec_nox_impacts <- df_elec_nox_emissions()[,1:9]
    
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
      
      return(df_elec_nox_impacts)
      
    }
    
    else 
      {
      
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
      
      return(df_elec_nox_impacts)
      
    }
    
  })
  
  # Plot output
  
  output$elec_nox <- renderPlotly({
    
    req(df_elec_nox_impacts())
    
      long_df_elec_nox_impacts <- melt(df_elec_nox_impacts()[, 1:9], id.vars = "Year", variable.name = "Source", value.name = "PWMC", na.rm = TRUE)
      
      
      p <- ggplot(long_df_elec_nox_impacts, aes(Year, PWMC, col = Source)) +
        geom_line() + 
        {
          if (input$absolute_or_perUnit == "Absolute emissions/impacts")
          {
            labs(y = y_label_nox)
            
          }
          
          else 
          {
            labs(y = y_label_nox_perTWh)
          }
          
        }
      
      ggplotly(p)

  })   
  
  #########################################################################################################
  
  # PM2.5 PWMC Impacts (currently not weighted per unit energy)
  
  df_elec_pm25_emissions <- reactive({
    
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
    
    return(df_elec_pm25_emissions)
    
  })
  
  
  df_elec_pm25_impacts <- reactive({
    
    req(df_elec_pm25_emissions())
    
    # Producing PWMC Impacts using UK-to-UK impact factors 
    df_elec_pm25_impacts <- df_elec_pm25_emissions()[,1:9]
    
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
      
      return(df_elec_pm25_impacts)
     
   
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
     
      return(df_elec_pm25_impacts) 
    
    }
  
  
  })
  
  
  # Plot output
  
  output$elec_pm25 <- renderPlotly({
    
    req(df_elec_pm25_impacts())
    
    
      long_df_elec_pm25_impacts <- melt(df_elec_pm25_impacts()[, 1:9], id.vars = "Year", variable.name = "Source", value.name = "PWMC", na.rm = TRUE)
      
      
      p <- ggplot(long_df_elec_pm25_impacts, aes(Year, PWMC, col = Source)) +
        geom_line() + 
        {
          if (input$absolute_or_perUnit == "Absolute emissions/impacts")
          {
            labs(y = y_label_pm25)
            
          }
          
          else 
          {
            labs(y = y_label_pm25_perTWh)
          }
          
        }
      
      
      ggplotly(p)
      
    
    
  })   
  
  ###################################################################################################################################################
  
  # Domestic Heating
  
  # Domestic Heating CO2 Emissions
  
  df_dh_co2_emissions <- reactive({
    
    # Both perfect data and energy vector now in same format (treated prior in dh_data), no need for looping of code
    req(dh_data())
    
    df_dh_co2_emissions <- dh_data()[, 1:17]
    
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
      
      return(df_dh_co2_emissions)
      
    }
    
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
      
      return(df_dh_co2_emissions)
      
    }
    
  })
  
  
  
  output$dh_co2 <- renderPlotly({
    
  long_df_dh_co2_emissions <- melt(df_dh_co2_emissions()[, 1:17], id.vars = "Year", variable.name = "Source", value.name = "Emissions", na.rm = TRUE)
      
      p <- ggplot(long_df_dh_co2_emissions, aes(Year, Emissions, col = Source)) +
        geom_line() + 
        {
          if (input$absolute_or_perUnit == "Absolute emissions/impacts")
          {
            labs(y = y_label_co2)
            
          }
          
          else 
          {
            labs(y = y_label_co2_perTWh)
          }
          
        }
      
      ggplotly(p)
      

  })
  
  
  ###############################################################################################################     
  
  # Domestic Heating NOx Emissions
  
  df_dh_nox_emissions <- reactive({
     
    # Both perfect data and energy vector now in same format (treated prior in dh_data), no need for looping of code
    req(dh_data())
    
     df_dh_nox_emissions <- dh_data()[, 1:17]
    
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
     
     return(df_dh_nox_emissions)
    
   })
  
  df_dh_nox_impacts <- reactive({
    
    req(df_dh_nox_emissions())
    
    df_dh_nox_impacts <- df_dh_nox_emissions()[, 1:17]
    
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
      
     return(df_dh_nox_impacts)
      
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
      
      return(df_dh_nox_impacts)
      
    }
    
  })
  
  output$dh_nox <- renderPlotly({
    
    req(df_dh_nox_impacts())
    
    long_df_dh_nox_impacts <- melt(df_dh_nox_impacts()[, 1:17], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_df_dh_nox_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() + 
        {
          if (input$absolute_or_perUnit == "Absolute emissions/impacts")
          {
            labs(y = y_label_nox)
            
          }
          
          else 
          {
            labs(y = y_label_nox_perTWh)
          }
          
        }
      
      ggplotly(p)
      
    
  })
  
  
  
  ###################################################################################################################
  
  # Domestic PM2.5 Emissions
  
  df_dh_pm25_emissions <- reactive({
    
    # Both perfect data and energy vector now in same format (treated prior in dh_data), no need for looping of code
    req(dh_data())
    
    df_dh_pm25_emissions <- dh_data()[, 1:17]
    
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
    
    return(df_dh_pm25_emissions)
    
    
  })
  
  
  df_dh_pm25_impacts <- reactive({
    
    req(df_dh_pm25_emissions())
    
    df_dh_pm25_impacts <- df_dh_pm25_emissions()[, 1:17]
    
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
      
    return(df_dh_pm25_impacts)
      
    }
    
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
      
      return(df_dh_pm25_impacts)
      
    }
    
  })
  
  # Plot output
  
  output$dh_pm25 <- renderPlotly({
    
      req(df_dh_pm25_impacts())
      
      long_df_dh_pm25_impacts <- melt(df_dh_pm25_impacts()[, 1:17], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_df_dh_pm25_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() + 
        {
          if (input$absolute_or_perUnit == "Absolute emissions/impacts")
          {
            labs(y = y_label_pm25)
            
          }
          
          else 
          {
            labs(y = y_label_pm25_perTWh)
          }
          
        }
      
      ggplotly(p)
    
  })
  
  
  ###################################################################################################################################################
  
  # Public and commercial Heating
  
  # Public and commercial Heating CO2 Emissions
  
  df_ph_co2_emissions <- reactive({
    
    req(ph_data())
    
      df_ph_co2_emissions <- ph_data()[, 1:17]
      
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
        
        return(df_ph_co2_emissions)
        
      }
      
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
        
        return(df_ph_co2_emissions)
        
      }
    
  })
  
  # Plot Output
  
  output$ph_co2 <- renderPlotly({
    
    req(df_ph_co2_emissions())
   
      long_df_ph_co2_emissions <- melt(df_ph_co2_emissions()[, 1:17], id.vars = "Year", variable.name = "Source", value.name = "Emissions", na.rm = TRUE)
      
      p <- ggplot(long_df_ph_co2_emissions, aes(Year, Emissions, col = Source)) +
        geom_line() + 
        {
          if (input$absolute_or_perUnit == "Absolute emissions/impacts")
          {
            labs(y = y_label_co2)
            
          }
          
          else 
          {
            labs(y = y_label_co2_perTWh)
          }
          
        }
      
      ggplotly(p)
      

  })
  
  
  ###############################################################################################################     
  
  # Public and commercial Heating NOx Emissions
  
  df_ph_nox_emissions <- reactive({
    
    req(ph_data())
    

    df_ph_nox_emissions <- ph_data()[, 1:17]
    
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
    
    return(df_ph_nox_emissions)
   
    })
  
  df_ph_nox_impacts <- reactive({
    
    req(df_ph_nox_emissions())
    
    # pNOx PWMC Impacts
    
    df_ph_nox_impacts <- df_ph_nox_emissions()[, 1:17]
    
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
      
     return(df_ph_nox_impacts)
      
    }
    
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
      
      return(df_ph_nox_impacts)
      
    }
    
    
  })
  
  # Plot Output
  
  output$ph_nox <- renderPlotly({
    
    req(df_ph_nox_impacts())
    
      long_df_ph_nox_impacts <- melt(df_ph_nox_impacts()[, 1:17], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_df_ph_nox_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() + 
        {
          if (input$absolute_or_perUnit == "Absolute emissions/impacts")
          {
            labs(y = y_label_nox)
            
          }
          
          else 
          {
            labs(y = y_label_nox_perTWh)
          }
          
        }      
     
      ggplotly(p)
      
    
  })
  
  
  ###################################################################################################################
  
  # Public and commercial PM2.5 Emissions
  
  df_ph_pm25_emissions <- reactive({
    
    req(ph_data())
    
      df_ph_pm25_emissions <- ph_data()[, 1:17]
      
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
      
      return(df_ph_pm25_emissions)
      
      

  })
  
  
  df_ph_pm25_impacts <- reactive({
    
    req(df_ph_pm25_emissions())
    
    # PM2.5 PWMC Impacts
    
    df_ph_pm25_impacts <- df_ph_pm25_emissions()[, 1:17]
    
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
      
    return(df_ph_pm25_impacts)
      
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
      
      return(df_ph_pm25_impacts)
      
    }
    
    
  })
  
  output$ph_pm25 <- renderPlotly({
    
   req(df_ph_pm25_impacts())
    

      long_df_ph_pm25_impacts <- melt(df_ph_pm25_impacts()[, 1:17], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_df_ph_pm25_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() + 
        {
          if (input$absolute_or_perUnit == "Absolute emissions/impacts")
          {
            labs(y = y_label_pm25)
            
          }
          
          else 
          {
            labs(y = y_label_pm25_perTWh)
          }
          
        }
      
      ggplotly(p)
      

  })
  
  ####################################################################################################################
  
  # Iron and Steel Combustion Emissions
  
  ironsteel_co2_emissions <- reactive({
    
    # Now contains data in both perfect and energy vector form - no need for if loop here now!
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
      
      return(ironsteel_co2_emissions)
      
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
      
      return(ironsteel_co2_emissions)
      
    }
    

    
    
    # Energy vector form - completed in same was a building heating, appending the data to vector share * overall data and then taking specific section of table - consistent for next bracket
   
    # else if (input$dataLevelsIndustry == "Energy Vector Demand (e.g., hydrogen demand for industrial combustion)") {
    #   
    #   
    #   ironsteel_co2_emissions <- ironsteel_data()[, c(1,10:15)]
    #   
    #   # Absolute CO2 Emissions
    #   
    #   if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
    #     
    #     ironsteel_co2_emissions$`Iron and steel - Natural Gas` <- ironsteel_co2_emissions$`Iron and steel - Natural Gas` * ironsteel_co2_EF_gas
    #     ironsteel_co2_emissions$`Iron and steel - Hydrogen` <- ironsteel_co2_emissions$`Iron and steel - Hydrogen` * ironsteel_co2_EF_hydrogen
    #     ironsteel_co2_emissions$`Iron and steel - Oil/Petroleum` <- ironsteel_co2_emissions$`Iron and steel - Oil/Petroleum` * ironsteel_co2_EF_fueloil
    #     ironsteel_co2_emissions$`Iron and steel - Bioenergy/Other` <- ironsteel_co2_emissions$`Iron and steel - Bioenergy/Other` * ironsteel_co2_EF_biomass
    #     ironsteel_co2_emissions$`Iron and steel - Gas CCS` <- ironsteel_co2_emissions$`Iron and steel - Gas CCS` * ironsteel_co2_EF_gasccs
    #     ironsteel_co2_emissions$`Iron and steel - BECCS` <- ironsteel_co2_emissions$`Iron and steel - BECCS` * ironsteel_co2_EF_beccs
    #     ironsteel_co2_emissions$`Total Emissions` <- rowSums(ironsteel_co2_emissions[ , 2:7], na.rm = TRUE)
    #     
    #     return(ironsteel_co2_emissions)
    #     
    #   }
    #   
    #   # Per TWh CO2 Emissions
    #   
    #   else {
    #     
    #     ironsteel_co2_emissions$`Iron and steel - Natural Gas` <- (ironsteel_co2_emissions$`Iron and steel - Natural Gas` * ironsteel_co2_EF_gas)/ironsteel_data_sum()
    #     ironsteel_co2_emissions$`Iron and steel - Hydrogen` <- (ironsteel_co2_emissions$`Iron and steel - Hydrogen` * ironsteel_co2_EF_hydrogen)/ironsteel_data_sum()
    #     ironsteel_co2_emissions$`Iron and steel - Oil/Petroleum` <- (ironsteel_co2_emissions$`Iron and steel - Oil/Petroleum` * ironsteel_co2_EF_fueloil)/ironsteel_data_sum()
    #     ironsteel_co2_emissions$`Iron and steel - Bioenergy/Other` <- (ironsteel_co2_emissions$`Iron and steel - Bioenergy/Other` * ironsteel_co2_EF_biomass)/ironsteel_data_sum()
    #     ironsteel_co2_emissions$`Iron and steel - Gas CCS` <- (ironsteel_co2_emissions$`Iron and steel - Gas CCS` * ironsteel_co2_EF_gasccs)/ironsteel_data_sum()
    #     ironsteel_co2_emissions$`Iron and steel - BECCS` <- (ironsteel_co2_emissions$`Iron and steel - BECCS` * ironsteel_co2_EF_beccs)/ironsteel_data_sum()
    #     ironsteel_co2_emissions$`Total Emissions per TWh` <- rowSums(ironsteel_co2_emissions[ , 2:7], na.rm = TRUE)
    #     
    #     return(ironsteel_co2_emissions)
    #     
    #   }
    #   
    # }
      
    
  })
  
  # Plot output - data forms for either case are now in the same format - only one plotly expression needed
  
  output$ironsteel_co2 <- renderPlotly({
    
    req(ironsteel_co2_emissions())
    
    long_ironsteel_co2_emissions <- melt(ironsteel_co2_emissions()[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Emissions", na.rm = TRUE)
      
      p <- ggplot(long_ironsteel_co2_emissions, aes(Year, Emissions, col = Source)) +
        geom_line() +
        {
          if (input$absolute_or_perUnit == "Absolute emissions/impacts")
          {
            labs(y = y_label_co2)
            
          }
          
          else 
          {
            labs(y = y_label_co2_perTWh)
          }
          
        }
      
      ggplotly(p)
    
  })
  
  ####################################################################################################################
  
  # Iron and Steel NOx impacts
  
  ironsteel_nox_emissions <- reactive({
    
    req(ironsteel_data())
    
    ironsteel_nox_emissions <- ironsteel_data()[, c(1,3:8)]
    
    ironsteel_nox_emissions$`Iron and steel - Natural Gas` <- ironsteel_nox_emissions$`Iron and steel - Natural Gas` * ironsteel_nox_EF_gas
    ironsteel_nox_emissions$`Iron and steel - Hydrogen` <- ironsteel_nox_emissions$`Iron and steel - Hydrogen` * ironsteel_nox_EF_hydrogen
    ironsteel_nox_emissions$`Iron and steel - Oil/Petroleum` <- ironsteel_nox_emissions$`Iron and steel - Oil/Petroleum` * ironsteel_nox_EF_fueloil
    ironsteel_nox_emissions$`Iron and steel - Bioenergy/Other` <- ironsteel_nox_emissions$`Iron and steel - Bioenergy/Other` * ironsteel_nox_EF_biomass
    ironsteel_nox_emissions$`Iron and steel - Gas CCS` <- ironsteel_nox_emissions$`Iron and steel - Gas CCS` * ironsteel_nox_EF_gasccs
    ironsteel_nox_emissions$`Iron and steel - BECCS` <- ironsteel_nox_emissions$`Iron and steel - BECCS` * ironsteel_nox_EF_beccs
    ironsteel_nox_emissions$`Total Emissions` <- rowSums(ironsteel_nox_emissions[ , 2:7], na.rm = TRUE)
    
    return(ironsteel_nox_emissions)
    
  })
  
  
  ironsteel_nox_impacts <- reactive({
    
    req(ironsteel_nox_emissions())
    
    ironsteel_nox_impacts <- ironsteel_nox_emissions()[, 1:7]
    
    # Absolute NOx Impacts
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      ironsteel_nox_impacts$`Iron and steel - Natural Gas` <- ironsteel_nox_impacts$`Iron and steel - Natural Gas` * ironsteel_nox_IF
      ironsteel_nox_impacts$`Iron and steel - Hydrogen` <- ironsteel_nox_impacts$`Iron and steel - Hydrogen` * ironsteel_nox_IF
      ironsteel_nox_impacts$`Iron and steel - Oil/Petroleum` <- ironsteel_nox_impacts$`Iron and steel - Oil/Petroleum` * ironsteel_nox_IF
      ironsteel_nox_impacts$`Iron and steel - Bioenergy/Other` <- ironsteel_nox_impacts$`Iron and steel - Bioenergy/Other` * ironsteel_nox_IF
      ironsteel_nox_impacts$`Iron and steel - Gas CCS` <- ironsteel_nox_impacts$`Iron and steel - Gas CCS` * ironsteel_nox_IF
      ironsteel_nox_impacts$`Iron and steel - BECCS` <- ironsteel_nox_impacts$`Iron and steel - BECCS` * ironsteel_nox_IF
      ironsteel_nox_impacts$`Total Impact` <- rowSums(ironsteel_nox_impacts[ , 2:7], na.rm = TRUE)
      
      return(ironsteel_nox_impacts)
      
    }
    
    # Per TWh NOx Impacts
    
    else {
      
      ironsteel_nox_impacts$`Iron and steel - Natural Gas` <- (ironsteel_nox_impacts$`Iron and steel - Natural Gas` * ironsteel_nox_IF)/ironsteel_data_sum()
      ironsteel_nox_impacts$`Iron and steel - Hydrogen` <- (ironsteel_nox_impacts$`Iron and steel - Hydrogen` * ironsteel_nox_IF)/ironsteel_data_sum()
      ironsteel_nox_impacts$`Iron and steel - Oil/Petroleum` <- (ironsteel_nox_impacts$`Iron and steel - Oil/Petroleum` * ironsteel_nox_IF)/ironsteel_data_sum()
      ironsteel_nox_impacts$`Iron and steel - Bioenergy/Other` <- (ironsteel_nox_impacts$`Iron and steel - Bioenergy/Other` * ironsteel_nox_IF)/ironsteel_data_sum()
      ironsteel_nox_impacts$`Iron and steel - Gas CCS` <- (ironsteel_nox_impacts$`Iron and steel - Gas CCS` * ironsteel_nox_IF)/ironsteel_data_sum()
      ironsteel_nox_impacts$`Iron and steel - BECCS` <- (ironsteel_nox_impacts$`Iron and steel - BECCS` * ironsteel_nox_IF)/ironsteel_data_sum()
      ironsteel_nox_impacts$`Total Impact per TWh` <- rowSums(ironsteel_nox_impacts[ , 2:7], na.rm = TRUE)
      
      return(ironsteel_nox_impacts)
      
    }
    
  })
  
  output$ironsteel_nox <- renderPlotly({
    
    req(ironsteel_nox_impacts())
      
      long_ironsteel_nox_impacts <- melt(ironsteel_nox_impacts()[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_ironsteel_nox_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() +
        {
          if (input$absolute_or_perUnit == "Absolute emissions/impacts")
          {
            labs(y = y_label_nox)
            
          }
          
          else 
          {
            labs(y = y_label_nox_perTWh)
          }
          
        }   
      
      ggplotly(p)
      
 
  })
  
  ####################################################################################################################
  
  # PM2.5 Emissions
  
  ironsteel_pm25_emissions <- reactive({
    
    req(ironsteel_data())
    
    ironsteel_pm25_emissions <- ironsteel_data()[, c(1,3:8)]
    
    ironsteel_pm25_emissions$`Iron and steel - Natural Gas` <- ironsteel_pm25_emissions$`Iron and steel - Natural Gas` * ironsteel_pm25_EF_gas
    ironsteel_pm25_emissions$`Iron and steel - Hydrogen` <- ironsteel_pm25_emissions$`Iron and steel - Hydrogen` * ironsteel_pm25_EF_hydrogen
    ironsteel_pm25_emissions$`Iron and steel - Oil/Petroleum` <- ironsteel_pm25_emissions$`Iron and steel - Oil/Petroleum` * ironsteel_pm25_EF_fueloil
    ironsteel_pm25_emissions$`Iron and steel - Bioenergy/Other` <- ironsteel_pm25_emissions$`Iron and steel - Bioenergy/Other` * ironsteel_pm25_EF_biomass
    ironsteel_pm25_emissions$`Iron and steel - Gas CCS` <- ironsteel_pm25_emissions$`Iron and steel - Gas CCS` * ironsteel_pm25_EF_gasccs
    ironsteel_pm25_emissions$`Iron and steel - BECCS` <- ironsteel_pm25_emissions$`Iron and steel - BECCS` * ironsteel_pm25_EF_beccs
    ironsteel_pm25_emissions$`Total Emissions` <- rowSums(ironsteel_pm25_emissions[ , 2:7], na.rm = TRUE)
    
    return(ironsteel_pm25_emissions)
    
  })
  
  ironsteel_pm25_impacts <- reactive({
    
    req(ironsteel_pm25_emissions())
    
    ironsteel_pm25_impacts <- ironsteel_pm25_emissions()[, 1:7]
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      ironsteel_pm25_impacts$`Iron and steel - Natural Gas` <- ironsteel_pm25_impacts$`Iron and steel - Natural Gas` * ironsteel_pm25_IF
      ironsteel_pm25_impacts$`Iron and steel - Hydrogen` <- ironsteel_pm25_impacts$`Iron and steel - Hydrogen` * ironsteel_pm25_IF
      ironsteel_pm25_impacts$`Iron and steel - Oil/Petroleum` <- ironsteel_pm25_impacts$`Iron and steel - Oil/Petroleum` * ironsteel_pm25_IF
      ironsteel_pm25_impacts$`Iron and steel - Bioenergy/Other` <- ironsteel_pm25_impacts$`Iron and steel - Bioenergy/Other` * ironsteel_pm25_IF
      ironsteel_pm25_impacts$`Iron and steel - Gas CCS` <- ironsteel_pm25_impacts$`Iron and steel - Gas CCS` * ironsteel_pm25_IF
      ironsteel_pm25_impacts$`Iron and steel - BECCS` <- ironsteel_pm25_impacts$`Iron and steel - BECCS` * ironsteel_pm25_IF
      ironsteel_pm25_impacts$`Total Impact` <- rowSums(ironsteel_pm25_impacts[ , 2:7], na.rm = TRUE)
      
      return(ironsteel_pm25_impacts)
      
    }
    
    else {
      
      ironsteel_pm25_impacts$`Iron and steel - Natural Gas` <- (ironsteel_pm25_impacts$`Iron and steel - Natural Gas` * ironsteel_pm25_IF)/ironsteel_data_sum()
      ironsteel_pm25_impacts$`Iron and steel - Hydrogen` <- (ironsteel_pm25_impacts$`Iron and steel - Hydrogen` * ironsteel_pm25_IF)/ironsteel_data_sum()
      ironsteel_pm25_impacts$`Iron and steel - Oil/Petroleum` <- (ironsteel_pm25_impacts$`Iron and steel - Oil/Petroleum` * ironsteel_pm25_IF)/ironsteel_data_sum()
      ironsteel_pm25_impacts$`Iron and steel - Bioenergy/Other` <- (ironsteel_pm25_impacts$`Iron and steel - Bioenergy/Other` * ironsteel_pm25_IF)/ironsteel_data_sum()
      ironsteel_pm25_impacts$`Iron and steel - Gas CCS` <- (ironsteel_pm25_impacts$`Iron and steel - Gas CCS` * ironsteel_pm25_IF)/ironsteel_data_sum()
      ironsteel_pm25_impacts$`Iron and steel - BECCS` <- (ironsteel_pm25_impacts$`Iron and steel - BECCS` * ironsteel_pm25_IF)/ironsteel_data_sum()
      ironsteel_pm25_impacts$`Total Impact per TWh` <- rowSums(ironsteel_pm25_impacts[ , 2:7], na.rm = TRUE)
      
      return(ironsteel_pm25_impacts)
      
    }
      

  })
  
  output$ironsteel_pm25 <- renderPlotly({
    
   req(ironsteel_pm25_impacts())
      
      long_ironsteel_pm25_impacts <- melt(ironsteel_pm25_impacts()[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_ironsteel_pm25_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() +
        {
          if (input$absolute_or_perUnit == "Absolute emissions/impacts")
          {
            labs(y = y_label_pm25)
            
          }
          
          else 
          {
            labs(y = y_label_pm25_perTWh)
          }
          
        }
      
      ggplotly(p)
      
    
  })
  
  ####################################################################################################################
  
  # Hydrogen Production Emissions
  
  # CO2 Emissions
  
  hyd_co2_emissions <- reactive({
    
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
        
        return(hyd_co2_emissions)
      }
      
      # 100-Year GWP
      else {
        
        hyd_co2_emissions$`Methane Reformation with CCUS (Blue)` <- hyd_co2_emissions$`Methane Reformation with CCUS (Blue)` * hyd_prod_co2_EF_blue_gwp100
        hyd_co2_emissions$`Biomass Gasification` <- hyd_co2_emissions$`Biomass Gasification` * hyd_prod_co2_EF_biomass_gasification_gwp100
        hyd_co2_emissions$`Methane Reformation (Grey)` <- hyd_co2_emissions$`Methane Reformation (Grey)` * hyd_prod_co2_EF_grey_gwp100
        hyd_co2_emissions$`Total Emissions` <- rowSums(hyd_co2_emissions[ , 2:4], na.rm = TRUE)
        
        return(hyd_co2_emissions)
        
      }
    }
    
    else {
      
      # 20-Year GWP
      if(input$gwpPotentials == "GWP20") {
        
        hyd_co2_emissions$`Methane Reformation with CCUS (Blue)` <- (hyd_co2_emissions$`Methane Reformation with CCUS (Blue)` * hyd_prod_co2_EF_blue_gwp20)/hyd_data_sum()
        hyd_co2_emissions$`Biomass Gasification` <- (hyd_co2_emissions$`Biomass Gasification` * hyd_prod_co2_EF_biomass_gasification_gwp20)/hyd_data_sum()
        hyd_co2_emissions$`Methane Reformation (Grey)` <- (hyd_co2_emissions$`Methane Reformation (Grey)` * hyd_prod_co2_EF_grey_gwp20)/hyd_data_sum()
        hyd_co2_emissions$`Total Emissions per TWh` <- rowSums(hyd_co2_emissions[ , 2:4], na.rm = TRUE)
        
        return(hyd_co2_emissions)
      }
      
      # 100-Year GWP
      else {
        
        hyd_co2_emissions$`Methane Reformation with CCUS (Blue)` <- (hyd_co2_emissions$`Methane Reformation with CCUS (Blue)` * hyd_prod_co2_EF_blue_gwp100)/hyd_data_sum()
        hyd_co2_emissions$`Biomass Gasification` <- (hyd_co2_emissions$`Biomass Gasification` * hyd_prod_co2_EF_biomass_gasification_gwp100)/hyd_data_sum()
        hyd_co2_emissions$`Methane Reformation (Grey)` <- (hyd_co2_emissions$`Methane Reformation (Grey)` * hyd_prod_co2_EF_grey_gwp100)/hyd_data_sum()
        hyd_co2_emissions$`Total Emissions per TWh` <- rowSums(hyd_co2_emissions[ , 2:4], na.rm = TRUE)
        
        return(hyd_co2_emissions)
      }
      
    }
    
    
  })
  
  output$hydrogen_co2 <- renderPlotly({
    
    req(hyd_co2_emissions())
    
    long_hyd_co2_emissions <- melt(hyd_co2_emissions()[ , 1:4], id.vars = "Year", variable.name = "Source", value.name = "Emissions", na.rm = TRUE)
      
      p <- ggplot(long_hyd_co2_emissions, aes(Year, Emissions, col = Source)) +
        geom_line() + 
        {
          if (input$absolute_or_perUnit == "Absolute emissions/impacts")
          {
            labs(y = y_label_co2e)
            
          }
          
          else 
          {
            labs(y = y_label_co2e_perTWh)
          }
          
        }
      
      ggplotly(p)
    
  })
  
  ####################################################################################################################
  
  # NOx Impacts
  
  hyd_nox_impacts <- reactive({
    
    req(input_hyd_file())
    
    hyd_nox_impacts <- input_hyd_file()[ , 1:4]
    
    # Absolute NOx Impact
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      hyd_nox_impacts$`Methane Reformation with CCUS (Blue)` <- hyd_nox_impacts$`Methane Reformation with CCUS (Blue)` * hyd_prod_nox_EF_blue * hyd_prod_nox_IF_Gas
      hyd_nox_impacts$`Biomass Gasification` <- hyd_nox_impacts$`Biomass Gasification` * hyd_prod_nox_EF_biomass_gasification * hyd_prod_nox_IF_Gas
      hyd_nox_impacts$`Methane Reformation (Grey)` <- hyd_nox_impacts$`Methane Reformation (Grey)` * hyd_prod_nox_EF_grey * hyd_prod_nox_IF_Gas
      hyd_nox_impacts$`Total Impact` <- rowSums(hyd_nox_impacts[ , 2:4], na.rm = TRUE)
      
      return(hyd_nox_impacts)
    }
    
    else {
      
      hyd_nox_impacts$`Methane Reformation with CCUS (Blue)` <- (hyd_nox_impacts$`Methane Reformation with CCUS (Blue)` * hyd_prod_nox_EF_blue * hyd_prod_nox_IF_Gas)/hyd_data_sum()
      hyd_nox_impacts$`Biomass Gasification` <- (hyd_nox_impacts$`Biomass Gasification` * hyd_prod_nox_EF_biomass_gasification * hyd_prod_nox_IF_Gas)/hyd_data_sum()
      hyd_nox_impacts$`Methane Reformation (Grey)` <- (hyd_nox_impacts$`Methane Reformation (Grey)` * hyd_prod_nox_EF_grey * hyd_prod_nox_IF_Gas)/hyd_data_sum()
      hyd_nox_impacts$`Total Impact per TWh` <- rowSums(hyd_nox_impacts[ , 2:4], na.rm = TRUE)
      return(hyd_nox_impacts)
    }
    
  })
  
  output$hydrogen_nox <- renderPlotly({

    req(hyd_nox_impacts())
      
      long_hyd_nox_impacts <- melt(hyd_nox_impacts()[ , 1:4], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_hyd_nox_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() + 
        {
          if (input$absolute_or_perUnit == "Absolute emissions/impacts")
          {
            labs(y = y_label_nox)
            
          }
          
          else 
          {
            labs(y = y_label_nox_perTWh)
          }
          
        }
      
      ggplotly(p)
  
    })
  
  ####################################################################################################################
  
  hyd_pm25_impacts <- reactive({
    
    req(input_hyd_file())
    
    hyd_pm25_impacts <- input_hyd_file()[ , 1:4]
    
    # Absolute PM2.5 Impact
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      hyd_pm25_impacts$`Methane Reformation with CCUS (Blue)` <- hyd_pm25_impacts$`Methane Reformation with CCUS (Blue)` * hyd_prod_pm25_EF_blue * hyd_prod_pm25_IF_Gas
      hyd_pm25_impacts$`Biomass Gasification` <- hyd_pm25_impacts$`Biomass Gasification` * hyd_prod_pm25_EF_biomass_gasification * hyd_prod_pm25_IF_Gas
      hyd_pm25_impacts$`Methane Reformation (Grey)` <- hyd_pm25_impacts$`Methane Reformation (Grey)` * hyd_prod_pm25_EF_grey * hyd_prod_pm25_IF_Gas
      hyd_pm25_impacts$`Total Impact` <- rowSums(hyd_pm25_impacts[ , 2:4], na.rm = TRUE)
      
      return(hyd_pm25_impacts)
      
    }
    
    # Per TWh PM2.5 Impact
    
    else {
      
      hyd_pm25_impacts$`Methane Reformation with CCUS (Blue)` <- (hyd_pm25_impacts$`Methane Reformation with CCUS (Blue)` * hyd_prod_pm25_EF_blue * hyd_prod_pm25_IF_Gas)/hyd_data_sum()
      hyd_pm25_impacts$`Biomass Gasification` <- (hyd_pm25_impacts$`Biomass Gasification` * hyd_prod_pm25_EF_biomass_gasification * hyd_prod_pm25_IF_Gas)/hyd_data_sum()
      hyd_pm25_impacts$`Methane Reformation (Grey)` <- (hyd_pm25_impacts$`Methane Reformation (Grey)` * hyd_prod_pm25_EF_grey * hyd_prod_pm25_IF_Gas)/hyd_data_sum()
      hyd_pm25_impacts$`Total Impact per TWh` <- rowSums(hyd_pm25_impacts[ , 2:4], na.rm = TRUE)
      
      return(hyd_pm25_impacts)
      
    }
    
    
  })
  
  output$hydrogen_pm25 <- renderPlotly({
    
      req(hyd_pm25_impacts())
      
      long_hyd_pm25_impacts <- melt(hyd_pm25_impacts()[ , 1:4], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_hyd_pm25_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() + 
        {
          if (input$absolute_or_perUnit == "Absolute emissions/impacts")
          {
            labs(y = y_label_pm25)
            
          }
          
          else 
          {
            labs(y = y_label_pm25_perTWh)
          }
          
        }
      
      ggplotly(p)
      
   
    
  })
  
  
  ####################################################################################################################
  
  # Non-ferrous metals Combustion Emissions
  # Non-ferrous metals CO2 emissions
  
  nfm_co2_emissions <- reactive({
    
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
      
      return(nfm_co2_emissions)
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
      
      return(nfm_co2_emissions)
    }
    
  })
  
  
  output$nfm_co2 <- renderPlotly({
    
    req(nfm_co2_emissions())
    
      long_nfm_co2_emissions <- melt(nfm_co2_emissions()[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Emissions", na.rm = TRUE)
      
      p <- ggplot(long_nfm_co2_emissions, aes(Year, Emissions, col = Source)) +
        geom_line() +
        {
          if (input$absolute_or_perUnit == "Absolute emissions/impacts")
          {
            labs(y = y_label_co2)
            
          }
          
          else 
          {
            labs(y = y_label_co2_perTWh)
          }
          
        }
      
      ggplotly(p)
      
    
  })
  
  ####################################################################################################################
  
  # Non-ferrous metals NOx Impacts 
  
  nfm_nox_emissions <- reactive({
    
    req(nfm_data())
    
    nfm_nox_emissions <- nfm_data()[, c(1,3:8)]
    
    nfm_nox_emissions$`Non-ferrous metals - Natural Gas` <- nfm_nox_emissions$`Non-ferrous metals - Natural Gas` * nfm_nox_EF_gas
    nfm_nox_emissions$`Non-ferrous metals - Hydrogen` <- nfm_nox_emissions$`Non-ferrous metals - Hydrogen` * nfm_nox_EF_hydrogen
    nfm_nox_emissions$`Non-ferrous metals - Oil/Petroleum` <- nfm_nox_emissions$`Non-ferrous metals - Oil/Petroleum` * nfm_nox_EF_fueloil
    nfm_nox_emissions$`Non-ferrous metals - Bioenergy/Other` <- nfm_nox_emissions$`Non-ferrous metals - Bioenergy/Other` * nfm_nox_EF_biomass
    nfm_nox_emissions$`Non-ferrous metals - Gas CCS` <- nfm_nox_emissions$`Non-ferrous metals - Gas CCS` * nfm_nox_EF_gasccs
    nfm_nox_emissions$`Non-ferrous metals - BECCS` <- nfm_nox_emissions$`Non-ferrous metals - BECCS` * nfm_nox_EF_beccs
    nfm_nox_emissions$`Total Emissions` <- rowSums(nfm_nox_emissions[ , 2:7], na.rm = TRUE)
    
    return(nfm_nox_emissions)
    
  })
  
  nfm_nox_impacts <- reactive({
    
    req(nfm_nox_emissions())
    
    nfm_nox_impacts <- nfm_nox_emissions()[, 1:7]
    
    # Absolute NOx Impacts
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      nfm_nox_impacts$`Non-ferrous metals - Natural Gas` <- nfm_nox_impacts$`Non-ferrous metals - Natural Gas` * nfm_nox_IF
      nfm_nox_impacts$`Non-ferrous metals - Hydrogen` <- nfm_nox_impacts$`Non-ferrous metals - Hydrogen` * nfm_nox_IF
      nfm_nox_impacts$`Non-ferrous metals - Oil/Petroleum` <- nfm_nox_impacts$`Non-ferrous metals - Oil/Petroleum` * nfm_nox_IF
      nfm_nox_impacts$`Non-ferrous metals - Bioenergy/Other` <- nfm_nox_impacts$`Non-ferrous metals - Bioenergy/Other` * nfm_nox_IF
      nfm_nox_impacts$`Non-ferrous metals - Gas CCS` <- nfm_nox_impacts$`Non-ferrous metals - Gas CCS` * nfm_nox_IF
      nfm_nox_impacts$`Non-ferrous metals - BECCS` <- nfm_nox_impacts$`Non-ferrous metals - BECCS` * nfm_nox_IF
      nfm_nox_impacts$`Total Impact` <- rowSums(nfm_nox_impacts[ , 2:7], na.rm = TRUE)
      
      return(nfm_nox_impacts)
      
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
      
      return(nfm_nox_impacts)
    
      }
    
  })
  
  output$nfm_nox <- renderPlotly({
    
    req(nfm_nox_impacts()) 
      
      long_nfm_nox_impacts <- melt(nfm_nox_impacts()[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_nfm_nox_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() +
        {
          if (input$absolute_or_perUnit == "Absolute emissions/impacts")
          {
            labs(y = y_label_nox)
            
          }
          
          else 
          {
            labs(y = y_label_nox_perTWh)
          }
          
        }
      
      ggplotly(p)
    
  })
  
  ####################################################################################################################
  
  # Non-ferrous metals PM2.5 Impacts
  
  nfm_pm25_emissions <- reactive({
    
    req(nfm_data())
    
    nfm_pm25_emissions <- nfm_data()[, c(1,3:8)]
    
    nfm_pm25_emissions$`Non-ferrous metals - Natural Gas` <- nfm_pm25_emissions$`Non-ferrous metals - Natural Gas` * nfm_pm25_EF_gas
    nfm_pm25_emissions$`Non-ferrous metals - Hydrogen` <- nfm_pm25_emissions$`Non-ferrous metals - Hydrogen` * nfm_pm25_EF_hydrogen
    nfm_pm25_emissions$`Non-ferrous metals - Oil/Petroleum` <- nfm_pm25_emissions$`Non-ferrous metals - Oil/Petroleum` * nfm_pm25_EF_fueloil
    nfm_pm25_emissions$`Non-ferrous metals - Bioenergy/Other` <- nfm_pm25_emissions$`Non-ferrous metals - Bioenergy/Other` * nfm_pm25_EF_biomass
    nfm_pm25_emissions$`Non-ferrous metals - Gas CCS` <- nfm_pm25_emissions$`Non-ferrous metals - Gas CCS` * nfm_pm25_EF_gasccs
    nfm_pm25_emissions$`Non-ferrous metals - BECCS` <- nfm_pm25_emissions$`Non-ferrous metals - BECCS` * nfm_pm25_EF_beccs
    nfm_pm25_emissions$`Total Emissions` <- rowSums(nfm_pm25_emissions[ , 2:7], na.rm = TRUE)
    
    return(nfm_pm25_emissions)
    
  })
  
  nfm_pm25_impacts <- reactive({
    
    req(nfm_pm25_emissions())
    
    nfm_pm25_impacts <- nfm_pm25_emissions()[, 1:7]
    
    # Absolute PM2.5 Impacts
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      nfm_pm25_impacts$`Non-ferrous metals - Natural Gas` <- nfm_pm25_impacts$`Non-ferrous metals - Natural Gas` * nfm_pm25_IF
      nfm_pm25_impacts$`Non-ferrous metals - Hydrogen` <- nfm_pm25_impacts$`Non-ferrous metals - Hydrogen` * nfm_pm25_IF
      nfm_pm25_impacts$`Non-ferrous metals - Oil/Petroleum` <- nfm_pm25_impacts$`Non-ferrous metals - Oil/Petroleum` * nfm_pm25_IF
      nfm_pm25_impacts$`Non-ferrous metals - Bioenergy/Other` <- nfm_pm25_impacts$`Non-ferrous metals - Bioenergy/Other` * nfm_pm25_IF
      nfm_pm25_impacts$`Non-ferrous metals - Gas CCS` <- nfm_pm25_impacts$`Non-ferrous metals - Gas CCS` * nfm_pm25_IF
      nfm_pm25_impacts$`Non-ferrous metals - BECCS` <- nfm_pm25_impacts$`Non-ferrous metals - BECCS` * nfm_pm25_IF
      nfm_pm25_impacts$`Total Impact` <- rowSums(nfm_pm25_impacts[ , 2:7], na.rm = TRUE)
      
      return(nfm_pm25_impacts)
      
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
      
      return(nfm_pm25_impacts)
      
    }
    
  })
  
  output$nfm_pm25 <- renderPlotly({
    
    req(nfm_pm25_impacts())
      
      long_nfm_pm25_impacts <- melt(nfm_pm25_impacts()[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_nfm_pm25_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() +
        {
          if (input$absolute_or_perUnit == "Absolute emissions/impacts")
          {
            labs(y = y_label_pm25)
            
          }
          
          else 
          {
            labs(y = y_label_pm25_perTWh)
          }
          
        }
      
      ggplotly(p) 
      
  
    
  })
  
  ####################################################################################################################     
  
  ####################################################################################################################
  
  # Chemicals Combustion Emissions
  # Chemicals CO2 emissions
  
  chem_co2_emissions <- reactive({
    
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
      
      return(chem_co2_emissions)
      
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
      
      return(chem_co2_emissions)
      
    }
      
  })
  
  
  output$chem_co2 <- renderPlotly({
    
    req(chem_co2_emissions())

      long_chem_co2_emissions <- melt(chem_co2_emissions()[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Emissions", na.rm = TRUE)
      
      p <- ggplot(long_chem_co2_emissions, aes(Year, Emissions, col = Source)) +
        geom_line() +
        {
          if (input$absolute_or_perUnit == "Absolute emissions/impacts")
          {
            labs(y = y_label_co2)
            
          }
          
          else 
          {
            labs(y = y_label_co2_perTWh)
          }
          
        }      
      ggplotly(p)
    
  })
  
  ####################################################################################################################
  
  # Chemicals NOx Impacts
  
  chem_nox_emissions <- reactive({
    
    req(chem_data())
    
    chem_nox_emissions <- chem_data()[, c(1,3:8)]
    
    chem_nox_emissions$`Chemicals - Natural Gas` <- chem_nox_emissions$`Chemicals - Natural Gas` * chem_nox_EF_gas
    chem_nox_emissions$`Chemicals - Hydrogen` <- chem_nox_emissions$`Chemicals - Hydrogen` * chem_nox_EF_hydrogen
    chem_nox_emissions$`Chemicals - Oil/Petroleum` <- chem_nox_emissions$`Chemicals - Oil/Petroleum` * chem_nox_EF_fueloil
    chem_nox_emissions$`Chemicals - Bioenergy/Other` <- chem_nox_emissions$`Chemicals - Bioenergy/Other` * chem_nox_EF_biomass
    chem_nox_emissions$`Chemicals - Gas CCS` <- chem_nox_emissions$`Chemicals - Gas CCS` * chem_nox_EF_gasccs
    chem_nox_emissions$`Chemicals - BECCS` <- chem_nox_emissions$`Chemicals - BECCS` * chem_nox_EF_beccs
    chem_nox_emissions$`Total Emissions` <- rowSums(chem_nox_emissions[ , 2:7], na.rm = TRUE)
    
    return(chem_nox_emissions)
    
  })
  
  chem_nox_impacts <- reactive({
    
    req(chem_nox_emissions())
    
    chem_nox_impacts <- chem_nox_emissions()[, 1:7]
    
    # Absolute NOx Impacts
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      chem_nox_impacts$`Chemicals - Natural Gas` <- chem_nox_impacts$`Chemicals - Natural Gas` * chem_nox_IF
      chem_nox_impacts$`Chemicals - Hydrogen` <- chem_nox_impacts$`Chemicals - Hydrogen` * chem_nox_IF
      chem_nox_impacts$`Chemicals - Oil/Petroleum` <- chem_nox_impacts$`Chemicals - Oil/Petroleum` * chem_nox_IF
      chem_nox_impacts$`Chemicals - Bioenergy/Other` <- chem_nox_impacts$`Chemicals - Bioenergy/Other` * chem_nox_IF
      chem_nox_impacts$`Chemicals - Gas CCS` <- chem_nox_impacts$`Chemicals - Gas CCS` * chem_nox_IF
      chem_nox_impacts$`Chemicals - BECCS` <- chem_nox_impacts$`Chemicals - BECCS` * chem_nox_IF
      chem_nox_impacts$`Total Impact` <- rowSums(chem_nox_impacts[ , 2:7], na.rm = TRUE)
      
      return(chem_nox_impacts)
      
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
      
      return(chem_nox_impacts)
      
      }
    
  })
  
  output$chem_nox <- renderPlotly({

      req(chem_nox_impacts())
      
      long_chem_nox_impacts <- melt(chem_nox_impacts()[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_chem_nox_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() +
        {
          if (input$absolute_or_perUnit == "Absolute emissions/impacts")
          {
            labs(y = y_label_nox)
            
          }
          
          else 
          {
            labs(y = y_label_nox_perTWh)
          }
          
        }      
      
      ggplotly(p)
      
  
  })
  
  ####################################################################################################################
  
  # Chemicals PM2.5 Impacts
  
  chem_pm25_emissions <- reactive({
    
    req(chem_data())
    
    chem_pm25_emissions <- chem_data()[, c(1,3:8)]
    
    chem_pm25_emissions$`Chemicals - Natural Gas` <- chem_pm25_emissions$`Chemicals - Natural Gas` * chem_pm25_EF_gas
    chem_pm25_emissions$`Chemicals - Hydrogen` <- chem_pm25_emissions$`Chemicals - Hydrogen` * chem_pm25_EF_hydrogen
    chem_pm25_emissions$`Chemicals - Oil/Petroleum` <- chem_pm25_emissions$`Chemicals - Oil/Petroleum` * chem_pm25_EF_fueloil
    chem_pm25_emissions$`Chemicals - Bioenergy/Other` <- chem_pm25_emissions$`Chemicals - Bioenergy/Other` * chem_pm25_EF_biomass
    chem_pm25_emissions$`Chemicals - Gas CCS` <- chem_pm25_emissions$`Chemicals - Gas CCS` * chem_pm25_EF_gasccs
    chem_pm25_emissions$`Chemicals - BECCS` <- chem_pm25_emissions$`Chemicals - BECCS` * chem_pm25_EF_beccs
    chem_pm25_emissions$`Total Emissions` <- rowSums(chem_pm25_emissions[ , 2:7], na.rm = TRUE)
    
    return(chem_pm25_emissions)
    
  })
  
  chem_pm25_impacts <- reactive({
    
    req(chem_pm25_emissions())
    
    chem_pm25_impacts <- chem_pm25_emissions()[, 1:7]
    
    # Absolute PM2.5 Impacts
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      chem_pm25_impacts$`Chemicals - Natural Gas` <- chem_pm25_impacts$`Chemicals - Natural Gas` * chem_pm25_IF
      chem_pm25_impacts$`Chemicals - Hydrogen` <- chem_pm25_impacts$`Chemicals - Hydrogen` * chem_pm25_IF
      chem_pm25_impacts$`Chemicals - Oil/Petroleum` <- chem_pm25_impacts$`Chemicals - Oil/Petroleum` * chem_pm25_IF
      chem_pm25_impacts$`Chemicals - Bioenergy/Other` <- chem_pm25_impacts$`Chemicals - Bioenergy/Other` * chem_pm25_IF
      chem_pm25_impacts$`Chemicals - Gas CCS` <- chem_pm25_impacts$`Chemicals - Gas CCS` * chem_pm25_IF
      chem_pm25_impacts$`Chemicals - BECCS` <- chem_pm25_impacts$`Chemicals - BECCS` * chem_pm25_IF
      chem_pm25_impacts$`Total Impact` <- rowSums(chem_pm25_impacts[ , 2:7], na.rm = TRUE)
      
      return(chem_pm25_impacts)
      
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
      
      return(chem_pm25_impacts)
      
    }
    
    
  })
  
  output$chem_pm25 <- renderPlotly({

      req(chem_pm25_impacts())
      
      long_chem_pm25_impacts <- melt(chem_pm25_impacts()[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_chem_pm25_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() +
        {
          if (input$absolute_or_perUnit == "Absolute emissions/impacts")
          {
            labs(y = y_label_pm25)
            
          }
          
          else 
          {
            labs(y = y_label_pm25_perTWh)
          }
          
        }
      
      ggplotly(p) 
      
    
  })
  
  #################################################################################################################### 
  
  ####################################################################################################################
  
  # Paper and Pulp Combustion Emissions
  # Paper and Pulp CO2 emissions
  
  pap_co2_emissions <- reactive({
    
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
      
      return(pap_co2_emissions)
      
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
      
      return(pap_co2_emissions)
      
    }
    
    
  })
  
  
  output$pap_co2 <- renderPlotly({
    
      req(pap_co2_emissions())
      
      long_pap_co2_emissions <- melt(pap_co2_emissions()[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Emissions", na.rm = TRUE)
      
      p <- ggplot(long_pap_co2_emissions, aes(Year, Emissions, col = Source)) +
        geom_line() +
        {
          if (input$absolute_or_perUnit == "Absolute emissions/impacts")
          {
            labs(y = y_label_co2)
            
          }
          
          else 
          {
            labs(y = y_label_co2_perTWh)
          }
          
        }
      
      ggplotly(p)
      
    
  })
  
  ####################################################################################################################
  
  # Paper and pulp NOx Impacts 
  
  pap_nox_emissions <- reactive({
    
    req(pap_data())
    
    pap_nox_emissions <- pap_data()[, c(1,3:8)]
    
    pap_nox_emissions$`Paper and Pulp - Natural Gas` <- pap_nox_emissions$`Paper and Pulp - Natural Gas` * pap_nox_EF_gas
    pap_nox_emissions$`Paper and Pulp - Hydrogen` <- pap_nox_emissions$`Paper and Pulp - Hydrogen` * pap_nox_EF_hydrogen
    pap_nox_emissions$`Paper and Pulp - Oil/Petroleum` <- pap_nox_emissions$`Paper and Pulp - Oil/Petroleum` * pap_nox_EF_fueloil
    pap_nox_emissions$`Paper and Pulp - Bioenergy/Other` <- pap_nox_emissions$`Paper and Pulp - Bioenergy/Other` * pap_nox_EF_biomass
    pap_nox_emissions$`Paper and Pulp - Gas CCS` <- pap_nox_emissions$`Paper and Pulp - Gas CCS` * pap_nox_EF_gasccs
    pap_nox_emissions$`Paper and Pulp - BECCS` <- pap_nox_emissions$`Paper and Pulp - BECCS` * pap_nox_EF_beccs
    pap_nox_emissions$`Total Emissions` <- rowSums(pap_nox_emissions[ , 2:7], na.rm = TRUE)
    
    return(pap_nox_emissions)
    
  })
  
  pap_nox_impacts <- reactive({
    
    req(pap_nox_emissions())
    
    pap_nox_impacts <- pap_nox_emissions()[, 1:7]
    
    # Absolute NOx Impacts
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      pap_nox_impacts$`Paper and Pulp - Natural Gas` <- pap_nox_impacts$`Paper and Pulp - Natural Gas` * pap_nox_IF
      pap_nox_impacts$`Paper and Pulp - Hydrogen` <- pap_nox_impacts$`Paper and Pulp - Hydrogen` * pap_nox_IF
      pap_nox_impacts$`Paper and Pulp - Oil/Petroleum` <- pap_nox_impacts$`Paper and Pulp - Oil/Petroleum` * pap_nox_IF
      pap_nox_impacts$`Paper and Pulp - Bioenergy/Other` <- pap_nox_impacts$`Paper and Pulp - Bioenergy/Other` * pap_nox_IF
      pap_nox_impacts$`Paper and Pulp - Gas CCS` <- pap_nox_impacts$`Paper and Pulp - Gas CCS` * pap_nox_IF
      pap_nox_impacts$`Paper and Pulp - BECCS` <- pap_nox_impacts$`Paper and Pulp - BECCS` * pap_nox_IF
      pap_nox_impacts$`Total Impact` <- rowSums(pap_nox_impacts[ , 2:7], na.rm = TRUE)
      
      return(pap_nox_impacts)
      
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
      
      return(pap_nox_impacts)
      
      }
    
    
    
  })
  
  output$pap_nox <- renderPlotly({

      req(pap_nox_impacts())
      
      long_pap_nox_impacts <- melt(pap_nox_impacts()[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_pap_nox_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() +
        {
          if (input$absolute_or_perUnit == "Absolute emissions/impacts")
          {
            labs(y = y_label_nox)
            
          }
          
          else 
          {
            labs(y = y_label_nox_perTWh)
          }
          
        }
      
      ggplotly(p)
    
    
  })
  
  ####################################################################################################################
  
  # Paper and pulp PM2.5 Impacts
  
  pap_pm25_emissions <- reactive({
    
    req(pap_data())
    
    pap_pm25_emissions <- pap_data()[, c(1,3:8)]
    
    pap_pm25_emissions$`Paper and Pulp - Natural Gas` <- pap_pm25_emissions$`Paper and Pulp - Natural Gas` * pap_pm25_EF_gas
    pap_pm25_emissions$`Paper and Pulp - Hydrogen` <- pap_pm25_emissions$`Paper and Pulp - Hydrogen` * pap_pm25_EF_hydrogen
    pap_pm25_emissions$`Paper and Pulp - Oil/Petroleum` <- pap_pm25_emissions$`Paper and Pulp - Oil/Petroleum` * pap_pm25_EF_fueloil
    pap_pm25_emissions$`Paper and Pulp - Bioenergy/Other` <- pap_pm25_emissions$`Paper and Pulp - Bioenergy/Other` * pap_pm25_EF_biomass
    pap_pm25_emissions$`Paper and Pulp - Gas CCS` <- pap_pm25_emissions$`Paper and Pulp - Gas CCS` * pap_pm25_EF_gasccs
    pap_pm25_emissions$`Paper and Pulp - BECCS` <- pap_pm25_emissions$`Paper and Pulp - BECCS` * pap_pm25_EF_beccs
    pap_pm25_emissions$`Total Emissions` <- rowSums(pap_pm25_emissions[ , 2:7], na.rm = TRUE)
    
    return(pap_pm25_emissions)
    
  })
  
  pap_pm25_impacts <- reactive({
    
    req(pap_pm25_emissions())
    
    pap_pm25_impacts <- pap_pm25_emissions()[, 1:7]
    
    # Absolute PM2.5 Impacts
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      pap_pm25_impacts$`Paper and Pulp - Natural Gas` <- pap_pm25_impacts$`Paper and Pulp - Natural Gas` * pap_pm25_IF
      pap_pm25_impacts$`Paper and Pulp - Hydrogen` <- pap_pm25_impacts$`Paper and Pulp - Hydrogen` * pap_pm25_IF
      pap_pm25_impacts$`Paper and Pulp - Oil/Petroleum` <- pap_pm25_impacts$`Paper and Pulp - Oil/Petroleum` * pap_pm25_IF
      pap_pm25_impacts$`Paper and Pulp - Bioenergy/Other` <- pap_pm25_impacts$`Paper and Pulp - Bioenergy/Other` * pap_pm25_IF
      pap_pm25_impacts$`Paper and Pulp - Gas CCS` <- pap_pm25_impacts$`Paper and Pulp - Gas CCS` * pap_pm25_IF
      pap_pm25_impacts$`Paper and Pulp - BECCS` <- pap_pm25_impacts$`Paper and Pulp - BECCS` * pap_pm25_IF
      pap_pm25_impacts$`Total Impact` <- rowSums(pap_pm25_impacts[ , 2:7], na.rm = TRUE)
      
      return(pap_pm25_impacts)
      
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
      
    return(pap_pm25_impacts)
    }
    
  })
  
  output$pap_pm25 <- renderPlotly({
    
    req(pap_pm25_impacts())
    
      long_pap_pm25_impacts <- melt(pap_pm25_impacts()[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_pap_pm25_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() +
        {
          if (input$absolute_or_perUnit == "Absolute emissions/impacts")
          {
            labs(y = y_label_pm25)
            
          }
          
          else 
          {
            labs(y = y_label_pm25_perTWh)
          }
          
        }
      
      ggplotly(p) 
      
  })
  
  #################################################################################################################### 
  
  ####################################################################################################################
  
  # Food and Drink CO2 emissions
  
   food_co2_emissions <- reactive({
    
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
      
      return(food_co2_emissions)
      
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
      
      return(food_co2_emissions)
    
      }
    
  })
  
  output$food_co2 <- renderPlotly({
    
      req(food_co2_emissions())
      
      long_food_co2_emissions <- melt(food_co2_emissions()[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Emissions", na.rm = TRUE)
      
      p <- ggplot(long_food_co2_emissions, aes(Year, Emissions, col = Source)) +
        geom_line() +
        {
          if (input$absolute_or_perUnit == "Absolute emissions/impacts")
          {
            labs(y = y_label_co2)
            
          }
          
          else 
          {
            labs(y = y_label_co2_perTWh)
          }
          
        }
      
      ggplotly(p)
      
    
  })
  
  ####################################################################################################################
  
  # Food and Beverages NOx Impacts 
  
  food_nox_emissions <- reactive({
    
    req(food_data())
    
    food_nox_emissions <- food_data()[, c(1,3:8)]
    
    food_nox_emissions$`Food and Beverages - Natural Gas` <- food_nox_emissions$`Food and Beverages - Natural Gas` * food_nox_EF_gas
    food_nox_emissions$`Food and Beverages - Hydrogen` <- food_nox_emissions$`Food and Beverages - Hydrogen` * food_nox_EF_hydrogen
    food_nox_emissions$`Food and Beverages - Oil/Petroleum` <- food_nox_emissions$`Food and Beverages - Oil/Petroleum` * food_nox_EF_fueloil
    food_nox_emissions$`Food and Beverages - Bioenergy/Other` <- food_nox_emissions$`Food and Beverages - Bioenergy/Other` * food_nox_EF_biomass
    food_nox_emissions$`Food and Beverages - Gas CCS` <- food_nox_emissions$`Food and Beverages - Gas CCS` * food_nox_EF_gasccs
    food_nox_emissions$`Food and Beverages - BECCS` <- food_nox_emissions$`Food and Beverages - BECCS` * food_nox_EF_beccs
    food_nox_emissions$`Total Emissions` <- rowSums(food_nox_emissions[ , 2:7], na.rm = TRUE)
    
    return(food_nox_emissions)
    
  })
  
  food_nox_impacts <- reactive({
    
    req(food_nox_emissions())
    
    food_nox_impacts <- food_nox_emissions()[, 1:7]
    
    # Absolute NOx Impacts
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      food_nox_impacts$`Food and Beverages - Natural Gas` <- food_nox_impacts$`Food and Beverages - Natural Gas` * food_nox_IF
      food_nox_impacts$`Food and Beverages - Hydrogen` <- food_nox_impacts$`Food and Beverages - Hydrogen` * food_nox_IF
      food_nox_impacts$`Food and Beverages - Oil/Petroleum` <- food_nox_impacts$`Food and Beverages - Oil/Petroleum` * food_nox_IF
      food_nox_impacts$`Food and Beverages - Bioenergy/Other` <- food_nox_impacts$`Food and Beverages - Bioenergy/Other` * food_nox_IF
      food_nox_impacts$`Food and Beverages - Gas CCS` <- food_nox_impacts$`Food and Beverages - Gas CCS` * food_nox_IF
      food_nox_impacts$`Food and Beverages - BECCS` <- food_nox_impacts$`Food and Beverages - BECCS` * food_nox_IF
      food_nox_impacts$`Total Impact` <- rowSums(food_nox_impacts[ , 2:7], na.rm = TRUE)
      
      return(food_nox_impacts)
      
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
      
      return(food_nox_impacts)
    
      }
    
  })
  
  output$food_nox <- renderPlotly({

      req(food_nox_impacts())
      
      long_food_nox_impacts <- melt(food_nox_impacts()[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_food_nox_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() +
        {
          if (input$absolute_or_perUnit == "Absolute emissions/impacts")
          {
            labs(y = y_label_nox)
            
          }
          
          else 
          {
            labs(y = y_label_nox_perTWh)
          }
          
        } 
      
      ggplotly(p)
      
  })
  
  ####################################################################################################################
  
  # Food and drink PM2.5 Impacts
  
  food_pm25_emissions <- reactive({
    
    req(food_data())
    
    food_pm25_emissions <- food_data()[, c(1,3:8)]
    
    food_pm25_emissions$`Food and Beverages - Natural Gas` <- food_pm25_emissions$`Food and Beverages - Natural Gas` * food_pm25_EF_gas
    food_pm25_emissions$`Food and Beverages - Hydrogen` <- food_pm25_emissions$`Food and Beverages - Hydrogen` * food_pm25_EF_hydrogen
    food_pm25_emissions$`Food and Beverages - Oil/Petroleum` <- food_pm25_emissions$`Food and Beverages - Oil/Petroleum` * food_pm25_EF_fueloil
    food_pm25_emissions$`Food and Beverages - Bioenergy/Other` <- food_pm25_emissions$`Food and Beverages - Bioenergy/Other` * food_pm25_EF_biomass
    food_pm25_emissions$`Food and Beverages - Gas CCS` <- food_pm25_emissions$`Food and Beverages - Gas CCS` * food_pm25_EF_gasccs
    food_pm25_emissions$`Food and Beverages - BECCS` <- food_pm25_emissions$`Food and Beverages - BECCS` * food_pm25_EF_beccs
    food_pm25_emissions$`Total Emissions` <- rowSums(food_pm25_emissions[ , 2:7], na.rm = TRUE)
    
    return(food_pm25_emissions)
    
  })
  
  food_pm25_impacts <- reactive({
    
    req(food_pm25_emissions())
    
    food_pm25_impacts <- food_pm25_emissions()[, 1:7]
    
    # Absolute PM2.5 Impacts
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      food_pm25_impacts$`Food and Beverages - Natural Gas` <- food_pm25_impacts$`Food and Beverages - Natural Gas` * food_pm25_IF
      food_pm25_impacts$`Food and Beverages - Hydrogen` <- food_pm25_impacts$`Food and Beverages - Hydrogen` * food_pm25_IF
      food_pm25_impacts$`Food and Beverages - Oil/Petroleum` <- food_pm25_impacts$`Food and Beverages - Oil/Petroleum` * food_pm25_IF
      food_pm25_impacts$`Food and Beverages - Bioenergy/Other` <- food_pm25_impacts$`Food and Beverages - Bioenergy/Other` * food_pm25_IF
      food_pm25_impacts$`Food and Beverages - Gas CCS` <- food_pm25_impacts$`Food and Beverages - Gas CCS` * food_pm25_IF
      food_pm25_impacts$`Food and Beverages - BECCS` <- food_pm25_impacts$`Food and Beverages - BECCS` * food_pm25_IF
      food_pm25_impacts$`Total Impact` <- rowSums(food_pm25_impacts[ , 2:7], na.rm = TRUE)
      
      return(food_pm25_impacts)
      
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
      
      return(food_pm25_impacts)
    }
    
    
    
  })
  
  output$food_pm25 <- renderPlotly({

      req(food_pm25_impacts())
      
      long_food_pm25_impacts <- melt(food_pm25_impacts()[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_food_pm25_impacts, aes(Year, Impacts, col = Source)) +
        geom_line() +
        {
          if (input$absolute_or_perUnit == "Absolute emissions/impacts")
          {
            labs(y = y_label_pm25)
            
          }
          
          else 
          {
            labs(y = y_label_pm25_perTWh)
          }
          
        }
      
      ggplotly(p) 
    
  })
  
  ####################################################################################################################   
  
  ####################################################################################################################
  
  # Minerals Combustion Emissions
  # Minerals CO2 emissions
  
  min_co2_emissions <- reactive({
    
    req(min_data())
    
    # Excluding Electricity - (Taking [12:16] into a new variable makes them [2:6])
    
    min_co2_emissions <- min_data()[, c(1,3:8)]
    
    # Absolute CO2 Emissions
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      min_co2_emissions$`Mineral Products - Natural Gas` <- min_co2_emissions$`Mineral Products - Natural Gas` * min_co2_EF_gas
      min_co2_emissions$`Mineral Products - Hydrogen` <- min_co2_emissions$`Mineral Products - Hydrogen` * min_co2_EF_hydrogen
      min_co2_emissions$`Mineral Products - Oil/Petroleum` <- min_co2_emissions$`Mineral Products - Oil/Petroleum` * min_co2_EF_fueloil
      min_co2_emissions$`Mineral Products - Bioenergy/Other` <- min_co2_emissions$`Mineral Products - Bioenergy/Other` * min_co2_EF_biomass
      min_co2_emissions$`Mineral Products - Gas CCS` <- min_co2_emissions$`Mineral Products - Gas CCS` * min_co2_EF_gasccs
      min_co2_emissions$`Mineral Products - BECCS` <- min_co2_emissions$`Mineral Products - BECCS` * min_co2_EF_beccs
      min_co2_emissions$`Total Emissions` <- rowSums(min_co2_emissions[ , 2:7], na.rm = TRUE)
      
      return(min_co2_emissions)
      
    }
    
    # Per TWh CO2 Emissions
    
    else {
      
      min_co2_emissions$`Mineral Products - Natural Gas` <- (min_co2_emissions$`Mineral Products - Natural Gas` * min_co2_EF_gas)/min_data_sum()
      min_co2_emissions$`Mineral Products - Hydrogen` <- (min_co2_emissions$`Mineral Products - Hydrogen` * min_co2_EF_hydrogen)/min_data_sum()
      min_co2_emissions$`Mineral Products - Oil/Petroleum` <- (min_co2_emissions$`Mineral Products - Oil/Petroleum` * min_co2_EF_fueloil)/min_data_sum()
      min_co2_emissions$`Mineral Products - Bioenergy/Other` <- (min_co2_emissions$`Mineral Products - Bioenergy/Other` * min_co2_EF_biomass)/min_data_sum()
      min_co2_emissions$`Mineral Products - Gas CCS` <- (min_co2_emissions$`Mineral Products - Gas CCS` * min_co2_EF_gasccs)/min_data_sum()
      min_co2_emissions$`Mineral Products - BECCS` <- (min_co2_emissions$`Mineral Products - BECCS` * min_co2_EF_beccs)/min_data_sum()
      min_co2_emissions$`Total Emissions per TWh` <- rowSums(min_co2_emissions[ , 2:7], na.rm = TRUE)
      
      return(min_co2_emissions)
      
    }
    
  })
  
  output$min_co2 <- renderPlotly({
    
    req(min_co2_emissions())
    
    long_min_co2_emissions <- melt(min_co2_emissions()[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Emissions", na.rm = TRUE)
    
    p <- ggplot(long_min_co2_emissions, aes(Year, Emissions, col = Source)) +
      geom_line() +
      {
        if (input$absolute_or_perUnit == "Absolute emissions/impacts")
        {
          labs(y = y_label_co2)
          
        }
        
        else 
        {
          labs(y = y_label_co2_perTWh)
        }
        
      }
    
    ggplotly(p)
    
    
  })
  
  ####################################################################################################################
  
  # Minerals NOx Impacts 
  
  min_nox_emissions <- reactive({
    
    req(min_data())
    
    min_nox_emissions <- min_data()[, c(1,3:8)]
    
    min_nox_emissions$`Mineral Products - Natural Gas` <- min_nox_emissions$`Mineral Products - Natural Gas` * min_nox_EF_gas
    min_nox_emissions$`Mineral Products - Hydrogen` <- min_nox_emissions$`Mineral Products - Hydrogen` * min_nox_EF_hydrogen
    min_nox_emissions$`Mineral Products - Oil/Petroleum` <- min_nox_emissions$`Mineral Products - Oil/Petroleum` * min_nox_EF_fueloil
    min_nox_emissions$`Mineral Products - Bioenergy/Other` <- min_nox_emissions$`Mineral Products - Bioenergy/Other` * min_nox_EF_biomass
    min_nox_emissions$`Mineral Products - Gas CCS` <- min_nox_emissions$`Mineral Products - Gas CCS` * min_nox_EF_gasccs
    min_nox_emissions$`Mineral Products - BECCS` <- min_nox_emissions$`Mineral Products - BECCS` * min_nox_EF_beccs
    min_nox_emissions$`Total Emissions` <- rowSums(min_nox_emissions[ , 2:7], na.rm = TRUE)
    
    return(min_nox_emissions)
    
  })
  
  min_nox_impacts <- reactive({
    
    req(min_nox_emissions())
    
    min_nox_impacts <- min_nox_emissions()[, 1:7]
    
    # Absolute NOx Impacts
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      min_nox_impacts$`Mineral Products - Natural Gas` <- min_nox_impacts$`Mineral Products - Natural Gas` * min_nox_IF
      min_nox_impacts$`Mineral Products - Hydrogen` <- min_nox_impacts$`Mineral Products - Hydrogen` * min_nox_IF
      min_nox_impacts$`Mineral Products - Oil/Petroleum` <- min_nox_impacts$`Mineral Products - Oil/Petroleum` * min_nox_IF
      min_nox_impacts$`Mineral Products - Bioenergy/Other` <- min_nox_impacts$`Mineral Products - Bioenergy/Other` * min_nox_IF
      min_nox_impacts$`Mineral Products - Gas CCS` <- min_nox_impacts$`Mineral Products - Gas CCS` * min_nox_IF
      min_nox_impacts$`Mineral Products - BECCS` <- min_nox_impacts$`Mineral Products - BECCS` * min_nox_IF
      min_nox_impacts$`Total Impact` <- rowSums(min_nox_impacts[ , 2:7], na.rm = TRUE)
      
      return(min_nox_impacts)
      
    }
    
    # Per TWh NOx Impacts
    
    else {
      
      min_nox_impacts$`Mineral Products - Natural Gas` <- (min_nox_impacts$`Mineral Products - Natural Gas` * min_nox_IF)/food_data_sum()
      min_nox_impacts$`Mineral Products - Hydrogen` <- (min_nox_impacts$`Mineral Products - Hydrogen` * min_nox_IF)/food_data_sum()
      min_nox_impacts$`Mineral Products - Oil/Petroleum` <- (min_nox_impacts$`Mineral Products - Oil/Petroleum` * min_nox_IF)/food_data_sum()
      min_nox_impacts$`Mineral Products - Bioenergy/Other` <- (min_nox_impacts$`Mineral Products - Bioenergy/Other` * min_nox_IF)/food_data_sum()
      min_nox_impacts$`Mineral Products - Gas CCS` <- (min_nox_impacts$`Mineral Products - Gas CCS` * min_nox_IF)/food_data_sum()
      min_nox_impacts$`Mineral Products - BECCS` <- (min_nox_impacts$`Mineral Products - BECCS` * min_nox_IF)/food_data_sum()
      min_nox_impacts$`Total Impact` <- rowSums(min_nox_impacts[ , 2:7], na.rm = TRUE)
      
      return(min_nox_impacts)
      
    }
    
  })
  
  output$min_nox <- renderPlotly({
    
    req(min_nox_impacts())
    
    long_min_nox_impacts <- melt(min_nox_impacts()[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
    
    p <- ggplot(long_min_nox_impacts, aes(Year, Impacts, col = Source)) +
      geom_line() +
      {
        if (input$absolute_or_perUnit == "Absolute emissions/impacts")
        {
          labs(y = y_label_nox)
          
        }
        
        else 
        {
          labs(y = y_label_nox_perTWh)
        }
        
      } 
    
    ggplotly(p)
    
  })
  
  ####################################################################################################################
  
  # Minerals PM2.5 Impacts
  
  min_pm25_emissions <- reactive({
    
    req(min_data())
    
    min_pm25_emissions <- min_data()[, c(1,3:8)]
    
    min_pm25_emissions$`Mineral Products - Natural Gas` <- min_pm25_emissions$`Mineral Products - Natural Gas` * min_pm25_EF_gas
    min_pm25_emissions$`Mineral Products - Hydrogen` <- min_pm25_emissions$`Mineral Products - Hydrogen` * min_pm25_EF_hydrogen
    min_pm25_emissions$`Mineral Products - Oil/Petroleum` <- min_pm25_emissions$`Mineral Products - Oil/Petroleum` * min_pm25_EF_fueloil
    min_pm25_emissions$`Mineral Products - Bioenergy/Other` <- min_pm25_emissions$`Mineral Products - Bioenergy/Other` * min_pm25_EF_biomass
    min_pm25_emissions$`Mineral Products - Gas CCS` <- min_pm25_emissions$`Mineral Products - Gas CCS` * min_pm25_EF_gasccs
    min_pm25_emissions$`Mineral Products - BECCS` <- min_pm25_emissions$`Mineral Products - BECCS` * min_pm25_EF_beccs
    min_pm25_emissions$`Total Emissions` <- rowSums(min_pm25_emissions[ , 2:7], na.rm = TRUE)
    
    return(min_pm25_emissions)
    
  })
  
  min_pm25_impacts <- reactive({
    
    req(min_pm25_emissions())
    
    min_pm25_impacts <- min_pm25_emissions()[, 1:7]
    
    # Absolute PM2.5 Impacts
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      min_pm25_impacts$`Mineral Products - Natural Gas` <- min_pm25_impacts$`Mineral Products - Natural Gas` * min_pm25_IF
      min_pm25_impacts$`Mineral Products - Hydrogen` <- min_pm25_impacts$`Mineral Products - Hydrogen` * min_pm25_IF
      min_pm25_impacts$`Mineral Products - Oil/Petroleum` <- min_pm25_impacts$`Mineral Products - Oil/Petroleum` * min_pm25_IF
      min_pm25_impacts$`Mineral Products - Bioenergy/Other` <- min_pm25_impacts$`Mineral Products - Bioenergy/Other` * min_pm25_IF
      min_pm25_impacts$`Mineral Products - Gas CCS` <- min_pm25_impacts$`Mineral Products - Gas CCS` * min_pm25_IF
      min_pm25_impacts$`Mineral Products - BECCS` <- min_pm25_impacts$`Mineral Products - BECCS` * min_pm25_IF
      min_pm25_impacts$`Total Impact` <- rowSums(min_pm25_impacts[ , 2:7], na.rm = TRUE)
      
      return(min_pm25_impacts)
      
    }
    
    # Per TWh PM2.5 Impacts
    
    else {
      
      min_pm25_impacts$`Mineral Products - Natural Gas` <- (min_pm25_impacts$`Mineral Products - Natural Gas` * min_pm25_IF)/min_data_sum()
      min_pm25_impacts$`Mineral Products - Hydrogen` <- (min_pm25_impacts$`Mineral Products - Hydrogen` * min_pm25_IF)/min_data_sum()
      min_pm25_impacts$`Mineral Products - Oil/Petroleum` <- (min_pm25_impacts$`Mineral Products - Oil/Petroleum` * min_pm25_IF)/min_data_sum()
      min_pm25_impacts$`Mineral Products - Bioenergy/Other` <- (min_pm25_impacts$`Mineral Products - Bioenergy/Other` * min_pm25_IF)/min_data_sum()
      min_pm25_impacts$`Mineral Products - Gas CCS` <- (min_pm25_impacts$`Mineral Products - Gas CCS` * min_pm25_IF)/min_data_sum()
      min_pm25_impacts$`Mineral Products - BECCS` <- (min_pm25_impacts$`Mineral Products - BECCS` * min_pm25_IF)/min_data_sum()
      min_pm25_impacts$`Total Impact per TWh` <- rowSums(min_pm25_impacts[ , 2:7], na.rm = TRUE)
      
      return(min_pm25_impacts)
    }
    
    
    
  })
  
  output$min_pm25 <- renderPlotly({
    
    req(min_pm25_impacts())
    
    long_min_pm25_impacts <- melt(min_pm25_impacts()[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
    
    p <- ggplot(long_min_pm25_impacts, aes(Year, Impacts, col = Source)) +
      geom_line() +
      {
        if (input$absolute_or_perUnit == "Absolute emissions/impacts")
        {
          labs(y = y_label_pm25)
          
        }
        
        else 
        {
          labs(y = y_label_pm25_perTWh)
        }
        
      }
    
    ggplotly(p) 
    
  })
  
  #################################################################################################################### 
  
  ####################################################################################################################
  
  # Textiles and Leather Combustion Emissions
  # Textiles and Leather CO2 emissions
  
  text_co2_emissions <- reactive({
    
    req(text_data())
    
    # Excluding Electricity - (Taking [12:16] into a new variable makes them [2:6])
    
    text_co2_emissions <- text_data()[, c(1,3:8)]
    
    # Absolute CO2 Emissions
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      text_co2_emissions$`Textiles and Leather - Natural Gas` <- text_co2_emissions$`Textiles and Leather - Natural Gas` * text_co2_EF_gas
      text_co2_emissions$`Textiles and Leather - Hydrogen` <- text_co2_emissions$`Textiles and Leather - Hydrogen` * text_co2_EF_hydrogen
      text_co2_emissions$`Textiles and Leather - Oil/Petroleum` <- text_co2_emissions$`Textiles and Leather - Oil/Petroleum` * text_co2_EF_fueloil
      text_co2_emissions$`Textiles and Leather - Bioenergy/Other` <- text_co2_emissions$`Textiles and Leather - Bioenergy/Other` * text_co2_EF_biomass
      text_co2_emissions$`Textiles and Leather - Gas CCS` <- text_co2_emissions$`Textiles and Leather - Gas CCS` * text_co2_EF_gasccs
      text_co2_emissions$`Textiles and Leather - BECCS` <- text_co2_emissions$`Textiles and Leather - BECCS` * text_co2_EF_beccs
      text_co2_emissions$`Total Emissions` <- rowSums(text_co2_emissions[ , 2:7], na.rm = TRUE)
      
      return(text_co2_emissions)
      
    }
    
    # Per TWh CO2 Emissions
    
    else {
      
      text_co2_emissions$`Textiles and Leather - Natural Gas` <- (text_co2_emissions$`Textiles and Leather - Natural Gas` * text_co2_EF_gas)/text_data_sum()
      text_co2_emissions$`Textiles and Leather - Hydrogen` <- (text_co2_emissions$`Textiles and Leather - Hydrogen` * text_co2_EF_hydrogen)/text_data_sum()
      text_co2_emissions$`Textiles and Leather - Oil/Petroleum` <- (text_co2_emissions$`Textiles and Leather - Oil/Petroleum` * text_co2_EF_fueloil)/text_data_sum()
      text_co2_emissions$`Textiles and Leather - Bioenergy/Other` <- (text_co2_emissions$`Textiles and Leather - Bioenergy/Other` * text_co2_EF_biomass)/text_data_sum()
      text_co2_emissions$`Textiles and Leather - Gas CCS` <- (text_co2_emissions$`Textiles and Leather - Gas CCS` * text_co2_EF_gasccs)/text_data_sum()
      text_co2_emissions$`Textiles and Leather - BECCS` <- (text_co2_emissions$`Textiles and Leather - BECCS` * text_co2_EF_beccs)/text_data_sum()
      text_co2_emissions$`Total Emissions per TWh` <- rowSums(text_co2_emissions[ , 2:7], na.rm = TRUE)
      
      return(text_co2_emissions)
      
    }
    
  })
  
  output$text_co2 <- renderPlotly({
    
    req(text_co2_emissions())
    
    long_text_co2_emissions <- melt(text_co2_emissions()[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Emissions", na.rm = TRUE)
    
    p <- ggplot(long_text_co2_emissions, aes(Year, Emissions, col = Source)) +
      geom_line() +
      {
        if (input$absolute_or_perUnit == "Absolute emissions/impacts")
        {
          labs(y = y_label_co2)
          
        }
        
        else 
        {
          labs(y = y_label_co2_perTWh)
        }
        
      }
    
    ggplotly(p)
    
    
  })
  
  ####################################################################################################################
  
  # Textiles and Leather NOx Impacts 
  
  text_nox_emissions <- reactive({
    
    req(text_data())
    
    text_nox_emissions <- text_data()[, c(1,3:8)]
    
    text_nox_emissions$`Textiles and Leather - Natural Gas` <- text_nox_emissions$`Textiles and Leather - Natural Gas` * text_nox_EF_gas
    text_nox_emissions$`Textiles and Leather - Hydrogen` <- text_nox_emissions$`Textiles and Leather - Hydrogen` * text_nox_EF_hydrogen
    text_nox_emissions$`Textiles and Leather - Oil/Petroleum` <- text_nox_emissions$`Textiles and Leather - Oil/Petroleum` * text_nox_EF_fueloil
    text_nox_emissions$`Textiles and Leather - Bioenergy/Other` <- text_nox_emissions$`Textiles and Leather - Bioenergy/Other` * text_nox_EF_biomass
    text_nox_emissions$`Textiles and Leather - Gas CCS` <- text_nox_emissions$`Textiles and Leather - Gas CCS` * text_nox_EF_gasccs
    text_nox_emissions$`Textiles and Leather - BECCS` <- text_nox_emissions$`Textiles and Leather - BECCS` * text_nox_EF_beccs
    text_nox_emissions$`Total Emissions` <- rowSums(text_nox_emissions[ , 2:7], na.rm = TRUE)
    
    return(text_nox_emissions)
    
  })
  
  text_nox_impacts <- reactive({
    
    req(text_nox_emissions())
    
    text_nox_impacts <- text_nox_emissions()[, 1:7]
    
    # Absolute NOx Impacts
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      text_nox_impacts$`Textiles and Leather - Natural Gas` <- text_nox_impacts$`Textiles and Leather - Natural Gas` * text_nox_IF
      text_nox_impacts$`Textiles and Leather - Hydrogen` <- text_nox_impacts$`Textiles and Leather - Hydrogen` * text_nox_IF
      text_nox_impacts$`Textiles and Leather - Oil/Petroleum` <- text_nox_impacts$`Textiles and Leather - Oil/Petroleum` * text_nox_IF
      text_nox_impacts$`Textiles and Leather - Bioenergy/Other` <- text_nox_impacts$`Textiles and Leather - Bioenergy/Other` * text_nox_IF
      text_nox_impacts$`Textiles and Leather - Gas CCS` <- text_nox_impacts$`Textiles and Leather - Gas CCS` * text_nox_IF
      text_nox_impacts$`Textiles and Leather - BECCS` <- text_nox_impacts$`Textiles and Leather - BECCS` * text_nox_IF
      text_nox_impacts$`Total Impact` <- rowSums(text_nox_impacts[ , 2:7], na.rm = TRUE)
      
      return(text_nox_impacts)
      
    }
    
    # Per TWh NOx Impacts
    
    else {
      
      text_nox_impacts$`Textiles and Leather - Natural Gas` <- (text_nox_impacts$`Textiles and Leather - Natural Gas` * text_nox_IF)/food_data_sum()
      text_nox_impacts$`Textiles and Leather - Hydrogen` <- (text_nox_impacts$`Textiles and Leather - Hydrogen` * text_nox_IF)/food_data_sum()
      text_nox_impacts$`Textiles and Leather - Oil/Petroleum` <- (text_nox_impacts$`Textiles and Leather - Oil/Petroleum` * text_nox_IF)/food_data_sum()
      text_nox_impacts$`Textiles and Leather - Bioenergy/Other` <- (text_nox_impacts$`Textiles and Leather - Bioenergy/Other` * text_nox_IF)/food_data_sum()
      text_nox_impacts$`Textiles and Leather - Gas CCS` <- (text_nox_impacts$`Textiles and Leather - Gas CCS` * text_nox_IF)/food_data_sum()
      text_nox_impacts$`Textiles and Leather - BECCS` <- (text_nox_impacts$`Textiles and Leather - BECCS` * text_nox_IF)/food_data_sum()
      text_nox_impacts$`Total Impact` <- rowSums(text_nox_impacts[ , 2:7], na.rm = TRUE)
      
      return(text_nox_impacts)
      
    }
    
  })
  
  output$text_nox <- renderPlotly({
    
    req(text_nox_impacts())
    
    long_text_nox_impacts <- melt(text_nox_impacts()[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
    
    p <- ggplot(long_text_nox_impacts, aes(Year, Impacts, col = Source)) +
      geom_line() +
      {
        if (input$absolute_or_perUnit == "Absolute emissions/impacts")
        {
          labs(y = y_label_nox)
          
        }
        
        else 
        {
          labs(y = y_label_nox_perTWh)
        }
        
      } 
    
    ggplotly(p)
    
  })
  
  ####################################################################################################################
  
  # Textiles and Leather PM2.5 Impacts
  
  text_pm25_emissions <- reactive({
    
    req(text_data())
    
    text_pm25_emissions <- text_data()[, c(1,3:8)]
    
    text_pm25_emissions$`Textiles and Leather - Natural Gas` <- text_pm25_emissions$`Textiles and Leather - Natural Gas` * text_pm25_EF_gas
    text_pm25_emissions$`Textiles and Leather - Hydrogen` <- text_pm25_emissions$`Textiles and Leather - Hydrogen` * text_pm25_EF_hydrogen
    text_pm25_emissions$`Textiles and Leather - Oil/Petroleum` <- text_pm25_emissions$`Textiles and Leather - Oil/Petroleum` * text_pm25_EF_fueloil
    text_pm25_emissions$`Textiles and Leather - Bioenergy/Other` <- text_pm25_emissions$`Textiles and Leather - Bioenergy/Other` * text_pm25_EF_biomass
    text_pm25_emissions$`Textiles and Leather - Gas CCS` <- text_pm25_emissions$`Textiles and Leather - Gas CCS` * text_pm25_EF_gasccs
    text_pm25_emissions$`Textiles and Leather - BECCS` <- text_pm25_emissions$`Textiles and Leather - BECCS` * text_pm25_EF_beccs
    text_pm25_emissions$`Total Emissions` <- rowSums(text_pm25_emissions[ , 2:7], na.rm = TRUE)
    
    return(text_pm25_emissions)
    
  })
  
  text_pm25_impacts <- reactive({
    
    req(text_pm25_emissions())
    
    text_pm25_impacts <- text_pm25_emissions()[, 1:7]
    
    # Absolute PM2.5 Impacts
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      text_pm25_impacts$`Textiles and Leather - Natural Gas` <- text_pm25_impacts$`Textiles and Leather - Natural Gas` * text_pm25_IF
      text_pm25_impacts$`Textiles and Leather - Hydrogen` <- text_pm25_impacts$`Textiles and Leather - Hydrogen` * text_pm25_IF
      text_pm25_impacts$`Textiles and Leather - Oil/Petroleum` <- text_pm25_impacts$`Textiles and Leather - Oil/Petroleum` * text_pm25_IF
      text_pm25_impacts$`Textiles and Leather - Bioenergy/Other` <- text_pm25_impacts$`Textiles and Leather - Bioenergy/Other` * text_pm25_IF
      text_pm25_impacts$`Textiles and Leather - Gas CCS` <- text_pm25_impacts$`Textiles and Leather - Gas CCS` * text_pm25_IF
      text_pm25_impacts$`Textiles and Leather - BECCS` <- text_pm25_impacts$`Textiles and Leather - BECCS` * text_pm25_IF
      text_pm25_impacts$`Total Impact` <- rowSums(text_pm25_impacts[ , 2:7], na.rm = TRUE)
      
      return(text_pm25_impacts)
      
    }
    
    # Per TWh PM2.5 Impacts
    
    else {
      
      text_pm25_impacts$`Textiles and Leather - Natural Gas` <- (text_pm25_impacts$`Textiles and Leather - Natural Gas` * text_pm25_IF)/text_data_sum()
      text_pm25_impacts$`Textiles and Leather - Hydrogen` <- (text_pm25_impacts$`Textiles and Leather - Hydrogen` * text_pm25_IF)/text_data_sum()
      text_pm25_impacts$`Textiles and Leather - Oil/Petroleum` <- (text_pm25_impacts$`Textiles and Leather - Oil/Petroleum` * text_pm25_IF)/text_data_sum()
      text_pm25_impacts$`Textiles and Leather - Bioenergy/Other` <- (text_pm25_impacts$`Textiles and Leather - Bioenergy/Other` * text_pm25_IF)/text_data_sum()
      text_pm25_impacts$`Textiles and Leather - Gas CCS` <- (text_pm25_impacts$`Textiles and Leather - Gas CCS` * text_pm25_IF)/text_data_sum()
      text_pm25_impacts$`Textiles and Leather - BECCS` <- (text_pm25_impacts$`Textiles and Leather - BECCS` * text_pm25_IF)/text_data_sum()
      text_pm25_impacts$`Total Impact per TWh` <- rowSums(text_pm25_impacts[ , 2:7], na.rm = TRUE)
      
      return(text_pm25_impacts)
    }
    
    
    
  })
  
  output$text_pm25 <- renderPlotly({
    
    req(text_pm25_impacts())
    
    long_text_pm25_impacts <- melt(text_pm25_impacts()[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
    
    p <- ggplot(long_text_pm25_impacts, aes(Year, Impacts, col = Source)) +
      geom_line() +
      {
        if (input$absolute_or_perUnit == "Absolute emissions/impacts")
        {
          labs(y = y_label_pm25)
          
        }
        
        else 
        {
          labs(y = y_label_pm25_perTWh)
        }
        
      }
    
    ggplotly(p) 
    
  })
  
  #################################################################################################
  
  ####################################################################################################################
  
  # Construction/NRMM Combustion Emissions
  # Construction/NRMM CO2 emissions
  
  con_co2_emissions <- reactive({
    
    req(con_data())
    
    # Excluding Electricity - (Taking [12:16] into a new variable makes them [2:6])
    
    con_co2_emissions <- con_data()[, c(1,3:8)]
    
    # Absolute CO2 Emissions
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      con_co2_emissions$`Construction - Natural Gas` <- con_co2_emissions$`Construction - Natural Gas` * con_co2_EF_gas
      con_co2_emissions$`Construction - Hydrogen` <- con_co2_emissions$`Construction - Hydrogen` * con_co2_EF_hydrogen
      con_co2_emissions$`Construction - Oil/Petroleum` <- con_co2_emissions$`Construction - Oil/Petroleum` * con_co2_EF_gasoil
      con_co2_emissions$`Construction - Bioenergy/Other` <- con_co2_emissions$`Construction - Bioenergy/Other` * con_co2_EF_biomass
      con_co2_emissions$`Construction - Gas CCS` <- con_co2_emissions$`Construction - Gas CCS` * con_co2_EF_gasccs
      con_co2_emissions$`Construction - BECCS` <- con_co2_emissions$`Construction - BECCS` * con_co2_EF_beccs
      con_co2_emissions$`Total Emissions` <- rowSums(con_co2_emissions[ , 2:7], na.rm = TRUE)
      
      return(con_co2_emissions)
      
    }
    
    # Per TWh CO2 Emissions
    
    else {
      
      con_co2_emissions$`Construction - Natural Gas` <- (con_co2_emissions$`Construction - Natural Gas` * con_co2_EF_gas)/con_data_sum()
      con_co2_emissions$`Construction - Hydrogen` <- (con_co2_emissions$`Construction - Hydrogen` * con_co2_EF_hydrogen)/con_data_sum()
      con_co2_emissions$`Construction - Oil/Petroleum` <- (con_co2_emissions$`Construction - Oil/Petroleum` * con_co2_EF_gasoil)/con_data_sum()
      con_co2_emissions$`Construction - Bioenergy/Other` <- (con_co2_emissions$`Construction - Bioenergy/Other` * con_co2_EF_biomass)/con_data_sum()
      con_co2_emissions$`Construction - Gas CCS` <- (con_co2_emissions$`Construction - Gas CCS` * con_co2_EF_gasccs)/con_data_sum()
      con_co2_emissions$`Construction - BECCS` <- (con_co2_emissions$`Construction - BECCS` * con_co2_EF_beccs)/con_data_sum()
      con_co2_emissions$`Total Emissions per TWh` <- rowSums(con_co2_emissions[ , 2:7], na.rm = TRUE)
      
      return(con_co2_emissions)
      
    }
    
  })
  
  output$con_co2 <- renderPlotly({
    
    req(con_co2_emissions())
    
    long_con_co2_emissions <- melt(con_co2_emissions()[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Emissions", na.rm = TRUE)
    
    p <- ggplot(long_con_co2_emissions, aes(Year, Emissions, col = Source)) +
      geom_line() +
      {
        if (input$absolute_or_perUnit == "Absolute emissions/impacts")
        {
          labs(y = y_label_co2)
          
        }
        
        else 
        {
          labs(y = y_label_co2_perTWh)
        }
        
      }
    
    ggplotly(p)
    
    
  })
  
  ####################################################################################################################
  
  # Construction/NRMM NOx Impacts 
  
  con_nox_emissions <- reactive({
    
    req(con_data())
    
    con_nox_emissions <- con_data()[, c(1,3:8)]
    
    con_nox_emissions$`Construction - Natural Gas` <- con_nox_emissions$`Construction - Natural Gas` * con_nox_EF_gas
    con_nox_emissions$`Construction - Hydrogen` <- con_nox_emissions$`Construction - Hydrogen` * con_nox_EF_hydrogen
    con_nox_emissions$`Construction - Oil/Petroleum` <- con_nox_emissions$`Construction - Oil/Petroleum` * con_nox_EF_gasoil
    con_nox_emissions$`Construction - Bioenergy/Other` <- con_nox_emissions$`Construction - Bioenergy/Other` * con_nox_EF_biomass
    con_nox_emissions$`Construction - Gas CCS` <- con_nox_emissions$`Construction - Gas CCS` * con_nox_EF_gasccs
    con_nox_emissions$`Construction - BECCS` <- con_nox_emissions$`Construction - BECCS` * con_nox_EF_beccs
    con_nox_emissions$`Total Emissions` <- rowSums(con_nox_emissions[ , 2:7], na.rm = TRUE)
    
    return(con_nox_emissions)
    
  })
  
  con_nox_impacts <- reactive({
    
    req(con_nox_emissions())
    
    con_nox_impacts <- con_nox_emissions()[, 1:7]
    
    # Absolute NOx Impacts
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      con_nox_impacts$`Construction - Natural Gas` <- con_nox_impacts$`Construction - Natural Gas` * con_nox_IF
      con_nox_impacts$`Construction - Hydrogen` <- con_nox_impacts$`Construction - Hydrogen` * con_nox_IF
      con_nox_impacts$`Construction - Oil/Petroleum` <- con_nox_impacts$`Construction - Oil/Petroleum` * con_nox_IF
      con_nox_impacts$`Construction - Bioenergy/Other` <- con_nox_impacts$`Construction - Bioenergy/Other` * con_nox_IF
      con_nox_impacts$`Construction - Gas CCS` <- con_nox_impacts$`Construction - Gas CCS` * con_nox_IF
      con_nox_impacts$`Construction - BECCS` <- con_nox_impacts$`Construction - BECCS` * con_nox_IF
      con_nox_impacts$`Total Impact` <- rowSums(con_nox_impacts[ , 2:7], na.rm = TRUE)
      
      return(con_nox_impacts)
      
    }
    
    # Per TWh NOx Impacts
    
    else {
      
      con_nox_impacts$`Construction - Natural Gas` <- (con_nox_impacts$`Construction - Natural Gas` * con_nox_IF)/food_data_sum()
      con_nox_impacts$`Construction - Hydrogen` <- (con_nox_impacts$`Construction - Hydrogen` * con_nox_IF)/food_data_sum()
      con_nox_impacts$`Construction - Oil/Petroleum` <- (con_nox_impacts$`Construction - Oil/Petroleum` * con_nox_IF)/food_data_sum()
      con_nox_impacts$`Construction - Bioenergy/Other` <- (con_nox_impacts$`Construction - Bioenergy/Other` * con_nox_IF)/food_data_sum()
      con_nox_impacts$`Construction - Gas CCS` <- (con_nox_impacts$`Construction - Gas CCS` * con_nox_IF)/food_data_sum()
      con_nox_impacts$`Construction - BECCS` <- (con_nox_impacts$`Construction - BECCS` * con_nox_IF)/food_data_sum()
      con_nox_impacts$`Total Impact` <- rowSums(con_nox_impacts[ , 2:7], na.rm = TRUE)
      
      return(con_nox_impacts)
      
    }
    
  })
  
  output$con_nox <- renderPlotly({
    
    req(con_nox_impacts())
    
    long_con_nox_impacts <- melt(con_nox_impacts()[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
    
    p <- ggplot(long_con_nox_impacts, aes(Year, Impacts, col = Source)) +
      geom_line() +
      {
        if (input$absolute_or_perUnit == "Absolute emissions/impacts")
        {
          labs(y = y_label_nox)
          
        }
        
        else 
        {
          labs(y = y_label_nox_perTWh)
        }
        
      } 
    
    ggplotly(p)
    
  })
  
  ####################################################################################################################
  
  # Construction/NRMM PM2.5 Impacts
  
  con_pm25_emissions <- reactive({
    
    req(con_data())
    
    con_pm25_emissions <- con_data()[, c(1,3:8)]
    
    con_pm25_emissions$`Construction - Natural Gas` <- con_pm25_emissions$`Construction - Natural Gas` * con_pm25_EF_gas
    con_pm25_emissions$`Construction - Hydrogen` <- con_pm25_emissions$`Construction - Hydrogen` * con_pm25_EF_hydrogen
    con_pm25_emissions$`Construction - Oil/Petroleum` <- con_pm25_emissions$`Construction - Oil/Petroleum` * con_pm25_EF_gasoil
    con_pm25_emissions$`Construction - Bioenergy/Other` <- con_pm25_emissions$`Construction - Bioenergy/Other` * con_pm25_EF_biomass
    con_pm25_emissions$`Construction - Gas CCS` <- con_pm25_emissions$`Construction - Gas CCS` * con_pm25_EF_gasccs
    con_pm25_emissions$`Construction - BECCS` <- con_pm25_emissions$`Construction - BECCS` * con_pm25_EF_beccs
    con_pm25_emissions$`Total Emissions` <- rowSums(con_pm25_emissions[ , 2:7], na.rm = TRUE)
    
    return(con_pm25_emissions)
    
  })
  
  con_pm25_impacts <- reactive({
    
    req(con_pm25_emissions())
    
    con_pm25_impacts <- con_pm25_emissions()[, 1:7]
    
    # Absolute PM2.5 Impacts
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      con_pm25_impacts$`Construction - Natural Gas` <- con_pm25_impacts$`Construction - Natural Gas` * con_pm25_IF
      con_pm25_impacts$`Construction - Hydrogen` <- con_pm25_impacts$`Construction - Hydrogen` * con_pm25_IF
      con_pm25_impacts$`Construction - Oil/Petroleum` <- con_pm25_impacts$`Construction - Oil/Petroleum` * con_pm25_IF
      con_pm25_impacts$`Construction - Bioenergy/Other` <- con_pm25_impacts$`Construction - Bioenergy/Other` * con_pm25_IF
      con_pm25_impacts$`Construction - Gas CCS` <- con_pm25_impacts$`Construction - Gas CCS` * con_pm25_IF
      con_pm25_impacts$`Construction - BECCS` <- con_pm25_impacts$`Construction - BECCS` * con_pm25_IF
      con_pm25_impacts$`Total Impact` <- rowSums(con_pm25_impacts[ , 2:7], na.rm = TRUE)
      
      return(con_pm25_impacts)
      
    }
    
    # Per TWh PM2.5 Impacts
    
    else {
      
      con_pm25_impacts$`Construction - Natural Gas` <- (con_pm25_impacts$`Construction - Natural Gas` * con_pm25_IF)/con_data_sum()
      con_pm25_impacts$`Construction - Hydrogen` <- (con_pm25_impacts$`Construction - Hydrogen` * con_pm25_IF)/con_data_sum()
      con_pm25_impacts$`Construction - Oil/Petroleum` <- (con_pm25_impacts$`Construction - Oil/Petroleum` * con_pm25_IF)/con_data_sum()
      con_pm25_impacts$`Construction - Bioenergy/Other` <- (con_pm25_impacts$`Construction - Bioenergy/Other` * con_pm25_IF)/con_data_sum()
      con_pm25_impacts$`Construction - Gas CCS` <- (con_pm25_impacts$`Construction - Gas CCS` * con_pm25_IF)/con_data_sum()
      con_pm25_impacts$`Construction - BECCS` <- (con_pm25_impacts$`Construction - BECCS` * con_pm25_IF)/con_data_sum()
      con_pm25_impacts$`Total Impact per TWh` <- rowSums(con_pm25_impacts[ , 2:7], na.rm = TRUE)
      
      return(con_pm25_impacts)
    }
    
    
    
  })
  
  output$con_pm25 <- renderPlotly({
    
    req(con_pm25_impacts())
    
    long_con_pm25_impacts <- melt(con_pm25_impacts()[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
    
    p <- ggplot(long_con_pm25_impacts, aes(Year, Impacts, col = Source)) +
      geom_line() +
      {
        if (input$absolute_or_perUnit == "Absolute emissions/impacts")
        {
          labs(y = y_label_pm25)
          
        }
        
        else 
        {
          labs(y = y_label_pm25_perTWh)
        }
        
      }
    
    ggplotly(p) 
    
  })
  
  #################################################################################################
  
  ####################################################################################################################
  
  # Other industry Combustion Emissions
  # Other industry CO2 emissions
  
  other_co2_emissions <- reactive({
    
    req(other_data())
    
    # Excluding Electricity - (Taking [12:16] into a new variable makes them [2:6])
    
    other_co2_emissions <- other_data()[, c(1,3:8)]
    
    # Absolute CO2 Emissions
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      other_co2_emissions$`Other Industries - Natural Gas` <- other_co2_emissions$`Other Industries - Natural Gas` * other_co2_EF_gas
      other_co2_emissions$`Other Industries - Hydrogen` <- other_co2_emissions$`Other Industries - Hydrogen` * other_co2_EF_hydrogen
      other_co2_emissions$`Other Industries - Oil/Petroleum` <- other_co2_emissions$`Other Industries - Oil/Petroleum` * other_co2_EF_gasoil
      other_co2_emissions$`Other Industries - Bioenergy/Other` <- other_co2_emissions$`Other Industries - Bioenergy/Other` * other_co2_EF_biomass
      other_co2_emissions$`Other Industries - Gas CCS` <- other_co2_emissions$`Other Industries - Gas CCS` * other_co2_EF_gasccs
      other_co2_emissions$`Other Industries - BECCS` <- other_co2_emissions$`Other Industries - BECCS` * other_co2_EF_beccs
      other_co2_emissions$`Total Emissions` <- rowSums(other_co2_emissions[ , 2:7], na.rm = TRUE)
      
      return(other_co2_emissions)
      
    }
    
    # Per TWh CO2 Emissions
    
    else {
      
      other_co2_emissions$`Other Industries - Natural Gas` <- (other_co2_emissions$`Other Industries - Natural Gas` * other_co2_EF_gas)/other_data_sum()
      other_co2_emissions$`Other Industries - Hydrogen` <- (other_co2_emissions$`Other Industries - Hydrogen` * other_co2_EF_hydrogen)/other_data_sum()
      other_co2_emissions$`Other Industries - Oil/Petroleum` <- (other_co2_emissions$`Other Industries - Oil/Petroleum` * other_co2_EF_gasoil)/other_data_sum()
      other_co2_emissions$`Other Industries - Bioenergy/Other` <- (other_co2_emissions$`Other Industries - Bioenergy/Other` * other_co2_EF_biomass)/other_data_sum()
      other_co2_emissions$`Other Industries - Gas CCS` <- (other_co2_emissions$`Other Industries - Gas CCS` * other_co2_EF_gasccs)/other_data_sum()
      other_co2_emissions$`Other Industries - BECCS` <- (other_co2_emissions$`Other Industries - BECCS` * other_co2_EF_beccs)/other_data_sum()
      other_co2_emissions$`Total Emissions per TWh` <- rowSums(other_co2_emissions[ , 2:7], na.rm = TRUE)
      
      return(other_co2_emissions)
      
    }
    
  })
  
  output$other_co2 <- renderPlotly({
    
    req(other_co2_emissions())
    
    long_other_co2_emissions <- melt(other_co2_emissions()[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Emissions", na.rm = TRUE)
    
    p <- ggplot(long_other_co2_emissions, aes(Year, Emissions, col = Source)) +
      geom_line() +
      {
        if (input$absolute_or_perUnit == "Absolute emissions/impacts")
        {
          labs(y = y_label_co2)
          
        }
        
        else 
        {
          labs(y = y_label_co2_perTWh)
        }
        
      }
    
    ggplotly(p)
    
    
  })
  
  ####################################################################################################################
  
  # Other industry NOx Impacts 
  
  other_nox_emissions <- reactive({
    
    req(other_data())
    
    other_nox_emissions <- other_data()[, c(1,3:8)]
    
    other_nox_emissions$`Other Industries - Natural Gas` <- other_nox_emissions$`Other Industries - Natural Gas` * other_nox_EF_gas
    other_nox_emissions$`Other Industries - Hydrogen` <- other_nox_emissions$`Other Industries - Hydrogen` * other_nox_EF_hydrogen
    other_nox_emissions$`Other Industries - Oil/Petroleum` <- other_nox_emissions$`Other Industries - Oil/Petroleum` * other_nox_EF_gasoil
    other_nox_emissions$`Other Industries - Bioenergy/Other` <- other_nox_emissions$`Other Industries - Bioenergy/Other` * other_nox_EF_biomass
    other_nox_emissions$`Other Industries - Gas CCS` <- other_nox_emissions$`Other Industries - Gas CCS` * other_nox_EF_gasccs
    other_nox_emissions$`Other Industries - BECCS` <- other_nox_emissions$`Other Industries - BECCS` * other_nox_EF_beccs
    other_nox_emissions$`Total Emissions` <- rowSums(other_nox_emissions[ , 2:7], na.rm = TRUE)
    
    return(other_nox_emissions)
    
  })
  
  other_nox_impacts <- reactive({
    
    req(other_nox_emissions())
    
    other_nox_impacts <- other_nox_emissions()[, 1:7]
    
    # Absolute NOx Impacts
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      other_nox_impacts$`Other Industries - Natural Gas` <- other_nox_impacts$`Other Industries - Natural Gas` * other_nox_IF
      other_nox_impacts$`Other Industries - Hydrogen` <- other_nox_impacts$`Other Industries - Hydrogen` * other_nox_IF
      other_nox_impacts$`Other Industries - Oil/Petroleum` <- other_nox_impacts$`Other Industries - Oil/Petroleum` * other_nox_IF
      other_nox_impacts$`Other Industries - Bioenergy/Other` <- other_nox_impacts$`Other Industries - Bioenergy/Other` * other_nox_IF
      other_nox_impacts$`Other Industries - Gas CCS` <- other_nox_impacts$`Other Industries - Gas CCS` * other_nox_IF
      other_nox_impacts$`Other Industries - BECCS` <- other_nox_impacts$`Other Industries - BECCS` * other_nox_IF
      other_nox_impacts$`Total Impact` <- rowSums(other_nox_impacts[ , 2:7], na.rm = TRUE)
      
      return(other_nox_impacts)
      
    }
    
    # Per TWh NOx Impacts
    
    else {
      
      other_nox_impacts$`Other Industries - Natural Gas` <- (other_nox_impacts$`Other Industries - Natural Gas` * other_nox_IF)/food_data_sum()
      other_nox_impacts$`Other Industries - Hydrogen` <- (other_nox_impacts$`Other Industries - Hydrogen` * other_nox_IF)/food_data_sum()
      other_nox_impacts$`Other Industries - Oil/Petroleum` <- (other_nox_impacts$`Other Industries - Oil/Petroleum` * other_nox_IF)/food_data_sum()
      other_nox_impacts$`Other Industries - Bioenergy/Other` <- (other_nox_impacts$`Other Industries - Bioenergy/Other` * other_nox_IF)/food_data_sum()
      other_nox_impacts$`Other Industries - Gas CCS` <- (other_nox_impacts$`Other Industries - Gas CCS` * other_nox_IF)/food_data_sum()
      other_nox_impacts$`Other Industries - BECCS` <- (other_nox_impacts$`Other Industries - BECCS` * other_nox_IF)/food_data_sum()
      other_nox_impacts$`Total Impact` <- rowSums(other_nox_impacts[ , 2:7], na.rm = TRUE)
      
      return(other_nox_impacts)
      
    }
    
  })
  
  output$other_nox <- renderPlotly({
    
    req(other_nox_impacts())
    
    long_other_nox_impacts <- melt(other_nox_impacts()[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
    
    p <- ggplot(long_other_nox_impacts, aes(Year, Impacts, col = Source)) +
      geom_line() +
      {
        if (input$absolute_or_perUnit == "Absolute emissions/impacts")
        {
          labs(y = y_label_nox)
          
        }
        
        else 
        {
          labs(y = y_label_nox_perTWh)
        }
        
      } 
    
    ggplotly(p)
    
  })
  
  ####################################################################################################################
  
  # Other industry PM2.5 Impacts
  
  other_pm25_emissions <- reactive({
    
    req(other_data())
    
    other_pm25_emissions <- other_data()[, c(1,3:8)]
    
    other_pm25_emissions$`Other Industries - Natural Gas` <- other_pm25_emissions$`Other Industries - Natural Gas` * other_pm25_EF_gas
    other_pm25_emissions$`Other Industries - Hydrogen` <- other_pm25_emissions$`Other Industries - Hydrogen` * other_pm25_EF_hydrogen
    other_pm25_emissions$`Other Industries - Oil/Petroleum` <- other_pm25_emissions$`Other Industries - Oil/Petroleum` * other_pm25_EF_gasoil
    other_pm25_emissions$`Other Industries - Bioenergy/Other` <- other_pm25_emissions$`Other Industries - Bioenergy/Other` * other_pm25_EF_biomass
    other_pm25_emissions$`Other Industries - Gas CCS` <- other_pm25_emissions$`Other Industries - Gas CCS` * other_pm25_EF_gasccs
    other_pm25_emissions$`Other Industries - BECCS` <- other_pm25_emissions$`Other Industries - BECCS` * other_pm25_EF_beccs
    other_pm25_emissions$`Total Emissions` <- rowSums(other_pm25_emissions[ , 2:7], na.rm = TRUE)
    
    return(other_pm25_emissions)
    
  })
  
  other_pm25_impacts <- reactive({
    
    req(other_pm25_emissions())
    
    other_pm25_impacts <- other_pm25_emissions()[, 1:7]
    
    # Absolute PM2.5 Impacts
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      other_pm25_impacts$`Other Industries - Natural Gas` <- other_pm25_impacts$`Other Industries - Natural Gas` * other_pm25_IF
      other_pm25_impacts$`Other Industries - Hydrogen` <- other_pm25_impacts$`Other Industries - Hydrogen` * other_pm25_IF
      other_pm25_impacts$`Other Industries - Oil/Petroleum` <- other_pm25_impacts$`Other Industries - Oil/Petroleum` * other_pm25_IF
      other_pm25_impacts$`Other Industries - Bioenergy/Other` <- other_pm25_impacts$`Other Industries - Bioenergy/Other` * other_pm25_IF
      other_pm25_impacts$`Other Industries - Gas CCS` <- other_pm25_impacts$`Other Industries - Gas CCS` * other_pm25_IF
      other_pm25_impacts$`Other Industries - BECCS` <- other_pm25_impacts$`Other Industries - BECCS` * other_pm25_IF
      other_pm25_impacts$`Total Impact` <- rowSums(other_pm25_impacts[ , 2:7], na.rm = TRUE)
      
      return(other_pm25_impacts)
      
    }
    
    # Per TWh PM2.5 Impacts
    
    else {
      
      other_pm25_impacts$`Other Industries - Natural Gas` <- (other_pm25_impacts$`Other Industries - Natural Gas` * other_pm25_IF)/other_data_sum()
      other_pm25_impacts$`Other Industries - Hydrogen` <- (other_pm25_impacts$`Other Industries - Hydrogen` * other_pm25_IF)/other_data_sum()
      other_pm25_impacts$`Other Industries - Oil/Petroleum` <- (other_pm25_impacts$`Other Industries - Oil/Petroleum` * other_pm25_IF)/other_data_sum()
      other_pm25_impacts$`Other Industries - Bioenergy/Other` <- (other_pm25_impacts$`Other Industries - Bioenergy/Other` * other_pm25_IF)/other_data_sum()
      other_pm25_impacts$`Other Industries - Gas CCS` <- (other_pm25_impacts$`Other Industries - Gas CCS` * other_pm25_IF)/other_data_sum()
      other_pm25_impacts$`Other Industries - BECCS` <- (other_pm25_impacts$`Other Industries - BECCS` * other_pm25_IF)/other_data_sum()
      other_pm25_impacts$`Total Impact per TWh` <- rowSums(other_pm25_impacts[ , 2:7], na.rm = TRUE)
      
      return(other_pm25_impacts)
    }
    
    
    
  })
  
  output$other_pm25 <- renderPlotly({
    
    req(other_pm25_impacts())
    
    long_other_pm25_impacts <- melt(other_pm25_impacts()[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
    
    p <- ggplot(long_other_pm25_impacts, aes(Year, Impacts, col = Source)) +
      geom_line() +
      {
        if (input$absolute_or_perUnit == "Absolute emissions/impacts")
        {
          labs(y = y_label_pm25)
          
        }
        
        else 
        {
          labs(y = y_label_pm25_perTWh)
        }
        
      }
    
    ggplotly(p) 
    
  })
  
  #################################################################################################
  
}

shinyApp(ui = ui, server = server)