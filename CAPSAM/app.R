# Loading in data - all impact factors, emission factors, and assumption CSV files
elec_gen_EFs <- read.csv("EFs_and_IFs/Elec_EFs_kt_TWh.csv")
dom_heat_EFs <- read.csv("EFs_and_IFs/Res_Heat_EFs_kt_TWh.csv")
pub_heat_EFs <- read.csv("EFs_and_IFs/Pub_Heat_EFs_kt_TWh.csv")
ind_com_EFs <- read.csv("EFs_and_IFs/Ind_Com_EFs_kt_TWh.csv")
hyd_prod_EFs <- read.csv("EFs_and_IFs/Hydrogen_Production_EFs_kt_TWh.csv")
road_transport_EFs <- read.csv("EFs_and_IFs/Road_Transport_EFs_g_km_Tech_Specific.csv")
impact_factors <- read.csv("EFs_and_IFs/UK_to_UK_IFs.csv")
dh_vector_share <- read.csv("EFs_and_IFs/DH_VectorShare.csv")
ph_vector_share <- read.csv("EFs_and_IFs/PH_VectorShare.csv")
ind_vector_share <- read.csv("EFs_and_IFs/Ind_VectorShare.csv")
road_transport_euro_split <- read.csv("EFs_and_IFs/Road_Transport_euro_split_basic.csv")
road_transport_avg_annual_vkm_and_utilisation_factor <- read.csv("EFs_and_IFs/Road_Transport_vkm_and_utilisation_factors.csv")
damage_costs <- read.csv("EFs_and_IFs/Damage_Costs.csv")


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

#SO2 emission factors
elec_so2_EF_Biomass <- elec_gen_EFs[6,6]
elec_so2_EF_BECCS <- elec_gen_EFs[11,6]
elec_so2_EF_Gas <- elec_gen_EFs[2,6]
elec_so2_EF_GasCCS <- elec_gen_EFs[9,6]
elec_so2_EF_Hydrogen <- elec_gen_EFs[4,6]
elec_so2_EF_Coal <- elec_gen_EFs[1,6]
elec_so2_EF_Waste <- elec_gen_EFs[8,6]
elec_so2_EF_OtherThermal <- elec_gen_EFs[5,6]

#NH3 emission factors
elec_nh3_EF_Biomass <- elec_gen_EFs[6,7]
elec_nh3_EF_BECCS <- elec_gen_EFs[11,7]
elec_nh3_EF_Gas <- elec_gen_EFs[2,7]
elec_nh3_EF_GasCCS <- elec_gen_EFs[9,7]
elec_nh3_EF_Hydrogen <- elec_gen_EFs[4,7]
elec_nh3_EF_Coal <- elec_gen_EFs[1,7]
elec_nh3_EF_Waste <- elec_gen_EFs[8,7]
elec_nh3_EF_OtherThermal <- elec_gen_EFs[5,7]

#pNOx Electricity Impact Factors
elec_nox_IF_Gas <- impact_factors[1,7]
elec_nox_IF_Landfill <- impact_factors[2,7]
elec_nox_IF_Other <- impact_factors[3,7]

#PM2.5 Electricity Impact Factors
elec_pm25_IF_Gas <- impact_factors[1,6]
elec_pm25_IF_Landfill <- impact_factors[2,6]
elec_pm25_IF_Other <- impact_factors[3,6]

#sNOx Electricity Impact Factors
elec_snox_IF_Gas <- impact_factors[1,5]
elec_snox_IF_Landfill <- impact_factors[2,5]
elec_snox_IF_Other <- impact_factors[3,5]

#SO2 Electricity Impact Factors
elec_so2_IF_Gas <- impact_factors[1,4]
elec_so2_IF_Landfill <- impact_factors[2,4]
elec_so2_IF_Other <- impact_factors[3,4]

#NH3 Electricity Impact Factors
elec_nh3_IF_Gas <- impact_factors[1,3]
elec_nh3_IF_Landfill <- impact_factors[2,3]
elec_nh3_IF_Other <- impact_factors[3,3]

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

# Domestic Heat SO2 Emission Factors
dh_so2_EF_SSF_stove <- dom_heat_EFs[1,5]
dh_so2_EF_SSF_boiler <- dom_heat_EFs[2,5]
dh_so2_EF_gasoil_boiler <- dom_heat_EFs[3,5]
dh_so2_EF_gas_boiler <- dom_heat_EFs[4,5]
dh_so2_EF_woodpellet_boiler <- dom_heat_EFs[5,5]
dh_so2_EF_wood_boiler <- dom_heat_EFs[6,5]
dh_so2_EF_wood_fireplace <- dom_heat_EFs[7,5]
dh_so2_EF_hydrogen_boiler <- dom_heat_EFs[8,5]
dh_so2_EF_hydrogen_natgas_boiler <- dom_heat_EFs[9,5]
dh_so2_EF_coal_stove <- dom_heat_EFs[10,5]

# Domestic Heat NH3 Emission Factors
dh_nh3_EF_SSF_stove <- dom_heat_EFs[1,6]
dh_nh3_EF_SSF_boiler <- dom_heat_EFs[2,6]
dh_nh3_EF_gasoil_boiler <- dom_heat_EFs[3,6]
dh_nh3_EF_gas_boiler <- dom_heat_EFs[4,6]
dh_nh3_EF_woodpellet_boiler <- dom_heat_EFs[5,6]
dh_nh3_EF_wood_boiler <- dom_heat_EFs[6,6]
dh_nh3_EF_wood_fireplace <- dom_heat_EFs[7,6]
dh_nh3_EF_hydrogen_boiler <- dom_heat_EFs[8,6]
dh_nh3_EF_hydrogen_natgas_boiler <- dom_heat_EFs[9,6]
dh_nh3_EF_coal_stove <- dom_heat_EFs[10,6]

# pNOx Domestic Heat Impact Factors
dh_nox_IF_coal <- impact_factors[7,7]
dh_nox_IF_gas <- impact_factors[8,7]
dh_nox_IF_oil <- impact_factors[9,7]
dh_nox_IF_wood <- impact_factors[10,7]

# PM2.5 Domestic Heat Impact Factors
dh_pm25_IF_coal <- impact_factors[7,6]
dh_pm25_IF_gas <- impact_factors[8,6]
dh_pm25_IF_oil <- impact_factors[9,6]
dh_pm25_IF_wood <- impact_factors[10,6]

# Secondary NOx Domestic Heat Impact Factors
dh_snox_IF_coal <- impact_factors[7,5]
dh_snox_IF_gas <- impact_factors[8,5]
dh_snox_IF_oil <- impact_factors[9,5]
dh_snox_IF_wood <- impact_factors[10,5]

# SO2 Domestic Heat Impact Factors
dh_so2_IF_coal <- impact_factors[7,4]
dh_so2_IF_gas <- impact_factors[8,4]
dh_so2_IF_oil <- impact_factors[9,4]
dh_so2_IF_wood <- impact_factors[10,4]

# NH3 Domestic Heat Impact Factors
dh_nh3_IF_coal <- impact_factors[7,3]
dh_nh3_IF_gas <- impact_factors[8,3]
dh_nh3_IF_oil <- impact_factors[9,3]
dh_nh3_IF_wood <- impact_factors[10,3]

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

# Public and Commercial Heat PM2.5 Emission Factors
ph_so2_EF_coal_boiler <- pub_heat_EFs[1,5]
ph_so2_EF_fueloil_boiler <- pub_heat_EFs[2,5]
ph_so2_EF_gas_boiler <- pub_heat_EFs[3,5]
ph_so2_EF_biomass_boiler <- pub_heat_EFs[4,5]
ph_so2_EF_hydrogen_natgas_boiler <- pub_heat_EFs[5,5]
ph_so2_EF_hydrogen_boiler <- pub_heat_EFs[6,5]

# Public and Commercial Heat PM2.5 Emission Factors
ph_nh3_EF_coal_boiler <- pub_heat_EFs[1,6]
ph_nh3_EF_fueloil_boiler <- pub_heat_EFs[2,6]
ph_nh3_EF_gas_boiler <- pub_heat_EFs[3,6]
ph_nh3_EF_biomass_boiler <- pub_heat_EFs[4,6]
ph_nh3_EF_hydrogen_natgas_boiler <- pub_heat_EFs[5,6]
ph_nh3_EF_hydrogen_boiler <- pub_heat_EFs[6,6]

#pNOx Public and Commercial Heat Impact Factors
ph_nox_IF_public <- impact_factors[11,7]

#PM2.5 Public and Commercial Heat Impact Factors
ph_pm25_IF_public <- impact_factors[11,6]

#secondary NOx Public and Commercial Heat Impact Factors
ph_snox_IF_public <- impact_factors[11,5]

#SO2 Public and Commercial Heat Impact Factors
ph_so2_IF_public <- impact_factors[11,4]

#NH3 Public and Commercial Heat Impact Factors
ph_nh3_IF_public <- impact_factors[11,3]

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

# Iron and Steel SO2 Emission Factors
ironsteel_so2_EF_coal <- ind_com_EFs[1,6]
ironsteel_so2_EF_coke <- ind_com_EFs[2,6]
ironsteel_so2_EF_fueloil <- ind_com_EFs[3,6]
ironsteel_so2_EF_gasoil <- ind_com_EFs[4,6]
ironsteel_so2_EF_lpg <- ind_com_EFs[5,6]
ironsteel_so2_EF_gas <- ind_com_EFs[6,6]
ironsteel_so2_EF_hydrogen <- ind_com_EFs[7,6]
ironsteel_so2_EF_biomass <- ind_com_EFs[8,6]
ironsteel_so2_EF_gasccs <- ind_com_EFs[9,6]
ironsteel_so2_EF_beccs <- ind_com_EFs[10,6]

# Iron and Steel NH3 Emission Factors
ironsteel_nh3_EF_coal <- ind_com_EFs[1,7]
ironsteel_nh3_EF_coke <- ind_com_EFs[2,7]
ironsteel_nh3_EF_fueloil <- ind_com_EFs[3,7]
ironsteel_nh3_EF_gasoil <- ind_com_EFs[4,7]
ironsteel_nh3_EF_lpg <- ind_com_EFs[5,7]
ironsteel_nh3_EF_gas <- ind_com_EFs[6,7]
ironsteel_nh3_EF_hydrogen <- ind_com_EFs[7,7]
ironsteel_nh3_EF_biomass <- ind_com_EFs[8,7]
ironsteel_nh3_EF_gasccs <- ind_com_EFs[9,7]
ironsteel_nh3_EF_beccs <- ind_com_EFs[10,7]

# Iron and Steel Impact Factors
ironsteel_nox_IF <- impact_factors[14,7]
ironsteel_pm25_IF <- impact_factors[14,6]
ironsteel_snox_IF <- impact_factors[14,5]
ironsteel_so2_IF <- impact_factors[14,4]
ironsteel_nh3_IF <- impact_factors[14,3]

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

# Non-ferrous metals so2 Emission Factors
nfm_so2_EF_coalauto <- ind_com_EFs[11,6]
nfm_so2_EF_coal <- ind_com_EFs[12,6]
nfm_so2_EF_fueloil <- ind_com_EFs[13,6]
nfm_so2_EF_gasoil <- ind_com_EFs[14,6]
nfm_so2_EF_gas <- ind_com_EFs[15,6]
nfm_so2_EF_hydrogen <- ind_com_EFs[16,6]
nfm_so2_EF_biomass <- ind_com_EFs[17,6]
nfm_so2_EF_gasccs <- ind_com_EFs[18,6]
nfm_so2_EF_beccs <- ind_com_EFs[19,6]

# Non-ferrous metals NH3 Emission Factors
nfm_nh3_EF_coalauto <- ind_com_EFs[11,7]
nfm_nh3_EF_coal <- ind_com_EFs[12,7]
nfm_nh3_EF_fueloil <- ind_com_EFs[13,7]
nfm_nh3_EF_gasoil <- ind_com_EFs[14,7]
nfm_nh3_EF_gas <- ind_com_EFs[15,7]
nfm_nh3_EF_hydrogen <- ind_com_EFs[16,7]
nfm_nh3_EF_biomass <- ind_com_EFs[17,7]
nfm_nh3_EF_gasccs <- ind_com_EFs[18,7]
nfm_nh3_EF_beccs <- ind_com_EFs[19,7]

# Non-ferrous metals Impact Factors
nfm_nox_IF <- impact_factors[21,7]
nfm_pm25_IF <- impact_factors[21,6]
nfm_snox_IF <- impact_factors[21,5]
nfm_so2_IF <- impact_factors[21,4]
nfm_nh3_IF <- impact_factors[21,3]

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

# Chemicals so2 Emission Factors
chem_so2_EF_coal <- ind_com_EFs[25,6]
chem_so2_EF_fueloil <- ind_com_EFs[20,6]
chem_so2_EF_gasoil <- ind_com_EFs[21,6]
chem_so2_EF_gas <- ind_com_EFs[22,6]
chem_so2_EF_hydrogen <- ind_com_EFs[23,6]
chem_so2_EF_biomass <- ind_com_EFs[24,6]
chem_so2_EF_gasccs <- ind_com_EFs[26,6]
chem_so2_EF_beccs <- ind_com_EFs[27,6]

# Chemicals NH3 Emission Factors
chem_nh3_EF_coal <- ind_com_EFs[25,7]
chem_nh3_EF_fueloil <- ind_com_EFs[20,7]
chem_nh3_EF_gasoil <- ind_com_EFs[21,7]
chem_nh3_EF_gas <- ind_com_EFs[22,7]
chem_nh3_EF_hydrogen <- ind_com_EFs[23,7]
chem_nh3_EF_biomass <- ind_com_EFs[24,7]
chem_nh3_EF_gasccs <- ind_com_EFs[26,7]
chem_nh3_EF_beccs <- ind_com_EFs[27,7]

# Chemicals Impact Factors
chem_nox_IF <- impact_factors[25,7]
chem_pm25_IF <- impact_factors[25,6]
chem_snox_IF <- impact_factors[25,5]
chem_so2_IF <- impact_factors[25,4]
chem_nh3_IF <- impact_factors[25,3]

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

# Paper and Pulp SO2 Emission Factors
pap_so2_EF_coal <- ind_com_EFs[28,6]
pap_so2_EF_fueloil <- ind_com_EFs[29,6]
pap_so2_EF_gasoil <- ind_com_EFs[30,6]
pap_so2_EF_gas <- ind_com_EFs[31,6]
pap_so2_EF_hydrogen <- ind_com_EFs[32,6]
pap_so2_EF_biomass <- ind_com_EFs[33,6]
pap_so2_EF_gasccs <- ind_com_EFs[34,6]
pap_so2_EF_beccs <- ind_com_EFs[35,6]

# Paper and Pulp NH3 Emission Factors
pap_nh3_EF_coal <- ind_com_EFs[28,7]
pap_nh3_EF_fueloil <- ind_com_EFs[29,7]
pap_nh3_EF_gasoil <- ind_com_EFs[30,7]
pap_nh3_EF_gas <- ind_com_EFs[31,7]
pap_nh3_EF_hydrogen <- ind_com_EFs[32,7]
pap_nh3_EF_biomass <- ind_com_EFs[33,7]
pap_nh3_EF_gasccs <- ind_com_EFs[34,7]
pap_nh3_EF_beccs <- ind_com_EFs[35,7]

# Paper and Pulp Impact Factors
pap_nox_IF <- impact_factors[21,7]
pap_pm25_IF <- impact_factors[21,6]
pap_snox_IF <- impact_factors[21,5]
pap_so2_IF <- impact_factors[21,4]
pap_nh3_IF <- impact_factors[21,3]

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

# Food and Beverages SO2 Emission Factors
food_so2_EF_coal <- ind_com_EFs[36,6]
food_so2_EF_fueloil <- ind_com_EFs[37,6]
food_so2_EF_gasoil <- ind_com_EFs[38,6]
food_so2_EF_gas <- ind_com_EFs[39,6]
food_so2_EF_hydrogen <- ind_com_EFs[40,6]
food_so2_EF_biomass <- ind_com_EFs[41,6]
food_so2_EF_gasccs <- ind_com_EFs[42,6]
food_so2_EF_beccs <- ind_com_EFs[43,6]

# Food and Beverages NH3 Emission Factors
food_nh3_EF_coal <- ind_com_EFs[36,7]
food_nh3_EF_fueloil <- ind_com_EFs[37,7]
food_nh3_EF_gasoil <- ind_com_EFs[38,7]
food_nh3_EF_gas <- ind_com_EFs[39,7]
food_nh3_EF_hydrogen <- ind_com_EFs[40,7]
food_nh3_EF_biomass <- ind_com_EFs[41,7]
food_nh3_EF_gasccs <- ind_com_EFs[42,7]
food_nh3_EF_beccs <- ind_com_EFs[43,7]

# Food and Beverages Impact Factors
food_nox_IF <- impact_factors[21,7]
food_pm25_IF <- impact_factors[21,6]
food_snox_IF <- impact_factors[21,5]
food_so2_IF <- impact_factors[21,4]
food_nh3_IF <- impact_factors[21,3]

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

# Mineral Products SO2 Emission Factors
min_so2_EF_coal <- ind_com_EFs[44,6]
min_so2_EF_fueloil <- ind_com_EFs[45,6]
min_so2_EF_gasoil <- ind_com_EFs[46,6]
min_so2_EF_gas <- ind_com_EFs[47,6]
min_so2_EF_hydrogen <- ind_com_EFs[48,6]
min_so2_EF_biomass <- ind_com_EFs[49,6]
min_so2_EF_gasccs <- ind_com_EFs[50,6]
min_so2_EF_beccs <- ind_com_EFs[51,6]

# Mineral Products NH3 Emission Factors
min_nh3_EF_coal <- ind_com_EFs[44,7]
min_nh3_EF_fueloil <- ind_com_EFs[45,7]
min_nh3_EF_gasoil <- ind_com_EFs[46,7]
min_nh3_EF_gas <- ind_com_EFs[47,7]
min_nh3_EF_hydrogen <- ind_com_EFs[48,7]
min_nh3_EF_biomass <- ind_com_EFs[49,7]
min_nh3_EF_gasccs <- ind_com_EFs[50,7]
min_nh3_EF_beccs <- ind_com_EFs[51,7]

# Mineral Products Impact Factors 
min_nox_IF <- impact_factors[13,7]
min_pm25_IF <- impact_factors[13,6]
min_snox_IF <- impact_factors[13,5]
min_so2_IF <- impact_factors[13,4]
min_nh3_IF <- impact_factors[13,3]

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

# Textiles SO2 Emission Factors
text_so2_EF_coal <- ind_com_EFs[44,6]
text_so2_EF_fueloil <- ind_com_EFs[45,6]
text_so2_EF_gasoil <- ind_com_EFs[46,6]
text_so2_EF_gas <- ind_com_EFs[47,6]
text_so2_EF_hydrogen <- ind_com_EFs[48,6]
text_so2_EF_biomass <- ind_com_EFs[49,6]
text_so2_EF_gasccs <- ind_com_EFs[50,6]
text_so2_EF_beccs <- ind_com_EFs[51,6]

# Textiles NH3 Emission Factors
text_nh3_EF_coal <- ind_com_EFs[44,7]
text_nh3_EF_fueloil <- ind_com_EFs[45,7]
text_nh3_EF_gasoil <- ind_com_EFs[46,7]
text_nh3_EF_gas <- ind_com_EFs[47,7]
text_nh3_EF_hydrogen <- ind_com_EFs[48,7]
text_nh3_EF_biomass <- ind_com_EFs[49,7]
text_nh3_EF_gasccs <- ind_com_EFs[50,7]
text_nh3_EF_beccs <- ind_com_EFs[51,7]

# Textiles Impact Factors 
text_nox_IF <- impact_factors[21,7]
text_pm25_IF <- impact_factors[21,6]
text_snox_IF <- impact_factors[21,5]
text_so2_IF <- impact_factors[21,4]
text_nh3_IF <- impact_factors[21,3]

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
con_pm25_EF_derv <- ind_com_EFs[53,5]
con_pm25_EF_gasoil <- ind_com_EFs[54,5]
con_pm25_EF_petrol <- ind_com_EFs[55,5]
con_pm25_EF_gas <- ind_com_EFs[56,5]
con_pm25_EF_hydrogen <- ind_com_EFs[57,5]
con_pm25_EF_biomass <- ind_com_EFs[58,5]
con_pm25_EF_gasccs <- ind_com_EFs[59,5]
con_pm25_EF_beccs <- ind_com_EFs[60,5]

# Construction SO2 Emission Factors
con_so2_EF_coal <- ind_com_EFs[52,6]
con_so2_EF_derv <- ind_com_EFs[53,6]
con_so2_EF_gasoil <- ind_com_EFs[54,6]
con_so2_EF_petrol <- ind_com_EFs[55,6]
con_so2_EF_gas <- ind_com_EFs[56,6]
con_so2_EF_hydrogen <- ind_com_EFs[57,6]
con_so2_EF_biomass <- ind_com_EFs[58,6]
con_so2_EF_gasccs <- ind_com_EFs[59,6]
con_so2_EF_beccs <- ind_com_EFs[60,6]

# Construction NH3 Emission Factors
con_nh3_EF_coal <- ind_com_EFs[52,7]
con_nh3_EF_derv <- ind_com_EFs[53,7]
con_nh3_EF_gasoil <- ind_com_EFs[54,7]
con_nh3_EF_petrol <- ind_com_EFs[55,7]
con_nh3_EF_gas <- ind_com_EFs[56,7]
con_nh3_EF_hydrogen <- ind_com_EFs[57,7]
con_nh3_EF_biomass <- ind_com_EFs[58,7]
con_nh3_EF_gasccs <- ind_com_EFs[59,7]
con_nh3_EF_beccs <- ind_com_EFs[60,7]

# Construction Impact Factors 
con_nox_IF <- impact_factors[21,7]
con_pm25_IF <- impact_factors[21,6]
con_snox_IF <- impact_factors[21,5]
con_so2_IF <- impact_factors[21,4]
con_nh3_IF <- impact_factors[21,3]

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
other_pm25_EF_gas <- ind_com_EFs[61,5]
other_pm25_EF_burningoil <- ind_com_EFs[62,5]
other_pm25_EF_coal <- ind_com_EFs[63,5]
other_pm25_EF_cokeovengas <- ind_com_EFs[64,5]
other_pm25_EF_collierymethane <- ind_com_EFs[65,5]
other_pm25_EF_fueloil <- ind_com_EFs[66,5]
other_pm25_EF_gasoil <- ind_com_EFs[67,5]
other_pm25_EF_lpg <- ind_com_EFs[68,5]
other_pm25_EF_hydrogen <- ind_com_EFs[69,5]
other_pm25_EF_biomass <- ind_com_EFs[70,5]
other_pm25_EF_gasccs <- ind_com_EFs[71,5]
other_pm25_EF_beccs <- ind_com_EFs[72,5]

# Other Industrial SO2 Emission Factors
other_so2_EF_gas <- ind_com_EFs[61,6]
other_so2_EF_burningoil <- ind_com_EFs[62,6]
other_so2_EF_coal <- ind_com_EFs[63,6]
other_so2_EF_cokeovengas <- ind_com_EFs[64,6]
other_so2_EF_collierymethane <- ind_com_EFs[65,6]
other_so2_EF_fueloil <- ind_com_EFs[66,6]
other_so2_EF_gasoil <- ind_com_EFs[67,6]
other_so2_EF_lpg <- ind_com_EFs[68,6]
other_so2_EF_hydrogen <- ind_com_EFs[69,6]
other_so2_EF_biomass <- ind_com_EFs[70,6]
other_so2_EF_gasccs <- ind_com_EFs[71,6]
other_so2_EF_beccs <- ind_com_EFs[72,6]

# Other Industrial NH3 Emission Factors
other_nh3_EF_gas <- ind_com_EFs[61,7]
other_nh3_EF_burningoil <- ind_com_EFs[62,7]
other_nh3_EF_coal <- ind_com_EFs[63,7]
other_nh3_EF_cokeovengas <- ind_com_EFs[64,7]
other_nh3_EF_collierymethane <- ind_com_EFs[65,7]
other_nh3_EF_fueloil <- ind_com_EFs[66,7]
other_nh3_EF_gasoil <- ind_com_EFs[67,7]
other_nh3_EF_lpg <- ind_com_EFs[68,7]
other_nh3_EF_hydrogen <- ind_com_EFs[69,7]
other_nh3_EF_biomass <- ind_com_EFs[70,7]
other_nh3_EF_gasccs <- ind_com_EFs[71,7]
other_nh3_EF_beccs <- ind_com_EFs[72,7]

# Other Industrial Impact Factors 
other_nox_IF <- impact_factors[21,7]
other_pm25_IF <- impact_factors[21,6]
other_snox_IF <- impact_factors[21,5]
other_so2_IF <- impact_factors[21,4]
other_nh3_IF <- impact_factors[21,3]

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

# Hydrogen SO2 Emission Factors
hyd_prod_so2_EF_grey <- hyd_prod_EFs[1,9]
hyd_prod_so2_EF_blue <- hyd_prod_EFs[2,9]
hyd_prod_so2_EF_blueFGR <- hyd_prod_EFs[3,9]
hyd_prod_so2_EF_biomass_gasification <- hyd_prod_EFs[4,9]

# Hydrogen NH3 Emission Factors
hyd_prod_nh3_EF_grey <- hyd_prod_EFs[1,10]
hyd_prod_nh3_EF_blue <- hyd_prod_EFs[2,10]
hyd_prod_nh3_EF_blueFGR <- hyd_prod_EFs[3,10]
hyd_prod_nh3_EF_biomass_gasification <- hyd_prod_EFs[4,10]

# Hydrogen production Impact Factors - Using SID: _05_01_ Refineries_Combustion
hyd_prod_nox_IF_Gas <- impact_factors[5,7]
hyd_prod_pm25_IF_Gas <- impact_factors[5,6]
hyd_prod_snox_IF_Gas <- impact_factors[5,5]
hyd_prod_so2_IF_Gas <- impact_factors[5,4]
hyd_prod_nh3_IF_Gas <- impact_factors[5,3]

###############################################################################################################################################

# Road Transport Emission and Impact Factors

# CO2 Emission Factors
car_petrol_euro_1_co2 <- road_transport_EFs[1,2]
car_petrol_euro_2_co2 <- road_transport_EFs[2,2]
car_petrol_euro_3_co2 <- road_transport_EFs[3,2]
car_petrol_euro_4_co2 <- road_transport_EFs[4,2]
car_petrol_euro_5a_co2 <- road_transport_EFs[5,2]
car_petrol_euro_5b_co2 <- road_transport_EFs[6,2]
car_petrol_euro_6b_co2 <- road_transport_EFs[7,2]
car_petrol_euro_6c_co2 <- road_transport_EFs[8,2]
car_petrol_euro_6dTemp_co2 <- road_transport_EFs[9,2]
car_petrol_euro_6d_co2 <- road_transport_EFs[10,2]
car_petrol_euro_7_co2 <- road_transport_EFs[11,2]
car_diesel_euro_1_co2 <- road_transport_EFs[12,2]
car_diesel_euro_2_co2 <- road_transport_EFs[13,2]
car_diesel_euro_3_co2 <- road_transport_EFs[14,2]
car_diesel_euro_4_co2 <- road_transport_EFs[15,2]
car_diesel_euro_5a_co2 <- road_transport_EFs[16,2]
car_diesel_euro_5b_co2 <- road_transport_EFs[17,2]
car_diesel_euro_6b_co2 <- road_transport_EFs[18,2]
car_diesel_euro_6c_co2 <- road_transport_EFs[19,2]
car_diesel_euro_6dTemp_co2 <- road_transport_EFs[20,2]
car_diesel_euro_6d_co2 <- road_transport_EFs[21,2]
car_diesel_euro_7_co2 <- road_transport_EFs[22,2]
car_phev_petrol_co2 <- road_transport_EFs[23,2]
car_phev_diesel_co2 <- road_transport_EFs[24,2]
car_fuelcell_co2 <- road_transport_EFs[25,2]
car_bev_co2 <- road_transport_EFs[26,2]
lgv_petrol_euro_1_co2 <- road_transport_EFs[27,2]
lgv_petrol_euro_2_co2 <- road_transport_EFs[28,2]
lgv_petrol_euro_3_co2 <- road_transport_EFs[29,2]
lgv_petrol_euro_4_co2 <- road_transport_EFs[30,2]
lgv_petrol_euro_5a_co2 <- road_transport_EFs[31,2]
lgv_petrol_euro_5b_co2 <- road_transport_EFs[32,2]
lgv_petrol_euro_6b_co2 <- road_transport_EFs[33,2]
lgv_petrol_euro_6c_co2 <- road_transport_EFs[34,2]
lgv_petrol_euro_6dTemp_co2 <- road_transport_EFs[35,2]
lgv_petrol_euro_6d_co2 <- road_transport_EFs[36,2]
lgv_petrol_euro_7_co2 <- road_transport_EFs[37,2]
lgv_diesel_euro_1_co2 <- road_transport_EFs[38,2]
lgv_diesel_euro_2_co2 <- road_transport_EFs[39,2]
lgv_diesel_euro_3_co2 <- road_transport_EFs[40,2]
lgv_diesel_euro_4_co2 <- road_transport_EFs[41,2]
lgv_diesel_euro_5a_co2 <- road_transport_EFs[42,2]
lgv_diesel_euro_5b_co2 <- road_transport_EFs[43,2]
lgv_diesel_euro_6b_co2 <- road_transport_EFs[44,2]
lgv_diesel_euro_6c_co2 <- road_transport_EFs[45,2]
lgv_diesel_euro_6dTemp_co2 <- road_transport_EFs[46,2]
lgv_diesel_euro_6d_co2 <- road_transport_EFs[47,2]
lgv_diesel_euro_7_co2 <- road_transport_EFs[48,2]
lgv_phev_petrol_co2 <- road_transport_EFs[49,2]
lgv_phev_diesel_co2 <- road_transport_EFs[50,2]
lgv_fuelcell_co2 <- road_transport_EFs[51,2]
lgv_bev_co2 <- road_transport_EFs[52,2]
hgv_cng_euro_1_co2 <- road_transport_EFs[53,2]
hgv_cng_euro_2_co2 <- road_transport_EFs[54,2]
hgv_cng_euro_3_co2 <- road_transport_EFs[55,2]
hgv_cng_eev_co2 <- road_transport_EFs[56,2]
hgv_diesel_euro_1_co2 <- road_transport_EFs[57,2]
hgv_diesel_euro_2_co2 <- road_transport_EFs[58,2]
hgv_diesel_euro_3_co2 <- road_transport_EFs[59,2]
hgv_diesel_euro_4_co2 <- road_transport_EFs[60,2]
hgv_diesel_euro_5_co2 <- road_transport_EFs[61,2]
hgv_diesel_euro_6_co2 <- road_transport_EFs[62,2]
hgv_diesel_euro_7_co2 <- road_transport_EFs[63,2]
hgv_phev_diesel_co2 <- road_transport_EFs[64,2]
hgv_fuelcell_co2 <- road_transport_EFs[65,2]
hgv_bev_co2 <- road_transport_EFs[66,2]
bus_cng_euro_1_co2 <- road_transport_EFs[67,2]
bus_cng_euro_2_co2 <- road_transport_EFs[68,2]
bus_cng_euro_3_co2 <- road_transport_EFs[69,2]
bus_cng_eev_co2 <- road_transport_EFs[70,2]
bus_diesel_euro_1_co2 <- road_transport_EFs[71,2]
bus_diesel_euro_2_co2 <- road_transport_EFs[72,2]
bus_diesel_euro_3_co2 <- road_transport_EFs[73,2]
bus_diesel_euro_4_co2 <- road_transport_EFs[74,2]
bus_diesel_euro_5_co2 <- road_transport_EFs[75,2]
bus_diesel_euro_6_co2 <- road_transport_EFs[76,2]
bus_diesel_euro_7_co2 <- road_transport_EFs[77,2]
bus_phev_diesel_co2 <- road_transport_EFs[78,2]
bus_fuelcell_co2 <- road_transport_EFs[79,2]
bus_bev_co2 <- road_transport_EFs[80,2]
motorcycle_petrol_euro_1_co2 <- road_transport_EFs[81,2]
motorcycle_petrol_euro_2_co2 <- road_transport_EFs[82,2]
motorcycle_petrol_euro_3_co2 <- road_transport_EFs[83,2]
motorcycle_petrol_euro_4_co2 <- road_transport_EFs[84,2]
motorcycle_petrol_euro_5_co2 <- road_transport_EFs[85,2]
motorcycle_fuelcell_co2 <- road_transport_EFs[86,2]
motorcycle_electric_co2 <- road_transport_EFs[87,2]

# pNOx Emission Factors
car_petrol_euro_1_nox <- road_transport_EFs[1,3]
car_petrol_euro_2_nox <- road_transport_EFs[2,3]
car_petrol_euro_3_nox <- road_transport_EFs[3,3]
car_petrol_euro_4_nox <- road_transport_EFs[4,3]
car_petrol_euro_5a_nox <- road_transport_EFs[5,3]
car_petrol_euro_5b_nox <- road_transport_EFs[6,3]
car_petrol_euro_6b_nox <- road_transport_EFs[7,3]
car_petrol_euro_6c_nox <- road_transport_EFs[8,3]
car_petrol_euro_6dTemp_nox <- road_transport_EFs[9,3]
car_petrol_euro_6d_nox <- road_transport_EFs[10,3]
car_petrol_euro_7_nox <- road_transport_EFs[11,3]
car_diesel_euro_1_nox <- road_transport_EFs[12,3]
car_diesel_euro_2_nox <- road_transport_EFs[13,3]
car_diesel_euro_3_nox <- road_transport_EFs[14,3]
car_diesel_euro_4_nox <- road_transport_EFs[15,3]
car_diesel_euro_5a_nox <- road_transport_EFs[16,3]
car_diesel_euro_5b_nox <- road_transport_EFs[17,3]
car_diesel_euro_6b_nox <- road_transport_EFs[18,3]
car_diesel_euro_6c_nox <- road_transport_EFs[19,3]
car_diesel_euro_6dTemp_nox <- road_transport_EFs[20,3]
car_diesel_euro_6d_nox <- road_transport_EFs[21,3]
car_diesel_euro_7_nox <- road_transport_EFs[22,3]
car_phev_petrol_nox <- road_transport_EFs[23,3]
car_phev_diesel_nox <- road_transport_EFs[24,3]
car_fuelcell_nox <- road_transport_EFs[25,3]
car_bev_nox <- road_transport_EFs[26,3]
lgv_petrol_euro_1_nox <- road_transport_EFs[27,3]
lgv_petrol_euro_2_nox <- road_transport_EFs[28,3]
lgv_petrol_euro_3_nox <- road_transport_EFs[29,3]
lgv_petrol_euro_4_nox <- road_transport_EFs[30,3]
lgv_petrol_euro_5a_nox <- road_transport_EFs[31,3]
lgv_petrol_euro_5b_nox <- road_transport_EFs[32,3]
lgv_petrol_euro_6b_nox <- road_transport_EFs[33,3]
lgv_petrol_euro_6c_nox <- road_transport_EFs[34,3]
lgv_petrol_euro_6dTemp_nox <- road_transport_EFs[35,3]
lgv_petrol_euro_6d_nox <- road_transport_EFs[36,3]
lgv_petrol_euro_7_nox <- road_transport_EFs[37,3]
lgv_diesel_euro_1_nox <- road_transport_EFs[38,3]
lgv_diesel_euro_2_nox <- road_transport_EFs[39,3]
lgv_diesel_euro_3_nox <- road_transport_EFs[40,3]
lgv_diesel_euro_4_nox <- road_transport_EFs[41,3]
lgv_diesel_euro_5a_nox <- road_transport_EFs[42,3]
lgv_diesel_euro_5b_nox <- road_transport_EFs[43,3]
lgv_diesel_euro_6b_nox <- road_transport_EFs[44,3]
lgv_diesel_euro_6c_nox <- road_transport_EFs[45,3]
lgv_diesel_euro_6dTemp_nox <- road_transport_EFs[46,3]
lgv_diesel_euro_6d_nox <- road_transport_EFs[47,3]
lgv_diesel_euro_7_nox <- road_transport_EFs[48,3]
lgv_phev_petrol_nox <- road_transport_EFs[49,3]
lgv_phev_diesel_nox <- road_transport_EFs[50,3]
lgv_fuelcell_nox <- road_transport_EFs[51,3]
lgv_bev_nox <- road_transport_EFs[52,3]
hgv_cng_euro_1_nox <- road_transport_EFs[53,3]
hgv_cng_euro_2_nox <- road_transport_EFs[54,3]
hgv_cng_euro_3_nox <- road_transport_EFs[55,3]
hgv_cng_eev_nox <- road_transport_EFs[56,3]
hgv_diesel_euro_1_nox <- road_transport_EFs[57,3]
hgv_diesel_euro_2_nox <- road_transport_EFs[58,3]
hgv_diesel_euro_3_nox <- road_transport_EFs[59,3]
hgv_diesel_euro_4_nox <- road_transport_EFs[60,3]
hgv_diesel_euro_5_nox <- road_transport_EFs[61,3]
hgv_diesel_euro_6_nox <- road_transport_EFs[62,3]
hgv_diesel_euro_7_nox <- road_transport_EFs[63,3]
hgv_phev_diesel_nox <- road_transport_EFs[64,3]
hgv_fuelcell_nox <- road_transport_EFs[65,3]
hgv_bev_nox <- road_transport_EFs[66,3]
bus_cng_euro_1_nox <- road_transport_EFs[67,3]
bus_cng_euro_2_nox <- road_transport_EFs[68,3]
bus_cng_euro_3_nox <- road_transport_EFs[69,3]
bus_cng_eev_nox <- road_transport_EFs[70,3]
bus_diesel_euro_1_nox <- road_transport_EFs[71,3]
bus_diesel_euro_2_nox <- road_transport_EFs[72,3]
bus_diesel_euro_3_nox <- road_transport_EFs[73,3]
bus_diesel_euro_4_nox <- road_transport_EFs[74,3]
bus_diesel_euro_5_nox <- road_transport_EFs[75,3]
bus_diesel_euro_6_nox <- road_transport_EFs[76,3]
bus_diesel_euro_7_nox <- road_transport_EFs[77,3]
bus_phev_diesel_nox <- road_transport_EFs[78,3]
bus_fuelcell_nox <- road_transport_EFs[79,3]
bus_bev_nox <- road_transport_EFs[80,3]
motorcycle_petrol_euro_1_nox <- road_transport_EFs[81,3]
motorcycle_petrol_euro_2_nox <- road_transport_EFs[82,3]
motorcycle_petrol_euro_3_nox <- road_transport_EFs[83,3]
motorcycle_petrol_euro_4_nox <- road_transport_EFs[84,3]
motorcycle_petrol_euro_5_nox <- road_transport_EFs[85,3]
motorcycle_fuelcell_nox <- road_transport_EFs[86,3]
motorcycle_electric_nox <- road_transport_EFs[87,3]

# Exhaust PM2.5 Emission Factors
car_petrol_euro_1_pm25_exhaust <- road_transport_EFs[1,4]
car_petrol_euro_2_pm25_exhaust <- road_transport_EFs[2,4]
car_petrol_euro_3_pm25_exhaust <- road_transport_EFs[3,4]
car_petrol_euro_4_pm25_exhaust <- road_transport_EFs[4,4]
car_petrol_euro_5a_pm25_exhaust <- road_transport_EFs[5,4]
car_petrol_euro_5b_pm25_exhaust <- road_transport_EFs[6,4]
car_petrol_euro_6b_pm25_exhaust <- road_transport_EFs[7,4]
car_petrol_euro_6c_pm25_exhaust <- road_transport_EFs[8,4]
car_petrol_euro_6dTemp_pm25_exhaust <- road_transport_EFs[9,4]
car_petrol_euro_6d_pm25_exhaust <- road_transport_EFs[10,4]
car_petrol_euro_7_pm25_exhaust <- road_transport_EFs[11,4]
car_diesel_euro_1_pm25_exhaust <- road_transport_EFs[12,4]
car_diesel_euro_2_pm25_exhaust <- road_transport_EFs[13,4]
car_diesel_euro_3_pm25_exhaust <- road_transport_EFs[14,4]
car_diesel_euro_4_pm25_exhaust <- road_transport_EFs[15,4]
car_diesel_euro_5a_pm25_exhaust <- road_transport_EFs[16,4]
car_diesel_euro_5b_pm25_exhaust <- road_transport_EFs[17,4]
car_diesel_euro_6b_pm25_exhaust <- road_transport_EFs[18,4]
car_diesel_euro_6c_pm25_exhaust <- road_transport_EFs[19,4]
car_diesel_euro_6dTemp_pm25_exhaust <- road_transport_EFs[20,4]
car_diesel_euro_6d_pm25_exhaust <- road_transport_EFs[21,4]
car_diesel_euro_7_pm25_exhaust <- road_transport_EFs[22,4]
car_phev_petrol_pm25_exhaust <- road_transport_EFs[23,4]
car_phev_diesel_pm25_exhaust <- road_transport_EFs[24,4]
car_fuelcell_pm25_exhaust <- road_transport_EFs[25,4]
car_bev_pm25_exhaust <- road_transport_EFs[26,4]
lgv_petrol_euro_1_pm25_exhaust <- road_transport_EFs[27,4]
lgv_petrol_euro_2_pm25_exhaust <- road_transport_EFs[28,4]
lgv_petrol_euro_3_pm25_exhaust <- road_transport_EFs[29,4]
lgv_petrol_euro_4_pm25_exhaust <- road_transport_EFs[30,4]
lgv_petrol_euro_5a_pm25_exhaust <- road_transport_EFs[31,4]
lgv_petrol_euro_5b_pm25_exhaust <- road_transport_EFs[32,4]
lgv_petrol_euro_6b_pm25_exhaust <- road_transport_EFs[33,4]
lgv_petrol_euro_6c_pm25_exhaust <- road_transport_EFs[34,4]
lgv_petrol_euro_6dTemp_pm25_exhaust <- road_transport_EFs[35,4]
lgv_petrol_euro_6d_pm25_exhaust <- road_transport_EFs[36,4]
lgv_petrol_euro_7_pm25_exhaust <- road_transport_EFs[37,4]
lgv_diesel_euro_1_pm25_exhaust <- road_transport_EFs[38,4]
lgv_diesel_euro_2_pm25_exhaust <- road_transport_EFs[39,4]
lgv_diesel_euro_3_pm25_exhaust <- road_transport_EFs[40,4]
lgv_diesel_euro_4_pm25_exhaust <- road_transport_EFs[41,4]
lgv_diesel_euro_5a_pm25_exhaust <- road_transport_EFs[42,4]
lgv_diesel_euro_5b_pm25_exhaust <- road_transport_EFs[43,4]
lgv_diesel_euro_6b_pm25_exhaust <- road_transport_EFs[44,4]
lgv_diesel_euro_6c_pm25_exhaust <- road_transport_EFs[45,4]
lgv_diesel_euro_6dTemp_pm25_exhaust <- road_transport_EFs[46,4]
lgv_diesel_euro_6d_pm25_exhaust <- road_transport_EFs[47,4]
lgv_diesel_euro_7_pm25_exhaust <- road_transport_EFs[48,4]
lgv_phev_petrol_pm25_exhaust <- road_transport_EFs[49,4]
lgv_phev_diesel_pm25_exhaust <- road_transport_EFs[50,4]
lgv_fuelcell_pm25_exhaust <- road_transport_EFs[51,4]
lgv_bev_pm25_exhaust <- road_transport_EFs[52,4]
hgv_cng_euro_1_pm25_exhaust <- road_transport_EFs[53,4]
hgv_cng_euro_2_pm25_exhaust <- road_transport_EFs[54,4]
hgv_cng_euro_3_pm25_exhaust <- road_transport_EFs[55,4]
hgv_cng_eev_pm25_exhaust <- road_transport_EFs[56,4]
hgv_diesel_euro_1_pm25_exhaust <- road_transport_EFs[57,4]
hgv_diesel_euro_2_pm25_exhaust <- road_transport_EFs[58,4]
hgv_diesel_euro_3_pm25_exhaust <- road_transport_EFs[59,4]
hgv_diesel_euro_4_pm25_exhaust <- road_transport_EFs[60,4]
hgv_diesel_euro_5_pm25_exhaust <- road_transport_EFs[61,4]
hgv_diesel_euro_6_pm25_exhaust <- road_transport_EFs[62,4]
hgv_diesel_euro_7_pm25_exhaust <- road_transport_EFs[63,4]
hgv_phev_diesel_pm25_exhaust <- road_transport_EFs[64,4]
hgv_fuelcell_pm25_exhaust <- road_transport_EFs[65,4]
hgv_bev_pm25_exhaust <- road_transport_EFs[66,4]
bus_cng_euro_1_pm25_exhaust <- road_transport_EFs[67,4]
bus_cng_euro_2_pm25_exhaust <- road_transport_EFs[68,4]
bus_cng_euro_3_pm25_exhaust <- road_transport_EFs[69,4]
bus_cng_eev_pm25_exhaust <- road_transport_EFs[70,4]
bus_diesel_euro_1_pm25_exhaust <- road_transport_EFs[71,4]
bus_diesel_euro_2_pm25_exhaust <- road_transport_EFs[72,4]
bus_diesel_euro_3_pm25_exhaust <- road_transport_EFs[73,4]
bus_diesel_euro_4_pm25_exhaust <- road_transport_EFs[74,4]
bus_diesel_euro_5_pm25_exhaust <- road_transport_EFs[75,4]
bus_diesel_euro_6_pm25_exhaust <- road_transport_EFs[76,4]
bus_diesel_euro_7_pm25_exhaust <- road_transport_EFs[77,4]
bus_phev_diesel_pm25_exhaust <- road_transport_EFs[78,4]
bus_fuelcell_pm25_exhaust <- road_transport_EFs[79,4]
bus_bev_pm25_exhaust <- road_transport_EFs[80,4]
motorcycle_petrol_euro_1_pm25_exhaust <- road_transport_EFs[81,4]
motorcycle_petrol_euro_2_pm25_exhaust <- road_transport_EFs[82,4]
motorcycle_petrol_euro_3_pm25_exhaust <- road_transport_EFs[83,4]
motorcycle_petrol_euro_4_pm25_exhaust <- road_transport_EFs[84,4]
motorcycle_petrol_euro_5_pm25_exhaust <- road_transport_EFs[85,4]
motorcycle_fuelcell_pm25_exhaust <- road_transport_EFs[86,4]
motorcycle_electric_pm25_exhaust <- road_transport_EFs[87,4]

# Tyre PM2.5 Emission Factors
car_petrol_euro_1_pm25_tyre <- road_transport_EFs[1,5]
car_petrol_euro_2_pm25_tyre <- road_transport_EFs[2,5]
car_petrol_euro_3_pm25_tyre <- road_transport_EFs[3,5]
car_petrol_euro_4_pm25_tyre <- road_transport_EFs[4,5]
car_petrol_euro_5a_pm25_tyre <- road_transport_EFs[5,5]
car_petrol_euro_5b_pm25_tyre <- road_transport_EFs[6,5]
car_petrol_euro_6b_pm25_tyre <- road_transport_EFs[7,5]
car_petrol_euro_6c_pm25_tyre <- road_transport_EFs[8,5]
car_petrol_euro_6dTemp_pm25_tyre <- road_transport_EFs[9,5]
car_petrol_euro_6d_pm25_tyre <- road_transport_EFs[10,5]
car_petrol_euro_7_pm25_tyre <- road_transport_EFs[11,5]
car_diesel_euro_1_pm25_tyre <- road_transport_EFs[12,5]
car_diesel_euro_2_pm25_tyre <- road_transport_EFs[13,5]
car_diesel_euro_3_pm25_tyre <- road_transport_EFs[14,5]
car_diesel_euro_4_pm25_tyre <- road_transport_EFs[15,5]
car_diesel_euro_5a_pm25_tyre <- road_transport_EFs[16,5]
car_diesel_euro_5b_pm25_tyre <- road_transport_EFs[17,5]
car_diesel_euro_6b_pm25_tyre <- road_transport_EFs[18,5]
car_diesel_euro_6c_pm25_tyre <- road_transport_EFs[19,5]
car_diesel_euro_6dTemp_pm25_tyre <- road_transport_EFs[20,5]
car_diesel_euro_6d_pm25_tyre <- road_transport_EFs[21,5]
car_diesel_euro_7_pm25_tyre <- road_transport_EFs[22,5]
car_phev_petrol_pm25_tyre <- road_transport_EFs[23,5]
car_phev_diesel_pm25_tyre <- road_transport_EFs[24,5]
car_fuelcell_pm25_tyre <- road_transport_EFs[25,5]
car_bev_pm25_tyre <- road_transport_EFs[26,5]
lgv_petrol_euro_1_pm25_tyre <- road_transport_EFs[27,5]
lgv_petrol_euro_2_pm25_tyre <- road_transport_EFs[28,5]
lgv_petrol_euro_3_pm25_tyre <- road_transport_EFs[29,5]
lgv_petrol_euro_4_pm25_tyre <- road_transport_EFs[30,5]
lgv_petrol_euro_5a_pm25_tyre <- road_transport_EFs[31,5]
lgv_petrol_euro_5b_pm25_tyre <- road_transport_EFs[32,5]
lgv_petrol_euro_6b_pm25_tyre <- road_transport_EFs[33,5]
lgv_petrol_euro_6c_pm25_tyre <- road_transport_EFs[34,5]
lgv_petrol_euro_6dTemp_pm25_tyre <- road_transport_EFs[35,5]
lgv_petrol_euro_6d_pm25_tyre <- road_transport_EFs[36,5]
lgv_petrol_euro_7_pm25_tyre <- road_transport_EFs[37,5]
lgv_diesel_euro_1_pm25_tyre <- road_transport_EFs[38,5]
lgv_diesel_euro_2_pm25_tyre <- road_transport_EFs[39,5]
lgv_diesel_euro_3_pm25_tyre <- road_transport_EFs[40,5]
lgv_diesel_euro_4_pm25_tyre <- road_transport_EFs[41,5]
lgv_diesel_euro_5a_pm25_tyre <- road_transport_EFs[42,5]
lgv_diesel_euro_5b_pm25_tyre <- road_transport_EFs[43,5]
lgv_diesel_euro_6b_pm25_tyre <- road_transport_EFs[44,5]
lgv_diesel_euro_6c_pm25_tyre <- road_transport_EFs[45,5]
lgv_diesel_euro_6dTemp_pm25_tyre <- road_transport_EFs[46,5]
lgv_diesel_euro_6d_pm25_tyre <- road_transport_EFs[47,5]
lgv_diesel_euro_7_pm25_tyre <- road_transport_EFs[48,5]
lgv_phev_petrol_pm25_tyre <- road_transport_EFs[49,5]
lgv_phev_diesel_pm25_tyre <- road_transport_EFs[50,5]
lgv_fuelcell_pm25_tyre <- road_transport_EFs[51,5]
lgv_bev_pm25_tyre <- road_transport_EFs[52,5]
hgv_cng_euro_1_pm25_tyre <- road_transport_EFs[53,5]
hgv_cng_euro_2_pm25_tyre <- road_transport_EFs[54,5]
hgv_cng_euro_3_pm25_tyre <- road_transport_EFs[55,5]
hgv_cng_eev_pm25_tyre <- road_transport_EFs[56,5]
hgv_diesel_euro_1_pm25_tyre <- road_transport_EFs[57,5]
hgv_diesel_euro_2_pm25_tyre <- road_transport_EFs[58,5]
hgv_diesel_euro_3_pm25_tyre <- road_transport_EFs[59,5]
hgv_diesel_euro_4_pm25_tyre <- road_transport_EFs[60,5]
hgv_diesel_euro_5_pm25_tyre <- road_transport_EFs[61,5]
hgv_diesel_euro_6_pm25_tyre <- road_transport_EFs[62,5]
hgv_diesel_euro_7_pm25_tyre <- road_transport_EFs[63,5]
hgv_phev_diesel_pm25_tyre <- road_transport_EFs[64,5]
hgv_fuelcell_pm25_tyre <- road_transport_EFs[65,5]
hgv_bev_pm25_tyre <- road_transport_EFs[66,5]
bus_cng_euro_1_pm25_tyre <- road_transport_EFs[67,5]
bus_cng_euro_2_pm25_tyre <- road_transport_EFs[68,5]
bus_cng_euro_3_pm25_tyre <- road_transport_EFs[69,5]
bus_cng_eev_pm25_tyre <- road_transport_EFs[70,5]
bus_diesel_euro_1_pm25_tyre <- road_transport_EFs[71,5]
bus_diesel_euro_2_pm25_tyre <- road_transport_EFs[72,5]
bus_diesel_euro_3_pm25_tyre <- road_transport_EFs[73,5]
bus_diesel_euro_4_pm25_tyre <- road_transport_EFs[74,5]
bus_diesel_euro_5_pm25_tyre <- road_transport_EFs[75,5]
bus_diesel_euro_6_pm25_tyre <- road_transport_EFs[76,5]
bus_diesel_euro_7_pm25_tyre <- road_transport_EFs[77,5]
bus_phev_diesel_pm25_tyre <- road_transport_EFs[78,5]
bus_fuelcell_pm25_tyre <- road_transport_EFs[79,5]
bus_bev_pm25_tyre <- road_transport_EFs[80,5]
motorcycle_petrol_euro_1_pm25_tyre <- road_transport_EFs[81,5]
motorcycle_petrol_euro_2_pm25_tyre <- road_transport_EFs[82,5]
motorcycle_petrol_euro_3_pm25_tyre <- road_transport_EFs[83,5]
motorcycle_petrol_euro_4_pm25_tyre <- road_transport_EFs[84,5]
motorcycle_petrol_euro_5_pm25_tyre <- road_transport_EFs[85,5]
motorcycle_fuelcell_pm25_tyre <- road_transport_EFs[86,5]
motorcycle_electric_pm25_tyre <- road_transport_EFs[87,5]

# Brake PM2.5 Emission Factors
car_petrol_euro_1_pm25_brake <- road_transport_EFs[1,6]
car_petrol_euro_2_pm25_brake <- road_transport_EFs[2,6]
car_petrol_euro_3_pm25_brake <- road_transport_EFs[3,6]
car_petrol_euro_4_pm25_brake <- road_transport_EFs[4,6]
car_petrol_euro_5a_pm25_brake <- road_transport_EFs[5,6]
car_petrol_euro_5b_pm25_brake <- road_transport_EFs[6,6]
car_petrol_euro_6b_pm25_brake <- road_transport_EFs[7,6]
car_petrol_euro_6c_pm25_brake <- road_transport_EFs[8,6]
car_petrol_euro_6dTemp_pm25_brake <- road_transport_EFs[9,6]
car_petrol_euro_6d_pm25_brake <- road_transport_EFs[10,6]
car_petrol_euro_7_pm25_brake <- road_transport_EFs[11,6]
car_diesel_euro_1_pm25_brake <- road_transport_EFs[12,6]
car_diesel_euro_2_pm25_brake <- road_transport_EFs[13,6]
car_diesel_euro_3_pm25_brake <- road_transport_EFs[14,6]
car_diesel_euro_4_pm25_brake <- road_transport_EFs[15,6]
car_diesel_euro_5a_pm25_brake <- road_transport_EFs[16,6]
car_diesel_euro_5b_pm25_brake <- road_transport_EFs[17,6]
car_diesel_euro_6b_pm25_brake <- road_transport_EFs[18,6]
car_diesel_euro_6c_pm25_brake <- road_transport_EFs[19,6]
car_diesel_euro_6dTemp_pm25_brake <- road_transport_EFs[20,6]
car_diesel_euro_6d_pm25_brake <- road_transport_EFs[21,6]
car_diesel_euro_7_pm25_brake <- road_transport_EFs[22,6]
car_phev_petrol_pm25_brake <- road_transport_EFs[23,6]
car_phev_diesel_pm25_brake <- road_transport_EFs[24,6]
car_fuelcell_pm25_brake <- road_transport_EFs[25,6]
car_bev_pm25_brake <- road_transport_EFs[26,6]
lgv_petrol_euro_1_pm25_brake <- road_transport_EFs[27,6]
lgv_petrol_euro_2_pm25_brake <- road_transport_EFs[28,6]
lgv_petrol_euro_3_pm25_brake <- road_transport_EFs[29,6]
lgv_petrol_euro_4_pm25_brake <- road_transport_EFs[30,6]
lgv_petrol_euro_5a_pm25_brake <- road_transport_EFs[31,6]
lgv_petrol_euro_5b_pm25_brake <- road_transport_EFs[32,6]
lgv_petrol_euro_6b_pm25_brake <- road_transport_EFs[33,6]
lgv_petrol_euro_6c_pm25_brake <- road_transport_EFs[34,6]
lgv_petrol_euro_6dTemp_pm25_brake <- road_transport_EFs[35,6]
lgv_petrol_euro_6d_pm25_brake <- road_transport_EFs[36,6]
lgv_petrol_euro_7_pm25_brake <- road_transport_EFs[37,6]
lgv_diesel_euro_1_pm25_brake <- road_transport_EFs[38,6]
lgv_diesel_euro_2_pm25_brake <- road_transport_EFs[39,6]
lgv_diesel_euro_3_pm25_brake <- road_transport_EFs[40,6]
lgv_diesel_euro_4_pm25_brake <- road_transport_EFs[41,6]
lgv_diesel_euro_5a_pm25_brake <- road_transport_EFs[42,6]
lgv_diesel_euro_5b_pm25_brake <- road_transport_EFs[43,6]
lgv_diesel_euro_6b_pm25_brake <- road_transport_EFs[44,6]
lgv_diesel_euro_6c_pm25_brake <- road_transport_EFs[45,6]
lgv_diesel_euro_6dTemp_pm25_brake <- road_transport_EFs[46,6]
lgv_diesel_euro_6d_pm25_brake <- road_transport_EFs[47,6]
lgv_diesel_euro_7_pm25_brake <- road_transport_EFs[48,6]
lgv_phev_petrol_pm25_brake <- road_transport_EFs[49,6]
lgv_phev_diesel_pm25_brake <- road_transport_EFs[50,6]
lgv_fuelcell_pm25_brake <- road_transport_EFs[51,6]
lgv_bev_pm25_brake <- road_transport_EFs[52,6]
hgv_cng_euro_1_pm25_brake <- road_transport_EFs[53,6]
hgv_cng_euro_2_pm25_brake <- road_transport_EFs[54,6]
hgv_cng_euro_3_pm25_brake <- road_transport_EFs[55,6]
hgv_cng_eev_pm25_brake <- road_transport_EFs[56,6]
hgv_diesel_euro_1_pm25_brake <- road_transport_EFs[57,6]
hgv_diesel_euro_2_pm25_brake <- road_transport_EFs[58,6]
hgv_diesel_euro_3_pm25_brake <- road_transport_EFs[59,6]
hgv_diesel_euro_4_pm25_brake <- road_transport_EFs[60,6]
hgv_diesel_euro_5_pm25_brake <- road_transport_EFs[61,6]
hgv_diesel_euro_6_pm25_brake <- road_transport_EFs[62,6]
hgv_diesel_euro_7_pm25_brake <- road_transport_EFs[63,6]
hgv_phev_diesel_pm25_brake <- road_transport_EFs[64,6]
hgv_fuelcell_pm25_brake <- road_transport_EFs[65,6]
hgv_bev_pm25_brake <- road_transport_EFs[66,6]
bus_cng_euro_1_pm25_brake <- road_transport_EFs[67,6]
bus_cng_euro_2_pm25_brake <- road_transport_EFs[68,6]
bus_cng_euro_3_pm25_brake <- road_transport_EFs[69,6]
bus_cng_eev_pm25_brake <- road_transport_EFs[70,6]
bus_diesel_euro_1_pm25_brake <- road_transport_EFs[71,6]
bus_diesel_euro_2_pm25_brake <- road_transport_EFs[72,6]
bus_diesel_euro_3_pm25_brake <- road_transport_EFs[73,6]
bus_diesel_euro_4_pm25_brake <- road_transport_EFs[74,6]
bus_diesel_euro_5_pm25_brake <- road_transport_EFs[75,6]
bus_diesel_euro_6_pm25_brake <- road_transport_EFs[76,6]
bus_diesel_euro_7_pm25_brake <- road_transport_EFs[77,6]
bus_phev_diesel_pm25_brake <- road_transport_EFs[78,6]
bus_fuelcell_pm25_brake <- road_transport_EFs[79,6]
bus_bev_pm25_brake <- road_transport_EFs[80,6]
motorcycle_petrol_euro_1_pm25_brake <- road_transport_EFs[81,6]
motorcycle_petrol_euro_2_pm25_brake <- road_transport_EFs[82,6]
motorcycle_petrol_euro_3_pm25_brake <- road_transport_EFs[83,6]
motorcycle_petrol_euro_4_pm25_brake <- road_transport_EFs[84,6]
motorcycle_petrol_euro_5_pm25_brake <- road_transport_EFs[85,6]
motorcycle_fuelcell_pm25_brake <- road_transport_EFs[86,6]
motorcycle_electric_pm25_brake <- road_transport_EFs[87,6]

# Road PM2.5 Emission Factors
car_petrol_euro_1_pm25_road <- road_transport_EFs[1,7]
car_petrol_euro_2_pm25_road <- road_transport_EFs[2,7]
car_petrol_euro_3_pm25_road <- road_transport_EFs[3,7]
car_petrol_euro_4_pm25_road <- road_transport_EFs[4,7]
car_petrol_euro_5a_pm25_road <- road_transport_EFs[5,7]
car_petrol_euro_5b_pm25_road <- road_transport_EFs[6,7]
car_petrol_euro_6b_pm25_road <- road_transport_EFs[7,7]
car_petrol_euro_6c_pm25_road <- road_transport_EFs[8,7]
car_petrol_euro_6dTemp_pm25_road <- road_transport_EFs[9,7]
car_petrol_euro_6d_pm25_road <- road_transport_EFs[10,7]
car_petrol_euro_7_pm25_road <- road_transport_EFs[11,7]
car_diesel_euro_1_pm25_road <- road_transport_EFs[12,7]
car_diesel_euro_2_pm25_road <- road_transport_EFs[13,7]
car_diesel_euro_3_pm25_road <- road_transport_EFs[14,7]
car_diesel_euro_4_pm25_road <- road_transport_EFs[15,7]
car_diesel_euro_5a_pm25_road <- road_transport_EFs[16,7]
car_diesel_euro_5b_pm25_road <- road_transport_EFs[17,7]
car_diesel_euro_6b_pm25_road <- road_transport_EFs[18,7]
car_diesel_euro_6c_pm25_road <- road_transport_EFs[19,7]
car_diesel_euro_6dTemp_pm25_road <- road_transport_EFs[20,7]
car_diesel_euro_6d_pm25_road <- road_transport_EFs[21,7]
car_diesel_euro_7_pm25_road <- road_transport_EFs[22,7]
car_phev_petrol_pm25_road <- road_transport_EFs[23,7]
car_phev_diesel_pm25_road <- road_transport_EFs[24,7]
car_fuelcell_pm25_road <- road_transport_EFs[25,7]
car_bev_pm25_road <- road_transport_EFs[26,7]
lgv_petrol_euro_1_pm25_road <- road_transport_EFs[27,7]
lgv_petrol_euro_2_pm25_road <- road_transport_EFs[28,7]
lgv_petrol_euro_3_pm25_road <- road_transport_EFs[29,7]
lgv_petrol_euro_4_pm25_road <- road_transport_EFs[30,7]
lgv_petrol_euro_5a_pm25_road <- road_transport_EFs[31,7]
lgv_petrol_euro_5b_pm25_road <- road_transport_EFs[32,7]
lgv_petrol_euro_6b_pm25_road <- road_transport_EFs[33,7]
lgv_petrol_euro_6c_pm25_road <- road_transport_EFs[34,7]
lgv_petrol_euro_6dTemp_pm25_road <- road_transport_EFs[35,7]
lgv_petrol_euro_6d_pm25_road <- road_transport_EFs[36,7]
lgv_petrol_euro_7_pm25_road <- road_transport_EFs[37,7]
lgv_diesel_euro_1_pm25_road <- road_transport_EFs[38,7]
lgv_diesel_euro_2_pm25_road <- road_transport_EFs[39,7]
lgv_diesel_euro_3_pm25_road <- road_transport_EFs[40,7]
lgv_diesel_euro_4_pm25_road <- road_transport_EFs[41,7]
lgv_diesel_euro_5a_pm25_road <- road_transport_EFs[42,7]
lgv_diesel_euro_5b_pm25_road <- road_transport_EFs[43,7]
lgv_diesel_euro_6b_pm25_road <- road_transport_EFs[44,7]
lgv_diesel_euro_6c_pm25_road <- road_transport_EFs[45,7]
lgv_diesel_euro_6dTemp_pm25_road <- road_transport_EFs[46,7]
lgv_diesel_euro_6d_pm25_road <- road_transport_EFs[47,7]
lgv_diesel_euro_7_pm25_road <- road_transport_EFs[48,7]
lgv_phev_petrol_pm25_road <- road_transport_EFs[49,7]
lgv_phev_diesel_pm25_road <- road_transport_EFs[50,7]
lgv_fuelcell_pm25_road <- road_transport_EFs[51,7]
lgv_bev_pm25_road <- road_transport_EFs[52,7]
hgv_cng_euro_1_pm25_road <- road_transport_EFs[53,7]
hgv_cng_euro_2_pm25_road <- road_transport_EFs[54,7]
hgv_cng_euro_3_pm25_road <- road_transport_EFs[55,7]
hgv_cng_eev_pm25_road <- road_transport_EFs[56,7]
hgv_diesel_euro_1_pm25_road <- road_transport_EFs[57,7]
hgv_diesel_euro_2_pm25_road <- road_transport_EFs[58,7]
hgv_diesel_euro_3_pm25_road <- road_transport_EFs[59,7]
hgv_diesel_euro_4_pm25_road <- road_transport_EFs[60,7]
hgv_diesel_euro_5_pm25_road <- road_transport_EFs[61,7]
hgv_diesel_euro_6_pm25_road <- road_transport_EFs[62,7]
hgv_diesel_euro_7_pm25_road <- road_transport_EFs[63,7]
hgv_phev_diesel_pm25_road <- road_transport_EFs[64,7]
hgv_fuelcell_pm25_road <- road_transport_EFs[65,7]
hgv_bev_pm25_road <- road_transport_EFs[66,7]
bus_cng_euro_1_pm25_road <- road_transport_EFs[67,7]
bus_cng_euro_2_pm25_road <- road_transport_EFs[68,7]
bus_cng_euro_3_pm25_road <- road_transport_EFs[69,7]
bus_cng_eev_pm25_road <- road_transport_EFs[70,7]
bus_diesel_euro_1_pm25_road <- road_transport_EFs[71,7]
bus_diesel_euro_2_pm25_road <- road_transport_EFs[72,7]
bus_diesel_euro_3_pm25_road <- road_transport_EFs[73,7]
bus_diesel_euro_4_pm25_road <- road_transport_EFs[74,7]
bus_diesel_euro_5_pm25_road <- road_transport_EFs[75,7]
bus_diesel_euro_6_pm25_road <- road_transport_EFs[76,7]
bus_diesel_euro_7_pm25_road <- road_transport_EFs[77,7]
bus_phev_diesel_pm25_road <- road_transport_EFs[78,7]
bus_fuelcell_pm25_road <- road_transport_EFs[79,7]
bus_bev_pm25_road <- road_transport_EFs[80,7]
motorcycle_petrol_euro_1_pm25_road <- road_transport_EFs[81,7]
motorcycle_petrol_euro_2_pm25_road <- road_transport_EFs[82,7]
motorcycle_petrol_euro_3_pm25_road <- road_transport_EFs[83,7]
motorcycle_petrol_euro_4_pm25_road <- road_transport_EFs[84,7]
motorcycle_petrol_euro_5_pm25_road <- road_transport_EFs[85,7]
motorcycle_fuelcell_pm25_road <- road_transport_EFs[86,7]
motorcycle_electric_pm25_road <- road_transport_EFs[87,7]


# SO2 Emission Factors
car_petrol_euro_1_so2 <- road_transport_EFs[1,8]
car_petrol_euro_2_so2 <- road_transport_EFs[2,8]
car_petrol_euro_3_so2 <- road_transport_EFs[3,8]
car_petrol_euro_4_so2 <- road_transport_EFs[4,8]
car_petrol_euro_5a_so2 <- road_transport_EFs[5,8]
car_petrol_euro_5b_so2 <- road_transport_EFs[6,8]
car_petrol_euro_6b_so2 <- road_transport_EFs[7,8]
car_petrol_euro_6c_so2 <- road_transport_EFs[8,8]
car_petrol_euro_6dTemp_so2 <- road_transport_EFs[9,8]
car_petrol_euro_6d_so2 <- road_transport_EFs[10,8]
car_petrol_euro_7_so2 <- road_transport_EFs[11,8]
car_diesel_euro_1_so2 <- road_transport_EFs[12,8]
car_diesel_euro_2_so2 <- road_transport_EFs[13,8]
car_diesel_euro_3_so2 <- road_transport_EFs[14,8]
car_diesel_euro_4_so2 <- road_transport_EFs[15,8]
car_diesel_euro_5a_so2 <- road_transport_EFs[16,8]
car_diesel_euro_5b_so2 <- road_transport_EFs[17,8]
car_diesel_euro_6b_so2 <- road_transport_EFs[18,8]
car_diesel_euro_6c_so2 <- road_transport_EFs[19,8]
car_diesel_euro_6dTemp_so2 <- road_transport_EFs[20,8]
car_diesel_euro_6d_so2 <- road_transport_EFs[21,8]
car_diesel_euro_7_so2 <- road_transport_EFs[22,8]
car_phev_petrol_so2 <- road_transport_EFs[23,8]
car_phev_diesel_so2 <- road_transport_EFs[24,8]
car_fuelcell_so2 <- road_transport_EFs[25,8]
car_bev_so2 <- road_transport_EFs[26,8]
lgv_petrol_euro_1_so2 <- road_transport_EFs[27,8]
lgv_petrol_euro_2_so2 <- road_transport_EFs[28,8]
lgv_petrol_euro_3_so2 <- road_transport_EFs[29,8]
lgv_petrol_euro_4_so2 <- road_transport_EFs[30,8]
lgv_petrol_euro_5a_so2 <- road_transport_EFs[31,8]
lgv_petrol_euro_5b_so2 <- road_transport_EFs[32,8]
lgv_petrol_euro_6b_so2 <- road_transport_EFs[33,8]
lgv_petrol_euro_6c_so2 <- road_transport_EFs[34,8]
lgv_petrol_euro_6dTemp_so2 <- road_transport_EFs[35,8]
lgv_petrol_euro_6d_so2 <- road_transport_EFs[36,8]
lgv_petrol_euro_7_so2 <- road_transport_EFs[37,8]
lgv_diesel_euro_1_so2 <- road_transport_EFs[38,8]
lgv_diesel_euro_2_so2 <- road_transport_EFs[39,8]
lgv_diesel_euro_3_so2 <- road_transport_EFs[40,8]
lgv_diesel_euro_4_so2 <- road_transport_EFs[41,8]
lgv_diesel_euro_5a_so2 <- road_transport_EFs[42,8]
lgv_diesel_euro_5b_so2 <- road_transport_EFs[43,8]
lgv_diesel_euro_6b_so2 <- road_transport_EFs[44,8]
lgv_diesel_euro_6c_so2 <- road_transport_EFs[45,8]
lgv_diesel_euro_6dTemp_so2 <- road_transport_EFs[46,8]
lgv_diesel_euro_6d_so2 <- road_transport_EFs[47,8]
lgv_diesel_euro_7_so2 <- road_transport_EFs[48,8]
lgv_phev_petrol_so2 <- road_transport_EFs[49,8]
lgv_phev_diesel_so2 <- road_transport_EFs[50,8]
lgv_fuelcell_so2 <- road_transport_EFs[51,8]
lgv_bev_so2 <- road_transport_EFs[52,8]
hgv_cng_euro_1_so2 <- road_transport_EFs[53,8]
hgv_cng_euro_2_so2 <- road_transport_EFs[54,8]
hgv_cng_euro_3_so2 <- road_transport_EFs[55,8]
hgv_cng_eev_so2 <- road_transport_EFs[56,8]
hgv_diesel_euro_1_so2 <- road_transport_EFs[57,8]
hgv_diesel_euro_2_so2 <- road_transport_EFs[58,8]
hgv_diesel_euro_3_so2 <- road_transport_EFs[59,8]
hgv_diesel_euro_4_so2 <- road_transport_EFs[60,8]
hgv_diesel_euro_5_so2 <- road_transport_EFs[61,8]
hgv_diesel_euro_6_so2 <- road_transport_EFs[62,8]
hgv_diesel_euro_7_so2 <- road_transport_EFs[63,8]
hgv_phev_diesel_so2 <- road_transport_EFs[64,8]
hgv_fuelcell_so2 <- road_transport_EFs[65,8]
hgv_bev_so2 <- road_transport_EFs[66,8]
bus_cng_euro_1_so2 <- road_transport_EFs[67,8]
bus_cng_euro_2_so2 <- road_transport_EFs[68,8]
bus_cng_euro_3_so2 <- road_transport_EFs[69,8]
bus_cng_eev_so2 <- road_transport_EFs[70,8]
bus_diesel_euro_1_so2 <- road_transport_EFs[71,8]
bus_diesel_euro_2_so2 <- road_transport_EFs[72,8]
bus_diesel_euro_3_so2 <- road_transport_EFs[73,8]
bus_diesel_euro_4_so2 <- road_transport_EFs[74,8]
bus_diesel_euro_5_so2 <- road_transport_EFs[75,8]
bus_diesel_euro_6_so2 <- road_transport_EFs[76,8]
bus_diesel_euro_7_so2 <- road_transport_EFs[77,8]
bus_phev_diesel_so2 <- road_transport_EFs[78,8]
bus_fuelcell_so2 <- road_transport_EFs[79,8]
bus_bev_so2 <- road_transport_EFs[80,8]
motorcycle_petrol_euro_1_so2 <- road_transport_EFs[81,8]
motorcycle_petrol_euro_2_so2 <- road_transport_EFs[82,8]
motorcycle_petrol_euro_3_so2 <- road_transport_EFs[83,8]
motorcycle_petrol_euro_4_so2 <- road_transport_EFs[84,8]
motorcycle_petrol_euro_5_so2 <- road_transport_EFs[85,8]
motorcycle_fuelcell_so2 <- road_transport_EFs[86,8]
motorcycle_electric_so2 <- road_transport_EFs[87,8]

# NH3 Emission Factors
car_petrol_euro_1_nh3 <- road_transport_EFs[1,9]
car_petrol_euro_2_nh3 <- road_transport_EFs[2,9]
car_petrol_euro_3_nh3 <- road_transport_EFs[3,9]
car_petrol_euro_4_nh3 <- road_transport_EFs[4,9]
car_petrol_euro_5a_nh3 <- road_transport_EFs[5,9]
car_petrol_euro_5b_nh3 <- road_transport_EFs[6,9]
car_petrol_euro_6b_nh3 <- road_transport_EFs[7,9]
car_petrol_euro_6c_nh3 <- road_transport_EFs[8,9]
car_petrol_euro_6dTemp_nh3 <- road_transport_EFs[9,9]
car_petrol_euro_6d_nh3 <- road_transport_EFs[10,9]
car_petrol_euro_7_nh3 <- road_transport_EFs[11,9]
car_diesel_euro_1_nh3 <- road_transport_EFs[12,9]
car_diesel_euro_2_nh3 <- road_transport_EFs[13,9]
car_diesel_euro_3_nh3 <- road_transport_EFs[14,9]
car_diesel_euro_4_nh3 <- road_transport_EFs[15,9]
car_diesel_euro_5a_nh3 <- road_transport_EFs[16,9]
car_diesel_euro_5b_nh3 <- road_transport_EFs[17,9]
car_diesel_euro_6b_nh3 <- road_transport_EFs[18,9]
car_diesel_euro_6c_nh3 <- road_transport_EFs[19,9]
car_diesel_euro_6dTemp_nh3 <- road_transport_EFs[20,9]
car_diesel_euro_6d_nh3 <- road_transport_EFs[21,9]
car_diesel_euro_7_nh3 <- road_transport_EFs[22,9]
car_phev_petrol_nh3 <- road_transport_EFs[23,9]
car_phev_diesel_nh3 <- road_transport_EFs[24,9]
car_fuelcell_nh3 <- road_transport_EFs[25,9]
car_bev_nh3 <- road_transport_EFs[26,9]
lgv_petrol_euro_1_nh3 <- road_transport_EFs[27,9]
lgv_petrol_euro_2_nh3 <- road_transport_EFs[28,9]
lgv_petrol_euro_3_nh3 <- road_transport_EFs[29,9]
lgv_petrol_euro_4_nh3 <- road_transport_EFs[30,9]
lgv_petrol_euro_5a_nh3 <- road_transport_EFs[31,9]
lgv_petrol_euro_5b_nh3 <- road_transport_EFs[32,9]
lgv_petrol_euro_6b_nh3 <- road_transport_EFs[33,9]
lgv_petrol_euro_6c_nh3 <- road_transport_EFs[34,9]
lgv_petrol_euro_6dTemp_nh3 <- road_transport_EFs[35,9]
lgv_petrol_euro_6d_nh3 <- road_transport_EFs[36,9]
lgv_petrol_euro_7_nh3 <- road_transport_EFs[37,9]
lgv_diesel_euro_1_nh3 <- road_transport_EFs[38,9]
lgv_diesel_euro_2_nh3 <- road_transport_EFs[39,9]
lgv_diesel_euro_3_nh3 <- road_transport_EFs[40,9]
lgv_diesel_euro_4_nh3 <- road_transport_EFs[41,9]
lgv_diesel_euro_5a_nh3 <- road_transport_EFs[42,9]
lgv_diesel_euro_5b_nh3 <- road_transport_EFs[43,9]
lgv_diesel_euro_6b_nh3 <- road_transport_EFs[44,9]
lgv_diesel_euro_6c_nh3 <- road_transport_EFs[45,9]
lgv_diesel_euro_6dTemp_nh3 <- road_transport_EFs[46,9]
lgv_diesel_euro_6d_nh3 <- road_transport_EFs[47,9]
lgv_diesel_euro_7_nh3 <- road_transport_EFs[48,9]
lgv_phev_petrol_nh3 <- road_transport_EFs[49,9]
lgv_phev_diesel_nh3 <- road_transport_EFs[50,9]
lgv_fuelcell_nh3 <- road_transport_EFs[51,9]
lgv_bev_nh3 <- road_transport_EFs[52,9]
hgv_cng_euro_1_nh3 <- road_transport_EFs[53,9]
hgv_cng_euro_2_nh3 <- road_transport_EFs[54,9]
hgv_cng_euro_3_nh3 <- road_transport_EFs[55,9]
hgv_cng_eev_nh3 <- road_transport_EFs[56,9]
hgv_diesel_euro_1_nh3 <- road_transport_EFs[57,9]
hgv_diesel_euro_2_nh3 <- road_transport_EFs[58,9]
hgv_diesel_euro_3_nh3 <- road_transport_EFs[59,9]
hgv_diesel_euro_4_nh3 <- road_transport_EFs[60,9]
hgv_diesel_euro_5_nh3 <- road_transport_EFs[61,9]
hgv_diesel_euro_6_nh3 <- road_transport_EFs[62,9]
hgv_diesel_euro_7_nh3 <- road_transport_EFs[63,9]
hgv_phev_diesel_nh3 <- road_transport_EFs[64,9]
hgv_fuelcell_nh3 <- road_transport_EFs[65,9]
hgv_bev_nh3 <- road_transport_EFs[66,9]
bus_cng_euro_1_nh3 <- road_transport_EFs[67,9]
bus_cng_euro_2_nh3 <- road_transport_EFs[68,9]
bus_cng_euro_3_nh3 <- road_transport_EFs[69,9]
bus_cng_eev_nh3 <- road_transport_EFs[70,9]
bus_diesel_euro_1_nh3 <- road_transport_EFs[71,9]
bus_diesel_euro_2_nh3 <- road_transport_EFs[72,9]
bus_diesel_euro_3_nh3 <- road_transport_EFs[73,9]
bus_diesel_euro_4_nh3 <- road_transport_EFs[74,9]
bus_diesel_euro_5_nh3 <- road_transport_EFs[75,9]
bus_diesel_euro_6_nh3 <- road_transport_EFs[76,9]
bus_diesel_euro_7_nh3 <- road_transport_EFs[77,9]
bus_phev_diesel_nh3 <- road_transport_EFs[78,9]
bus_fuelcell_nh3 <- road_transport_EFs[79,9]
bus_bev_nh3 <- road_transport_EFs[80,9]
motorcycle_petrol_euro_1_nh3 <- road_transport_EFs[81,9]
motorcycle_petrol_euro_2_nh3 <- road_transport_EFs[82,9]
motorcycle_petrol_euro_3_nh3 <- road_transport_EFs[83,9]
motorcycle_petrol_euro_4_nh3 <- road_transport_EFs[84,9]
motorcycle_petrol_euro_5_nh3 <- road_transport_EFs[85,9]
motorcycle_fuelcell_nh3 <- road_transport_EFs[86,9]
motorcycle_electric_nh3 <- road_transport_EFs[87,9]

# Road Transport Impact Factors
car_petrol_IF_nh3 <- impact_factors[46,3]
car_petrol_IF_so2 <- impact_factors[46,4]
car_petrol_IF_snox <- impact_factors[46,5]
car_petrol_IF_pm25 <- impact_factors[46,6]
car_petrol_IF_nox <- impact_factors[46,7]
car_diesel_IF_nh3 <- impact_factors[47,3]
car_diesel_IF_so2 <- impact_factors[47,4]
car_diesel_IF_snox <- impact_factors[47,5]
car_diesel_IF_pm25 <- impact_factors[47,6]
car_diesel_IF_nox <- impact_factors[47,7]
lgv_IF_nh3 <- impact_factors[48,3]
lgv_IF_so2 <- impact_factors[48,4]
lgv_IF_snox <- impact_factors[48,5]
lgv_IF_pm25 <- impact_factors[48,6]
lgv_IF_nox <- impact_factors[48,7]
hgv_IF_nh3 <- impact_factors[49,3]
hgv_IF_so2 <- impact_factors[49,4]
hgv_IF_snox <- impact_factors[49,5]
hgv_IF_pm25 <- impact_factors[49,6]
hgv_IF_nox <- impact_factors[49,7]
bus_IF_nh3 <- impact_factors[50,3]
bus_IF_so2 <- impact_factors[50,4]
bus_IF_snox <- impact_factors[50,5]
bus_IF_pm25 <- impact_factors[50,6]
bus_IF_nox <- impact_factors[50,7]


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

# Road Transport Euro Splits

car_petrol_euro_1_split <- road_transport_euro_split[1,2]
car_petrol_euro_2_split <- road_transport_euro_split[2,2]
car_petrol_euro_3_split <- road_transport_euro_split[3,2]
car_petrol_euro_4_split <- road_transport_euro_split[4,2]
car_petrol_euro_5a_split <- road_transport_euro_split[5,2]
car_petrol_euro_5b_split <- road_transport_euro_split[6,2]
car_petrol_euro_6b_split <- road_transport_euro_split[7,2]
car_petrol_euro_6c_split <- road_transport_euro_split[8,2]
car_petrol_euro_6dTemp_split <- road_transport_euro_split[9,2]
car_petrol_euro_6d_split <- road_transport_euro_split[10,2]
car_petrol_euro_7_split <- road_transport_euro_split[11,2]
car_diesel_euro_1_split <- road_transport_euro_split[12,2]
car_diesel_euro_2_split <- road_transport_euro_split[13,2]
car_diesel_euro_3_split <- road_transport_euro_split[14,2]
car_diesel_euro_4_split <- road_transport_euro_split[15,2]
car_diesel_euro_5a_split <- road_transport_euro_split[16,2]
car_diesel_euro_5b_split <- road_transport_euro_split[17,2]
car_diesel_euro_6b_split <- road_transport_euro_split[18,2]
car_diesel_euro_6c_split <- road_transport_euro_split[19,2]
car_diesel_euro_6dTemp_split <- road_transport_euro_split[20,2]
car_diesel_euro_6d_split <- road_transport_euro_split[21,2]
car_diesel_euro_7_split <- road_transport_euro_split[22,2]
car_phev_petrol_split <- road_transport_euro_split[23,2]
car_phev_diesel_split <- road_transport_euro_split[24,2]
car_fuelcell_split <- road_transport_euro_split[25,2]
car_bev_split <- road_transport_euro_split[26,2]
lgv_petrol_euro_1_split <- road_transport_euro_split[27,2]
lgv_petrol_euro_2_split <- road_transport_euro_split[28,2]
lgv_petrol_euro_3_split <- road_transport_euro_split[29,2]
lgv_petrol_euro_4_split <- road_transport_euro_split[30,2]
lgv_petrol_euro_5a_split <- road_transport_euro_split[31,2]
lgv_petrol_euro_5b_split <- road_transport_euro_split[32,2]
lgv_petrol_euro_6b_split <- road_transport_euro_split[33,2]
lgv_petrol_euro_6c_split <- road_transport_euro_split[34,2]
lgv_petrol_euro_6dTemp_split <- road_transport_euro_split[35,2]
lgv_petrol_euro_6d_split <- road_transport_euro_split[36,2]
lgv_petrol_euro_7_split <- road_transport_euro_split[37,2]
lgv_diesel_euro_1_split <- road_transport_euro_split[38,2]
lgv_diesel_euro_2_split <- road_transport_euro_split[39,2]
lgv_diesel_euro_3_split <- road_transport_euro_split[40,2]
lgv_diesel_euro_4_split <- road_transport_euro_split[41,2]
lgv_diesel_euro_5a_split <- road_transport_euro_split[42,2]
lgv_diesel_euro_5b_split <- road_transport_euro_split[43,2]
lgv_diesel_euro_6b_split <- road_transport_euro_split[44,2]
lgv_diesel_euro_6c_split <- road_transport_euro_split[45,2]
lgv_diesel_euro_6dTemp_split <- road_transport_euro_split[46,2]
lgv_diesel_euro_6d_split <- road_transport_euro_split[47,2]
lgv_diesel_euro_7_split <- road_transport_euro_split[48,2]
lgv_phev_petrol_split <- road_transport_euro_split[49,2]
lgv_phev_diesel_split <- road_transport_euro_split[50,2]
lgv_fuelcell_split <- road_transport_euro_split[51,2]
lgv_bev_split <- road_transport_euro_split[52,2]
hgv_cng_euro_1_split <- road_transport_euro_split[53,2]
hgv_cng_euro_2_split <- road_transport_euro_split[54,2]
hgv_cng_euro_3_split <- road_transport_euro_split[55,2]
hgv_cng_eev_split <- road_transport_euro_split[56,2]
hgv_diesel_euro_1_split <- road_transport_euro_split[57,2]
hgv_diesel_euro_2_split <- road_transport_euro_split[58,2]
hgv_diesel_euro_3_split <- road_transport_euro_split[59,2]
hgv_diesel_euro_4_split <- road_transport_euro_split[60,2]
hgv_diesel_euro_5_split <- road_transport_euro_split[61,2]
hgv_diesel_euro_6_split <- road_transport_euro_split[62,2]
hgv_diesel_euro_7_split <- road_transport_euro_split[63,2]
hgv_phev_diesel_split <- road_transport_euro_split[64,2]
hgv_fuelcell_split <- road_transport_euro_split[65,2]
hgv_bev_split <- road_transport_euro_split[66,2]
bus_cng_euro_1_split <- road_transport_euro_split[67,2]
bus_cng_euro_2_split <- road_transport_euro_split[68,2]
bus_cng_euro_3_split <- road_transport_euro_split[69,2]
bus_cng_eev_split <- road_transport_euro_split[70,2]
bus_diesel_euro_1_split <- road_transport_euro_split[71,2]
bus_diesel_euro_2_split <- road_transport_euro_split[72,2]
bus_diesel_euro_3_split <- road_transport_euro_split[73,2]
bus_diesel_euro_4_split <- road_transport_euro_split[74,2]
bus_diesel_euro_5_split <- road_transport_euro_split[75,2]
bus_diesel_euro_6_split <- road_transport_euro_split[76,2]
bus_diesel_euro_7_split <- road_transport_euro_split[77,2]
bus_phev_diesel_split <- road_transport_euro_split[78,2]
bus_fuelcell_split <- road_transport_euro_split[79,2]
bus_bev_split <- road_transport_euro_split[80,2]
motorcycle_petrol_euro_1_split <- road_transport_euro_split[81,2]
motorcycle_petrol_euro_2_split <- road_transport_euro_split[82,2]
motorcycle_petrol_euro_3_split <- road_transport_euro_split[83,2]
motorcycle_petrol_euro_4_split <- road_transport_euro_split[84,2]
motorcycle_petrol_euro_5_split <- road_transport_euro_split[85,2]
motorcycle_fuelcell_split <- road_transport_euro_split[86,2]
motorcycle_electric_split <- road_transport_euro_split[87,2]

# Road Transport annual average vkm and Utilisation Factors
car_petrol_average_vkm <- road_transport_avg_annual_vkm_and_utilisation_factor[1,2]
car_diesel_average_vkm <- road_transport_avg_annual_vkm_and_utilisation_factor[2,2]
lgv_average_vkm <- road_transport_avg_annual_vkm_and_utilisation_factor[3,2]
hgv_average_vkm <- road_transport_avg_annual_vkm_and_utilisation_factor[4,2]
bus_average_vkm <- road_transport_avg_annual_vkm_and_utilisation_factor[5,2]
motorcycle_average_vkm <- road_transport_avg_annual_vkm_and_utilisation_factor[6,2]
car_petrol_phev_utilisation_factor <- road_transport_avg_annual_vkm_and_utilisation_factor[1,3]
car_diesel_phev_utilisation_factor <- road_transport_avg_annual_vkm_and_utilisation_factor[2,3]
lgv_phev_utilisation_factor <- road_transport_avg_annual_vkm_and_utilisation_factor[3,3]

################################################################################

# PWMC Damage Costs per person
damage_costs_nox <- damage_costs[1,2]
damage_costs_pm25 <- damage_costs[2,2]

###############################################################################################################################################

# Variables for initial selection

data_levels_Heating <- c( "Technologic-Specific Energy Demand (e.g., electricity demand from heat pumps for building heating)", "Energy Vector Demand (e.g., hydrogen demand for building heating)", "N/A")
data_levels_Industrial <- c("Process-Specific Energy Demand (e.g., electricity demand for Iron & Steel)", "Energy Vector Demand (e.g., hydrogen demand for industrial combustion)", "N/A")
data_levels_Road_Numbers_or_vkm <- c("Total vehicle kilometres driven (vkm)", "Total vehicle numbers", "N/A")
data_levels_vehicle_type <- c("Split by fuel and euro type (e.g., Euro 5 Petrol Car)", "Split by fuel type only (e.g., Petrol Car, Diesel Car)", "N/A")
per_unit_or_absolute_choice <- c("Absolute emissions/impacts", "Emissions/impacts per TWh of energy generated, used etc.")
gwpPotentials <- c("GWP20", "GWP100")

# Initial Selection Criteria

library(shiny)
library(shinydashboard)
library(shinydashboardPlus)
library(dashboardthemes)
library(ggplot2)
library(ggtext)
library(plotly)
library(tidyverse)
library(dplyr)
library(reshape2)
library(readxl)
library(writexl)
library(openxlsx)
library(cli)
library(htmltools)
library(shinyalert)

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

ui <- dashboardPage(
                    
                    dashboardHeader(title = "CAPSAM"),
                    
                    dashboardSidebar(
                      
                      
                      
                      sidebarMenu(
                        menuItem("Data Upload & Results", tabName = "upload", icon = icon("dashboard")),
                        menuItem("About CAPSAM", tabName = "about", icon = icon("question"))
                        
                      )
                    ),
                    
                    dashboardBody(
                      
                      ### Changing theme
                      shinyDashboardThemes(
                       
                        theme = "purple_gradient"
                        
                      ),
                      
                      tabItems(
                        
                        
                        tabItem(tabName = "upload",
                                h1("Data Upload & Results", style = "color:white"),
                                

#################################################################################  

# CSS inputs

                                tags$style(".translationdown {
    
    transform: translateY(5px);
    
    }"
                                           
                                ),
                                
                                tags$style(".translationup {
    
    transform: translateY(-5px);
    
    }"
                                           
                                ),

# Move 5 Pixels right to get all results in tabBox
tags$style(".translationright {
    
    transform: translateX(15px);
    
    }"
           
),
                                
################################################################################ 

                                fixedRow(
                                  
                                  # Information and Upload Box
                                  
                                  tabBox(title = "Parameters", width = 5,
                                         
                                         tabPanel("Welcome", 
                                                  actionButton("welcome", "Quick Information", icon = icon("info"), style = 'font-size:250%; color:white')),
                                         
                                         tabPanel("Scenario Questions",
                                                  # Deciding on basic levels of information for Building Heating
                                                  radioButtons("dataLevelsHeat", "Select the level of detail involved in the building heating scenario. If building heating is not included, select N/A.", choices = data_levels_Heating, width = 600),    
                                                  
                                                  # Deciding on basic levels of information for Industrial Combustion
                                                  radioButtons("dataLevelsIndustry", "Select the level of detail involved in the industrial combustion scenario. If industrial combustion is not included, select N/A", choices = data_levels_Industrial, width = 600), 
                                                  
                                                  # Deciding on basic levels of information for road transport fleet
                                                  radioButtons("dataLevelsVehicleDetail", "Select the level of fleet detail involved in the road transport fleet mix. If road transport is not included, select N/A", choices = data_levels_vehicle_type, width = 600),
                                                  
                                                  # Deciding on whether fleet mix is described as total vkm or number of vehicles
                                                  radioButtons("dataLevelsGvkmOrNumbers", "Select whether your fleet mix is described as total vehicle kilometres (vkm) or overall vehicle numbers", choices = data_levels_Road_Numbers_or_vkm, width = 600), 
                                                  
                                                  # Selecting GWP potentials for lifecycle assessments
                                                  radioButtons("gwpPotentials", "Please select either 20-year or 100-year global warming potentials (GWP)", choices = gwpPotentials, width = 600),
                                                  
                                                  # Selecting whether emissions/impacts should be illustrated per unit energy or absolute
                                                  radioButtons("absolute_or_perUnit", "Specify whether emissions/impacts should be stated as absolute or per TWh energy generated or used", choices = per_unit_or_absolute_choice, width = 600)
                                                  
                                         )),
  

##########################################################################################################################################################################################
                                  
                                  # Inputs for CSVs, with templates for download underneath
                                  
                                  
                                  column(width = 7,
                                         
                                         
                                         # Inputting elec gen CSV input
                                         tabBox(title = "Electricity Generation", 
                                                tabPanel("Upload", fileInput("elec_file", "Select your electricity generation file: ")), 
                                                tabPanel("Template Download", downloadButton("elec_template_download", "Electricity Generation Template", style = "color: #fff; background-color: green; border-color: black", class = "translationup"),
                                                                              downloadButton("elec_template_run", "Example Scenario Run", style = "color: #fff; background-color: blue; border-color: black"))),
                                         
                                         # Inputting Hydrogen production csv file
                                         tabBox(title = "Hydrogen Production", 
                                                tabPanel("Upload", fileInput("hyd_file", "Select your hydrogen production file: ")),
                                                tabPanel("Template Download", downloadButton("hyd_template_download", "Hydrogen Production Template", style = "color: #fff; background-color: green; border-color: black", class = "translationup"),
                                                                              downloadButton("hyd_template_run", "Example Scenario Run", style = "color: #fff; background-color: blue; border-color: black"))),
                                         
                                         # Inputting domestic heat csv input
                                         tabBox(title = "Domestic Combustion", 
                                                tabPanel("Upload", fileInput("dh_file", "Select your domestic combustion file: ")),
                                                tabPanel("Template Download", 
                                                         downloadButton("dh_template_download_pure", "Technology-specific Domestic Heating Template", style = "color: #fff; background-color: green; border-color: black", class = "translationup"),
                                                         downloadButton("dh_template_download_vector", "Energy Vector Domestic Heating Template", style = "color: #fff; background-color: green; border-color: black"),
                                                         downloadButton("dh_template_run", "Example Scenario Run", style = "color: #fff; background-color: blue; border-color: black", class = "translationdown")
                                                         )),
                                         
                                         # Inputting public and commercial heat csv input
                                         tabBox(title = "Public & Commercial Combustion", 
                                                tabPanel("Upload", fileInput("ph_file", "Select your commercial combustion file: ")),
                                                tabPanel("Template Download",
                                                         downloadButton("ph_template_download_pure", "Technology-specific Public Heating Template", style = "color: #fff; background-color: green; border-color: black", class = "translationup"),
                                                         downloadButton("ph_template_download_vector", "Energy Vector Public Heating Template", style = "color: #fff; background-color: green; border-color: black"),
                                                         downloadButton("ph_template_run", "Example Scenario Run", style = "color: #fff; background-color: blue; border-color: black", class = "translationdown")
                                                         )),
                                         
                                         # Inputting industrial combustion csv file
                                         tabBox(title = "Industrial Combustion", 
                                                tabPanel("Upload", fileInput("ind_file", "Select your industrial combustion file: ")),
                                                tabPanel("Template Download",
                                                         downloadButton("ind_template_download_pure", "Sector-specific industrial combustion Template", style = "color: #fff; background-color: green; border-color: black", class = "translationup"),
                                                         downloadButton("ind_template_download_vector", "Energy Vector industrial combustion Template", style = "color: #fff; background-color: green; border-color: black"),
                                                         downloadButton("ind_template_run", "Example Scenario Run", style = "color: #fff; background-color: blue; border-color: black", class = "translationdown"))),
                                         
                                         # Inputting road transport csv file
                                         tabBox(title = "Road Vehicle Transport", 
                                                tabPanel("Upload", fileInput("road_file", "Select your road transport file: ")),
                                                tabPanel("Template Download",
                                                         downloadButton("road_template_download_euro_specific", "Euro-specific road transport Template", style = "color: #fff; background-color: green; border-color: black", class = "translationup"),
                                                         downloadButton("road_template_download_fuel_only", "Fuel only road transport Template", style = "color: #fff; background-color: green; border-color: black"),
                                                         downloadButton("road_template_run", "Example Scenario Run", style = "color: #fff; background-color: blue; border-color: black", class = "translationdown")))
                                         
                      
                                         )),

#########################################################################################################################################################################################
                                
                                # Results Box

                               fixedRow(valueBoxOutput("Elec_PWMC_Costs_nox", width = 3), valueBoxOutput("Hydrogen_PWMC_Costs_nox", width = 3), valueBoxOutput("Heating_PWMC_Costs_nox", width = 3), valueBoxOutput("Industry_PWMC_Costs_nox", width = 3)),
                               fixedRow(valueBoxOutput("Elec_PWMC_Costs_pm25", width = 3), valueBoxOutput("Hydrogen_PWMC_Costs_pm25", width = 3), valueBoxOutput("Heating_PWMC_Costs_pm25", width = 3), valueBoxOutput("Industry_PWMC_Costs_pm25", width = 3)),
                                
                                tabBox(id = "resultsTab", title = "Results", width = 12,
                                       
                                       tabPanel("Electricity Generation", fluidRow(splitLayout(cellWidths = c("32.5%", "32.5%", "32.5%"), plotlyOutput("elec_co2"), plotlyOutput("elec_nox"), plotlyOutput("elec_tpm25"), class = "translationright"))),
                                       tabPanel("Hydrogen Production", fluidRow(splitLayout(cellWidths = c("32.5%", "32.5%", "32.5%"), plotlyOutput("hydrogen_co2"), plotlyOutput("hydrogen_nox"), plotlyOutput("hydrogen_tpm25"), class = "translationright"))),
                                       tabPanel("Domestic Heating", fluidRow(splitLayout(cellWidths = c("32.5%", "32.5%", "32.5%"), plotlyOutput("dh_co2"), plotlyOutput("dh_nox"), plotlyOutput("dh_tpm25"), class = "translationright"))),
                                       tabPanel("Public and Commercial Heating", fluidRow(splitLayout(cellWidths = c("32.5%", "32.5%", "32.5%"), plotlyOutput("ph_co2"), plotlyOutput("ph_nox"), plotlyOutput("ph_tpm25"), class = "translationright"))),
                                       tabPanel("Iron & Steel", fluidRow(splitLayout(cellWidths = c("32.5%", "32.5%", "32.5%"), plotlyOutput("ironsteel_co2"), plotlyOutput("ironsteel_nox"), plotlyOutput("ironsteel_tpm25"), class = "translationright"))),
                                       tabPanel("Non-Ferrous Metals", fluidRow(splitLayout(cellWidths = c("32.5%", "32.5%", "32.5%"), plotlyOutput("nfm_co2"), plotlyOutput("nfm_nox"), plotlyOutput("nfm_tpm25"), class = "translationright"))),
                                       tabPanel("Chemicals", fluidRow(splitLayout(cellWidths = c("32.5%", "32.5%", "32.5%"), plotlyOutput("chem_co2"), plotlyOutput("chem_nox"), plotlyOutput("chem_tpm25"), class = "translationright"))),
                                       tabPanel("Paper and Pulp", fluidRow(splitLayout(cellWidths = c("32.5%", "32.5%", "32.5%"), plotlyOutput("pap_co2"), plotlyOutput("pap_nox"), plotlyOutput("pap_tpm25"), class = "translationright"))),
                                       tabPanel("Food and Beverages", fluidRow(splitLayout(cellWidths = c("32.5%", "32.5%", "32.5%"), plotlyOutput("food_co2"), plotlyOutput("food_nox"), plotlyOutput("food_tpm25"), class = "translationright"))),
                                       tabPanel("Minerals", fluidRow(splitLayout(cellWidths = c("32.5%", "32.5%", "32.5%"), plotlyOutput("min_co2"), plotlyOutput("min_nox"), plotlyOutput("min_tpm25"), class = "translationright"))),
                                       tabPanel("Textiles and Leather", fluidRow(splitLayout(cellWidths = c("32.5%", "32.5%", "32.5%"), plotlyOutput("text_co2"), plotlyOutput("text_nox"), plotlyOutput("text_tpm25"), class = "translationright"))),
                                       tabPanel("Construction/NRMM", fluidRow(splitLayout(cellWidths = c("32.5%", "32.5%", "32.5%"), plotlyOutput("con_co2"), plotlyOutput("con_nox"), plotlyOutput("con_tpm25"), class = "translationright"))),
                                       # Other Industries - 1A2gviii - Mech Eng, Elec Eng, Vehicles, Other Ind
                                       tabPanel("Other Industries", fluidRow(splitLayout(cellWidths = c("33%", "33%", "33%"), plotlyOutput("other_co2"), plotlyOutput("other_nox"), plotlyOutput("other_tpm25"), class = "translationright"))),
                                       tabPanel("Road Transport", fluidRow(splitLayout(cellWidths = c("33%", "33%", "33%"), plotlyOutput("road_co2"), plotlyOutput("road_nox"), plotlyOutput("road_tpm25"), class = "translationright"))),
                                       
                                ),
                                
                                # Results Download Box
                                
                                tabBox(title = "Results Download", width = 12,
                                       
                                       tabPanel("All Results Download", downloadButton("download_total_xlsx", "Download All Results", style = "color = #fff; background-color: red; border-color: black")),
                                       tabPanel("Electricity Results Download", downloadButton("download_elec_xlsx", "Download Electricity Results", style = "color = #fff; background-color: red; border-color: black")),
                                       tabPanel("Hydrogen Results Download", downloadButton("download_hyd_xlsx", "Download Hydrogen Results", style = "color = #fff; background-color: red; border-color: black")),
                                       tabPanel("Domestic Heating Results Download", downloadButton("download_dh_xlsx", "Download Domestic Heating Results", style = "color = #fff; background-color: red; border-color: black")),
                                       tabPanel("Public Heating Results Download", downloadButton("download_ph_xlsx", "Download Public and Commercial Heating Results", style = "color = #fff; background-color: red; border-color: black")),
                                       tabPanel("Industry Results Download", downloadButton("download_ind_xlsx", "Download Industry Results", style = "color = #fff; background-color: red; border-color: black")),
                                       tabPanel("Road Transport Results Download", downloadButton("download_road_xlsx", "Download Road Transport Results", style = "color = #fff; background-color: red; border-color: black"))
                                       
                                )
                                
                                
                        ),
                        
                        
                        
                        # Second Tab
                        
                        tabItem(tabName = "about",
                                h1("About CAPSAM", style = "color:white"),
                                
                              fluidRow(tabBox(title = "Schematics and Methodology", width = 12,
                                       
                              tabPanel("Overview and Flow Diagram",
                                h3("CAPSAM was designed to sit at the interface between energy system and air quality/chemical transport modelling. Using this tool, a quick assessment of the GHG emissions and air quality impacts of a given energy scenario can be completed"),
                                h3("The air quality impacts are derived through applying a set of emission factors (kt/TWh) (more detail in each tab), followed by applying sector-specific impact factors (ng m-3 kt-1) to each emissions source. These are derived from the UK Integrated Assessment Model and take into account the proximity of an emissions source to a given population. CCS capture effects are taken from the European Envrionment Agency (2011)."),
                                h3("This schematic shows the level of detail you can CURRENTLY get from the CAPSAM tool - cost aspects to come soon!"),
                                
                                imageOutput("schematic_img")
                                
                                ),
                              tabPanel("Electricity Generation",
                                       h3("Air pollutant emission factors (EF) for electricity generation were derived through a combination of the National Atmospheric Emissions Inventory data, and the Digest of UK Energy Statistics 'electricity supplied' outputs."),
                                       h3("These EFs are to be applied to the amount of electricity supplied to the grid for each technology, as opposed to the fuel used to produce the electricity (which requires assumptions about auto-consumption and generation efficiency)."),
                                       h3("The GHG EFs are lifecycle EFs produced by the UNECE, to account for generation as well as construction, maintenance and decommissioning etc. BECCS and biomass are set to 0, as there was no data for these sources."),
                                       h3("A designated source footprint is included for gas-fired power stations within UKIAM, this is also used for hydrogen-fired power and gas CCS. For other sources, an aggregated footprint is used - including oil, biomass/BECCS, coal, waste and other thermal sources."),
                           
                              ),
                              tabPanel("Hydrogen Production",
                                       h3("Air pollutant emission factors (EF) for hydrogen production were taken from Sun et al. (2019), Cho et al. (2022), Van Huynh and Kong (2013), and Hamilton et al. (2014)."),
                                       h3("The UKIAM framework does not have source footprints for hydrogen production facilities, given their nascence. For impact factors here, we use the refinery sources within the model, which are close to ports across the UK. This is where we expect hydrogen production facilities to be situated."),
                                       h3("The GHG EFs for blue (and grey) are lifecycle EFs taken from Howarth and Jacobson (2021), to account for upstream and fugitive CH4 emissions. Both 100-year and 20-year Global Warming Potentials are available. For biomass gasification and green hydrogen production, not GHG lifecycle emission factors are available."),
                                       
                              ),
                              tabPanel("Building Heating",
                                       h3("Tier 2 Air pollutant emission factors (EF) for building heating were taken from the European Envrionment Agency emissions inventory guidebook (2019) for both domestic and public heating. NOx EFs for hydrogen boilers were taken from Gersen, Van Essen, and Teerling (2020), whilst H2-Natural Gas Blends were taken from a combination of the NAEI and Wright and Lewis (2022)."),
                                       h3("Impact factors are available for the domestic combustion of wood, oil, coal, and gas. The impact factor for gas is also used for other domestic heating systems in urban areas (e.g., hydrogen boilers). One aggregated impact factor is applied for public sector combustion sources, this is also used for district heating in both domestic and public settings."),
                                       h3("The GHG EFs are taken from the NAEI, excluding wood burning. These are taken from Cassano et al. (2019)."),
                                       h3("Flexibility: If technology-specific activity data is not available but energy vector data is, CAPSAM can apply a fixed 'energy vector share' to the input file allowing for a basic interpretation of impacts from each heating technology")
                                       
                              ),
                              tabPanel("Industrial Combustion",
                                       h3("Air pollutant emission factors (EF) were taken from the European Envrionment Agency emissions inventory guidebook (2019). Tier 1 EFs have had to be used, as these are given as per unit energy EFs instead of per tonne product, for example."),
                                       h3("Impact Factors for some specific industrial use cases have been applied. These include: Iron and Steel, Cement, Chemicals. Other industries are aggregated under 'Other Industrial Combustion'."),
                                       h3("The GHG EFs are taken from the NAEI. Biomass EFs are not included and are currently set to 0."),
                                       h3("Flexibility: If process-specific activity data is not available but energy vector data is, CAPSAM can apply a fixed 'energy vector share', taken from the the Digest of UK Energy Statistics for 2020, to the input file allowing for a basic interpretation of impacts from each energy vector within each industrial sector")
                                      
                              ),
                              tabPanel("Damage Costs",
                                       h3("CAPSAM uses Defra damage costs that are calculated per unit concentration (£ per 1ug change per person), as opposed to per tonne of emission, leading to more accurate damage cost information for each scenario input."),
                                       h3("Using these damage costs, CAPSAM calculates the savings (per person) for NOx and PM2.5 impacts. This is done by applying the damage costs to the difference between the intial- and end-year PWMC for each sector."),
                                       h3("The values indicate the change in annual health damage costs per person from the initial year to the final year of the pathway. Damage costs are not integrated over the time period."),
                                       h3("Positive values indicate SAVINGS per person as a result of reduced AQ impacts within the sector. Negative values indicate a LOSS per person as a result of increased AQ impacts within the sector."),
                                   
                              ),
                              
                                    
                                    
                                
                        ))
                        
                        
                        
                      
  
                        
  )
  
  )))
















#########################################################################################################################################################################################


# Server-side logic

server <- function(input, output, session) {
  
  
  # Rendering in images
  
  # Schematic to explain CAPSAM
  output$schematic_img <- renderImage({
    
    list(src = "www/CAPSAM_Flow_Diagram_no_costs.png",
         width = "100%")
    
  }, deleteFile = FALSE)
  
 ###############################################################################
  
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
  
  
  input_road_file <- reactive({
    
    if(is.null(input$road_file)) {
      
      return("")
      
    }
    
    input_road_file <- read.csv(file = input$road_file$datapath, fileEncoding = 'UTF-8-BOM', header = FALSE)
    
    colnames <- as.character(input_road_file[ , 1])
    input_road_file = data.frame(t(input_road_file[ , -1]))
    colnames(input_road_file) <- colnames
    
    return(input_road_file)
    
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
    
    else if (input$dataLevelsHeat == "Energy Vector Demand (e.g., hydrogen demand for building heating)") 
    
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
  
  ###########################################################################################################################################
  
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
  
  # Road Transport Data - converting everything into same format (as above) - into Euro-specific vkm
  
  road_data <- reactive({
    
    req(input_road_file())
    
    # If input file split by euro format
    
    if(input$dataLevelsVehicleDetail == "Split by fuel and euro type (e.g., Euro 5 Petrol Car)") 
      {
      
      # If input file described by vehicle kilometres
      
      if(input$dataLevelsGvkmOrNumbers == "Total vehicle kilometres driven (vkm)") 
        {
        
        road_data <- input_road_file()[, 1:88]
        
        return(road_data)
        
      }
      
      # If Euro specific input file described by total vehicle numbers - convert to vkm using avg vehicle vkm (utilisation factors applied in calculation section - NOT here!)
      
      else if(input$dataLevelsGvkmOrNumbers == "Total vehicle numbers") 
        {
        
        # Applying annual average vkm to Euro Split - still same 84 columns as all split by euro type
        road_data <- input_road_file()[, 1:88]
        
        road_data$`Car - Petrol - Euro 1` <- road_data$`Car - Petrol - Euro 1` * car_petrol_average_vkm
        road_data$`Car - Petrol - Euro 2` <- road_data$`Car - Petrol - Euro 2` * car_petrol_average_vkm
        road_data$`Car - Petrol - Euro 3` <- road_data$`Car - Petrol - Euro 3` * car_petrol_average_vkm
        road_data$`Car - Petrol - Euro 4` <- road_data$`Car - Petrol - Euro 4` * car_petrol_average_vkm
        road_data$`Car - Petrol - Euro 5a` <- road_data$`Car - Petrol - Euro 5a` * car_petrol_average_vkm
        road_data$`Car - Petrol - Euro 5b` <- road_data$`Car - Petrol - Euro 5b` * car_petrol_average_vkm
        road_data$`Car - Petrol - Euro 6b` <- road_data$`Car - Petrol - Euro 6b` * car_petrol_average_vkm
        road_data$`Car - Petrol - Euro 6c` <- road_data$`Car - Petrol - Euro 6c` * car_petrol_average_vkm
        road_data$`Car - Petrol - Euro 6d-Temp` <- road_data$`Car - Petrol - Euro 6d-Temp` * car_petrol_average_vkm
        road_data$`Car - Petrol - Euro 6d` <- road_data$`Car - Petrol - Euro 6d` * car_petrol_average_vkm
        road_data$`Car - Petrol - Euro 7` <- road_data$`Car - Petrol - Euro 7` * car_petrol_average_vkm
        road_data$`Car - Diesel - Euro 1` <- road_data$`Car - Diesel - Euro 1` * car_diesel_average_vkm
        road_data$`Car - Diesel - Euro 2` <- road_data$`Car - Diesel - Euro 2` * car_diesel_average_vkm
        road_data$`Car - Diesel - Euro 3` <- road_data$`Car - Diesel - Euro 3` * car_diesel_average_vkm
        road_data$`Car - Diesel - Euro 4` <- road_data$`Car - Diesel - Euro 4` * car_diesel_average_vkm
        road_data$`Car - Diesel - Euro 5a` <- road_data$`Car - Diesel - Euro 5a` * car_diesel_average_vkm
        road_data$`Car - Diesel - Euro 5b` <- road_data$`Car - Diesel - Euro 5b` * car_diesel_average_vkm
        road_data$`Car - Diesel - Euro 6b` <- road_data$`Car - Diesel - Euro 6b` * car_diesel_average_vkm
        road_data$`Car - Diesel - Euro 6c` <- road_data$`Car - Diesel - Euro 6c` * car_diesel_average_vkm
        road_data$`Car - Diesel - Euro 6d-Temp` <- road_data$`Car - Diesel - Euro 6d-Temp` * car_diesel_average_vkm
        road_data$`Car - Diesel - Euro 6d` <- road_data$`Car - Diesel - Euro 6d` * car_diesel_average_vkm
        road_data$`Car - Diesel - Euro 7` <- road_data$`Car - Diesel - Euro 7` * car_diesel_average_vkm
        road_data$`Car - PHEV (Petrol)` <- road_data$`Car - PHEV (Petrol)` * car_petrol_average_vkm
        road_data$`Car - PHEV (Diesel)` <- road_data$`Car - PHEV (Diesel)` * car_diesel_average_vkm
        road_data$`Car - Hydrogen Fuel Cell` <- road_data$`Car - Hydrogen Fuel Cell` * car_diesel_average_vkm
        road_data$`Car - BEV` <- road_data$`Car - BEV` * car_diesel_average_vkm
        road_data$`LGV - Petrol - Euro 1` <- road_data$`LGV - Petrol - Euro 1` * lgv_average_vkm
        road_data$`LGV - Petrol - Euro 2` <- road_data$`LGV - Petrol - Euro 2` * lgv_average_vkm
        road_data$`LGV - Petrol - Euro 3` <- road_data$`LGV - Petrol - Euro 3` * lgv_average_vkm
        road_data$`LGV - Petrol - Euro 4` <- road_data$`LGV - Petrol - Euro 4` * lgv_average_vkm
        road_data$`LGV - Petrol - Euro 5a` <- road_data$`LGV - Petrol - Euro 5a` * lgv_average_vkm
        road_data$`LGV - Petrol - Euro 5b` <- road_data$`LGV - Petrol - Euro 5b` * lgv_average_vkm
        road_data$`LGV - Petrol - Euro 6b` <- road_data$`LGV - Petrol - Euro 6b` * lgv_average_vkm
        road_data$`LGV - Petrol - Euro 6c` <- road_data$`LGV - Petrol - Euro 6c` * lgv_average_vkm
        road_data$`LGV - Petrol - Euro 6d-Temp` <- road_data$`LGV - Petrol - Euro 6d-Temp` * lgv_average_vkm
        road_data$`LGV - Petrol - Euro 6d` <- road_data$`LGV - Petrol - Euro 6d` * lgv_average_vkm
        road_data$`LGV - Petrol - Euro 7` <- road_data$`LGV - Petrol - Euro 7` * lgv_average_vkm
        road_data$`LGV - Diesel - Euro 1` <- road_data$`LGV - Diesel - Euro 1` * lgv_average_vkm
        road_data$`LGV - Diesel - Euro 2` <- road_data$`LGV - Diesel - Euro 2` * lgv_average_vkm
        road_data$`LGV - Diesel - Euro 3` <- road_data$`LGV - Diesel - Euro 3` * lgv_average_vkm
        road_data$`LGV - Diesel - Euro 4` <- road_data$`LGV - Diesel - Euro 4` * lgv_average_vkm
        road_data$`LGV - Diesel - Euro 5a` <- road_data$`LGV - Diesel - Euro 5a` * lgv_average_vkm
        road_data$`LGV - Diesel - Euro 5b` <- road_data$`LGV - Diesel - Euro 5b` * lgv_average_vkm
        road_data$`LGV - Diesel - Euro 6b` <- road_data$`LGV - Diesel - Euro 6b` * lgv_average_vkm
        road_data$`LGV - Diesel - Euro 6c` <- road_data$`LGV - Diesel - Euro 6c` * lgv_average_vkm
        road_data$`LGV - Diesel - Euro 6d-Temp` <- road_data$`LGV - Diesel - Euro 6d-Temp` * lgv_average_vkm
        road_data$`LGV - Diesel - Euro 6d` <- road_data$`LGV - Diesel - Euro 6d` * lgv_average_vkm
        road_data$`LGV - Diesel - Euro 7` <- road_data$`LGV - Diesel - Euro 7` * lgv_average_vkm
        road_data$`LGV - PHEV (Petrol)` <- road_data$`LGV - PHEV (Petrol)` * lgv_average_vkm
        road_data$`LGV - PHEV (Diesel)` <- road_data$`LGV - PHEV (Diesel)` * lgv_average_vkm
        road_data$`LGV - Hydrogen Fuel Cell` <- road_data$`LGV - Hydrogen Fuel Cell` * lgv_average_vkm
        road_data$`LGV - BEV` <- road_data$`LGV - BEV` * lgv_average_vkm
        road_data$`HGV - CNG - Euro 1` <- road_data$`HGV - CNG - Euro 1` * hgv_average_vkm
        road_data$`HGV - CNG - Euro 2` <- road_data$`HGV - CNG - Euro 2` * hgv_average_vkm
        road_data$`HGV - CNG - Euro 3` <- road_data$`HGV - CNG - Euro 3` * hgv_average_vkm
        road_data$`HGV - CNG - EEV` <- road_data$`HGV - CNG - EEV` * hgv_average_vkm
        road_data$`HGV - Diesel - Euro 1` <- road_data$`HGV - Diesel - Euro 1` * hgv_average_vkm
        road_data$`HGV - Diesel - Euro 2` <- road_data$`HGV - Diesel - Euro 2` * hgv_average_vkm
        road_data$`HGV - Diesel - Euro 3` <- road_data$`HGV - Diesel - Euro 3` * hgv_average_vkm
        road_data$`HGV - Diesel - Euro 4` <- road_data$`HGV - Diesel - Euro 4` * hgv_average_vkm
        road_data$`HGV - Diesel - Euro 5` <- road_data$`HGV - Diesel - Euro 5` * hgv_average_vkm
        road_data$`HGV - Diesel - Euro 6` <- road_data$`HGV - Diesel - Euro 6` * hgv_average_vkm
        road_data$`HGV - Diesel - Euro 7` <- road_data$`HGV - Diesel - Euro 7` * hgv_average_vkm
        road_data$`HGV - PHEV (Diesel)` <- road_data$`HGV - PHEV (Diesel)` * hgv_average_vkm
        road_data$`HGV - Hydrogen Fuel Cell` <- road_data$`HGV - Hydrogen Fuel Cell` * hgv_average_vkm
        road_data$`HGV - BEV` <- road_data$`HGV - BEV` * hgv_average_vkm
        road_data$`Bus - CNG - Euro 1` <- road_data$`Bus - CNG - Euro 1` * bus_average_vkm
        road_data$`Bus - CNG - Euro 2` <- road_data$`Bus - CNG - Euro 2` * bus_average_vkm
        road_data$`Bus - CNG - Euro 3` <- road_data$`Bus - CNG - Euro 3` * bus_average_vkm
        road_data$`Bus - CNG - EEV` <- road_data$`Bus - CNG - EEV` * bus_average_vkm
        road_data$`Bus - Diesel - Euro 1` <- road_data$`Bus - Diesel - Euro 1` * bus_average_vkm
        road_data$`Bus - Diesel - Euro 2` <- road_data$`Bus - Diesel - Euro 2` * bus_average_vkm
        road_data$`Bus - Diesel - Euro 3` <- road_data$`Bus - Diesel - Euro 3` * bus_average_vkm
        road_data$`Bus - Diesel - Euro 4` <- road_data$`Bus - Diesel - Euro 4` * bus_average_vkm
        road_data$`Bus - Diesel - Euro 5` <- road_data$`Bus - Diesel - Euro 5` * bus_average_vkm
        road_data$`Bus - Diesel - Euro 6` <- road_data$`Bus - Diesel - Euro 6` * bus_average_vkm
        road_data$`Bus - Diesel - Euro 7` <- road_data$`Bus - Diesel - Euro 7` * bus_average_vkm
        road_data$`Bus - PHEV (Diesel)` <- road_data$`Bus - PHEV (Diesel)` * bus_average_vkm
        road_data$`Bus - Hydrogen Fuel Cell` <- road_data$`Bus - Hydrogen Fuel Cell` * bus_average_vkm
        road_data$`Bus - BEV` <- road_data$`Bus - BEV` * bus_average_vkm
        road_data$`Motorcycle - Petrol - Euro 1` <- road_data$`Motorcycle - Petrol - Euro 1` * motorcycle_average_vkm
        road_data$`Motorcycle - Petrol - Euro 2` <- road_data$`Motorcycle - Petrol - Euro 2` * motorcycle_average_vkm
        road_data$`Motorcycle - Petrol - Euro 3` <- road_data$`Motorcycle - Petrol - Euro 3` * motorcycle_average_vkm
        road_data$`Motorcycle - Petrol - Euro 4` <- road_data$`Motorcycle - Petrol - Euro 4` * motorcycle_average_vkm
        road_data$`Motorcycle - Petrol - Euro 5` <- road_data$`Motorcycle - Petrol - Euro 5` * motorcycle_average_vkm
        road_data$`Motorcycle - Hydrogen Fuel Cell` <- road_data$`Motorcycle - Hydrogen Fuel Cell` * motorcycle_average_vkm
        road_data$`Motorcycle - Electric` <- road_data$`Motorcycle - Electric` * motorcycle_average_vkm
        
        return(road_data)
        
      }
      
    }
    
    # If input file split only by fuel type
    
    else if(input$dataLevelsVehicleDetail == "Split by fuel type only (e.g., Petrol Car, Diesel Car)") 
     {
      
      # If input file described by vehicle kilometres
      road_data_noEuro <- input_road_file()[, 1:26]
      
      if(input$dataLevelsGvkmOrNumbers == "Total vehicle kilometres driven (vkm)") {
        
        
        # Applying euro split to fuel split - already in vkm form so no need to add avg vkm
        
        road_data_noEuro$`Car - Petrol - Euro 1` <- road_data_noEuro$`Car - Petrol` * car_petrol_euro_1_split
        road_data_noEuro$`Car - Petrol - Euro 2` <- road_data_noEuro$`Car - Petrol` * car_petrol_euro_2_split
        road_data_noEuro$`Car - Petrol - Euro 3` <- road_data_noEuro$`Car - Petrol` * car_petrol_euro_3_split
        road_data_noEuro$`Car - Petrol - Euro 4` <- road_data_noEuro$`Car - Petrol` * car_petrol_euro_4_split
        road_data_noEuro$`Car - Petrol - Euro 5a` <- road_data_noEuro$`Car - Petrol` * car_petrol_euro_5a_split
        road_data_noEuro$`Car - Petrol - Euro 5b` <- road_data_noEuro$`Car - Petrol` * car_petrol_euro_5b_split
        road_data_noEuro$`Car - Petrol - Euro 6b` <- road_data_noEuro$`Car - Petrol` * car_petrol_euro_6b_split
        road_data_noEuro$`Car - Petrol - Euro 6c` <- road_data_noEuro$`Car - Petrol` * car_petrol_euro_6c_split
        road_data_noEuro$`Car - Petrol - Euro 6d-Temp` <- road_data_noEuro$`Car - Petrol` * car_petrol_euro_6dTemp_split
        road_data_noEuro$`Car - Petrol - Euro 6d` <- road_data_noEuro$`Car - Petrol` * car_petrol_euro_6d_split
        road_data_noEuro$`Car - Petrol - Euro 7` <- road_data_noEuro$`Car - Petrol` * car_petrol_euro_7_split
        road_data_noEuro$`Car - Diesel - Euro 1` <- road_data_noEuro$`Car - Diesel` * car_diesel_euro_1_split
        road_data_noEuro$`Car - Diesel - Euro 2` <- road_data_noEuro$`Car - Diesel` * car_diesel_euro_2_split
        road_data_noEuro$`Car - Diesel - Euro 3` <- road_data_noEuro$`Car - Diesel` * car_diesel_euro_3_split
        road_data_noEuro$`Car - Diesel - Euro 4` <- road_data_noEuro$`Car - Diesel` * car_diesel_euro_4_split
        road_data_noEuro$`Car - Diesel - Euro 5a` <- road_data_noEuro$`Car - Diesel` * car_diesel_euro_5a_split
        road_data_noEuro$`Car - Diesel - Euro 5b` <- road_data_noEuro$`Car - Diesel` * car_diesel_euro_5b_split
        road_data_noEuro$`Car - Diesel - Euro 6b` <- road_data_noEuro$`Car - Diesel` * car_diesel_euro_6b_split
        road_data_noEuro$`Car - Diesel - Euro 6c` <- road_data_noEuro$`Car - Diesel` * car_diesel_euro_6c_split
        road_data_noEuro$`Car - Diesel - Euro 6d-Temp` <- road_data_noEuro$`Car - Diesel` * car_diesel_euro_6dTemp_split
        road_data_noEuro$`Car - Diesel - Euro 6d` <- road_data_noEuro$`Car - Diesel` * car_diesel_euro_6d_split
        road_data_noEuro$`Car - Diesel - Euro 7` <- road_data_noEuro$`Car - Diesel` * car_diesel_euro_7_split
        road_data_noEuro$`Car - PHEV (Petrol)` <- road_data_noEuro$`Car - PHEV - (Petrol)` * car_phev_petrol_split
        road_data_noEuro$`Car - PHEV (Diesel)` <- road_data_noEuro$`Car - PHEV - (Diesel)` * car_phev_diesel_split
        road_data_noEuro$`Car - Hydrogen Fuel Cell` <- road_data_noEuro$`Car - H2 Fuel Cell` * car_fuelcell_split
        road_data_noEuro$`Car - BEV` <- road_data_noEuro$`Car - Battery Electric` * car_bev_split
        road_data_noEuro$`LGV - Petrol - Euro 1` <- road_data_noEuro$`LGV - Petrol` * lgv_petrol_euro_1_split
        road_data_noEuro$`LGV - Petrol - Euro 2` <- road_data_noEuro$`LGV - Petrol` * lgv_petrol_euro_2_split
        road_data_noEuro$`LGV - Petrol - Euro 3` <- road_data_noEuro$`LGV - Petrol` * lgv_petrol_euro_3_split
        road_data_noEuro$`LGV - Petrol - Euro 4` <- road_data_noEuro$`LGV - Petrol` * lgv_petrol_euro_4_split
        road_data_noEuro$`LGV - Petrol - Euro 5a` <- road_data_noEuro$`LGV - Petrol` * lgv_petrol_euro_5a_split
        road_data_noEuro$`LGV - Petrol - Euro 5b` <- road_data_noEuro$`LGV - Petrol` * lgv_petrol_euro_5b_split
        road_data_noEuro$`LGV - Petrol - Euro 6b` <- road_data_noEuro$`LGV - Petrol` * lgv_petrol_euro_6b_split
        road_data_noEuro$`LGV - Petrol - Euro 6c` <- road_data_noEuro$`LGV - Petrol` * lgv_petrol_euro_6c_split
        road_data_noEuro$`LGV - Petrol - Euro 6d-Temp` <- road_data_noEuro$`LGV - Petrol` * lgv_petrol_euro_6dTemp_split
        road_data_noEuro$`LGV - Petrol - Euro 6d` <- road_data_noEuro$`LGV - Petrol` * lgv_petrol_euro_6d_split
        road_data_noEuro$`LGV - Petrol - Euro 7` <- road_data_noEuro$`LGV - Petrol` * lgv_petrol_euro_7_split
        road_data_noEuro$`LGV - Diesel - Euro 1` <- road_data_noEuro$`LGV - Diesel` * lgv_diesel_euro_1_split
        road_data_noEuro$`LGV - Diesel - Euro 2` <- road_data_noEuro$`LGV - Diesel` * lgv_diesel_euro_2_split
        road_data_noEuro$`LGV - Diesel - Euro 3` <- road_data_noEuro$`LGV - Diesel` * lgv_diesel_euro_3_split
        road_data_noEuro$`LGV - Diesel - Euro 4` <- road_data_noEuro$`LGV - Diesel` * lgv_diesel_euro_4_split
        road_data_noEuro$`LGV - Diesel - Euro 5a` <- road_data_noEuro$`LGV - Diesel` * lgv_diesel_euro_5a_split
        road_data_noEuro$`LGV - Diesel - Euro 5b` <- road_data_noEuro$`LGV - Diesel` * lgv_diesel_euro_5b_split
        road_data_noEuro$`LGV - Diesel - Euro 6b` <- road_data_noEuro$`LGV - Diesel` * lgv_diesel_euro_6b_split
        road_data_noEuro$`LGV - Diesel - Euro 6c` <- road_data_noEuro$`LGV - Diesel` * lgv_diesel_euro_6c_split
        road_data_noEuro$`LGV - Diesel - Euro 6d-Temp` <- road_data_noEuro$`LGV - Diesel` * lgv_diesel_euro_6dTemp_split
        road_data_noEuro$`LGV - Diesel - Euro 6d` <- road_data_noEuro$`LGV - Diesel` * lgv_diesel_euro_6d_split
        road_data_noEuro$`LGV - Diesel - Euro 7` <- road_data_noEuro$`LGV - Diesel` * lgv_diesel_euro_7_split
        road_data_noEuro$`LGV - PHEV (Petrol)` <- road_data_noEuro$`LGV - PHEV - (Petrol)` * lgv_phev_petrol_split
        road_data_noEuro$`LGV - PHEV (Diesel)` <- road_data_noEuro$`LGV - PHEV - (Diesel)` * lgv_phev_diesel_split
        road_data_noEuro$`LGV - Hydrogen Fuel Cell` <- road_data_noEuro$`LGV - H2 Fuel Cell` * lgv_fuelcell_split
        road_data_noEuro$`LGV - BEV` <- road_data_noEuro$`LGV - Battery Electric` * lgv_bev_split
        road_data_noEuro$`HGV - CNG - Euro 1` <- road_data_noEuro$`HGV - Natural Gas` * hgv_cng_euro_1_split
        road_data_noEuro$`HGV - CNG - Euro 2` <- road_data_noEuro$`HGV - Natural Gas` * hgv_cng_euro_2_split
        road_data_noEuro$`HGV - CNG - Euro 3` <- road_data_noEuro$`HGV - Natural Gas` * hgv_cng_euro_3_split
        road_data_noEuro$`HGV - CNG - EEV` <- road_data_noEuro$`HGV - Natural Gas` * hgv_cng_eev_split
        road_data_noEuro$`HGV - Diesel - Euro 1` <- road_data_noEuro$`HGV - Diesel` * hgv_diesel_euro_1_split
        road_data_noEuro$`HGV - Diesel - Euro 2` <- road_data_noEuro$`HGV - Diesel` * hgv_diesel_euro_2_split
        road_data_noEuro$`HGV - Diesel - Euro 3` <- road_data_noEuro$`HGV - Diesel` * hgv_diesel_euro_3_split
        road_data_noEuro$`HGV - Diesel - Euro 4` <- road_data_noEuro$`HGV - Diesel` * hgv_diesel_euro_4_split
        road_data_noEuro$`HGV - Diesel - Euro 5` <- road_data_noEuro$`HGV - Diesel` * hgv_diesel_euro_5_split
        road_data_noEuro$`HGV - Diesel - Euro 6` <- road_data_noEuro$`HGV - Diesel` * hgv_diesel_euro_6_split
        road_data_noEuro$`HGV - Diesel - Euro 7` <- road_data_noEuro$`HGV - Diesel` * hgv_diesel_euro_7_split
        road_data_noEuro$`HGV - PHEV (Diesel)` <- road_data_noEuro$`HGV - PHEV - (Diesel)` * hgv_phev_diesel_split
        road_data_noEuro$`HGV - Hydrogen Fuel Cell` <- road_data_noEuro$`HGV - H2 Fuel Cell` * hgv_fuelcell_split
        road_data_noEuro$`HGV - BEV` <- road_data_noEuro$`HGV - Battery Electric` * hgv_bev_split
        road_data_noEuro$`Bus - CNG - Euro 1` <- road_data_noEuro$`Bus - Natural Gas` * bus_cng_euro_1_split
        road_data_noEuro$`Bus - CNG - Euro 2` <- road_data_noEuro$`Bus - Natural Gas` * bus_cng_euro_2_split
        road_data_noEuro$`Bus - CNG - Euro 3` <- road_data_noEuro$`Bus - Natural Gas` * bus_cng_euro_3_split
        road_data_noEuro$`Bus - CNG - EEV` <- road_data_noEuro$`Bus - Natural Gas` * bus_cng_eev_split
        road_data_noEuro$`Bus - Diesel - Euro 1` <- road_data_noEuro$`Bus - Diesel` * bus_diesel_euro_1_split
        road_data_noEuro$`Bus - Diesel - Euro 2` <- road_data_noEuro$`Bus - Diesel` * bus_diesel_euro_2_split
        road_data_noEuro$`Bus - Diesel - Euro 3` <- road_data_noEuro$`Bus - Diesel` * bus_diesel_euro_3_split
        road_data_noEuro$`Bus - Diesel - Euro 4` <- road_data_noEuro$`Bus - Diesel` * bus_diesel_euro_4_split
        road_data_noEuro$`Bus - Diesel - Euro 5` <- road_data_noEuro$`Bus - Diesel` * bus_diesel_euro_5_split
        road_data_noEuro$`Bus - Diesel - Euro 6` <- road_data_noEuro$`Bus - Diesel` * bus_diesel_euro_6_split
        road_data_noEuro$`Bus - Diesel - Euro 7` <- road_data_noEuro$`Bus - Diesel` * bus_diesel_euro_7_split
        road_data_noEuro$`Bus - PHEV (Diesel)` <- road_data_noEuro$`Bus - PHEV - (Diesel)` * bus_phev_diesel_split
        road_data_noEuro$`Bus - Hydrogen Fuel Cell` <- road_data_noEuro$`Bus - H2 Fuel Cell` * bus_fuelcell_split
        road_data_noEuro$`Bus - BEV` <- road_data_noEuro$`Bus - Battery Electric` * bus_bev_split
        road_data_noEuro$`Motorcycle - Petrol - Euro 1` <- road_data_noEuro$`Motorcycle - Petrol` * motorcycle_petrol_euro_1_split
        road_data_noEuro$`Motorcycle - Petrol - Euro 2` <- road_data_noEuro$`Motorcycle - Petrol` * motorcycle_petrol_euro_2_split
        road_data_noEuro$`Motorcycle - Petrol - Euro 3` <- road_data_noEuro$`Motorcycle - Petrol` * motorcycle_petrol_euro_3_split
        road_data_noEuro$`Motorcycle - Petrol - Euro 4` <- road_data_noEuro$`Motorcycle - Petrol` * motorcycle_petrol_euro_4_split
        road_data_noEuro$`Motorcycle - Petrol - Euro 5` <- road_data_noEuro$`Motorcycle - Petrol` * motorcycle_petrol_euro_5_split
        road_data_noEuro$`Motorcycle - Hydrogen Fuel Cell` <- road_data_noEuro$`Motorcycle - H2 Fuel Cell` * motorcycle_fuelcell_split
        road_data_noEuro$`Motorcycle - Electric` <- road_data_noEuro$`Motorcycle - Battery Electric` * motorcycle_electric_split
        
        # [, 27:113] in larger database will become [, 2:88] in newer database - not containing the overall fuel split shares now - allows other data to be SAME for both cases from now!
        road_data <- road_data_noEuro[, c(1, 27:113)]
        
        return(road_data)
        
      }
      
      # If Euro specific input file described by total vehicle numbers - convert to vkm using avg vehicle vkm (utilisation factors applied in calculation section - NOT here!)
      
      else if(input$dataLevelsGvkmOrNumbers == "Total vehicle numbers") 
        {
        
        # Taking fuel only split from input file - applying generic split to vehicles

        road_data_noEuro$`Car - Petrol - Euro 1` <- road_data_noEuro$`Car - Petrol` * car_petrol_euro_1_split
        road_data_noEuro$`Car - Petrol - Euro 2` <- road_data_noEuro$`Car - Petrol` * car_petrol_euro_2_split
        road_data_noEuro$`Car - Petrol - Euro 3` <- road_data_noEuro$`Car - Petrol` * car_petrol_euro_3_split
        road_data_noEuro$`Car - Petrol - Euro 4` <- road_data_noEuro$`Car - Petrol` * car_petrol_euro_4_split
        road_data_noEuro$`Car - Petrol - Euro 5a` <- road_data_noEuro$`Car - Petrol` * car_petrol_euro_5a_split
        road_data_noEuro$`Car - Petrol - Euro 5b` <- road_data_noEuro$`Car - Petrol` * car_petrol_euro_5b_split
        road_data_noEuro$`Car - Petrol - Euro 6b` <- road_data_noEuro$`Car - Petrol` * car_petrol_euro_6b_split
        road_data_noEuro$`Car - Petrol - Euro 6c` <- road_data_noEuro$`Car - Petrol` * car_petrol_euro_6c_split
        road_data_noEuro$`Car - Petrol - Euro 6d-Temp` <- road_data_noEuro$`Car - Petrol` * car_petrol_euro_6dTemp_split
        road_data_noEuro$`Car - Petrol - Euro 6d` <- road_data_noEuro$`Car - Petrol` * car_petrol_euro_6d_split
        road_data_noEuro$`Car - Petrol - Euro 7` <- road_data_noEuro$`Car - Petrol` * car_petrol_euro_7_split
        road_data_noEuro$`Car - Diesel - Euro 1` <- road_data_noEuro$`Car - Diesel` * car_diesel_euro_1_split
        road_data_noEuro$`Car - Diesel - Euro 2` <- road_data_noEuro$`Car - Diesel` * car_diesel_euro_2_split
        road_data_noEuro$`Car - Diesel - Euro 3` <- road_data_noEuro$`Car - Diesel` * car_diesel_euro_3_split
        road_data_noEuro$`Car - Diesel - Euro 4` <- road_data_noEuro$`Car - Diesel` * car_diesel_euro_4_split
        road_data_noEuro$`Car - Diesel - Euro 5a` <- road_data_noEuro$`Car - Diesel` * car_diesel_euro_5a_split
        road_data_noEuro$`Car - Diesel - Euro 5b` <- road_data_noEuro$`Car - Diesel` * car_diesel_euro_5b_split
        road_data_noEuro$`Car - Diesel - Euro 6b` <- road_data_noEuro$`Car - Diesel` * car_diesel_euro_6b_split
        road_data_noEuro$`Car - Diesel - Euro 6c` <- road_data_noEuro$`Car - Diesel` * car_diesel_euro_6c_split
        road_data_noEuro$`Car - Diesel - Euro 6d-Temp` <- road_data_noEuro$`Car - Diesel` * car_diesel_euro_6dTemp_split
        road_data_noEuro$`Car - Diesel - Euro 6d` <- road_data_noEuro$`Car - Diesel` * car_diesel_euro_6d_split
        road_data_noEuro$`Car - Diesel - Euro 7` <- road_data_noEuro$`Car - Diesel` * car_diesel_euro_7_split
        road_data_noEuro$`Car - PHEV (Petrol)` <- road_data_noEuro$`Car - PHEV - (Petrol)` * car_phev_petrol_split
        road_data_noEuro$`Car - PHEV (Diesel)` <- road_data_noEuro$`Car - PHEV - (Diesel)` * car_phev_diesel_split
        road_data_noEuro$`Car - Hydrogen Fuel Cell` <- road_data_noEuro$`Car - H2 Fuel Cell` * car_fuelcell_split
        road_data_noEuro$`Car - BEV` <- road_data_noEuro$`Car - Battery Electric` * car_bev_split
        road_data_noEuro$`LGV - Petrol - Euro 1` <- road_data_noEuro$`LGV - Petrol` * lgv_petrol_euro_1_split
        road_data_noEuro$`LGV - Petrol - Euro 2` <- road_data_noEuro$`LGV - Petrol` * lgv_petrol_euro_2_split
        road_data_noEuro$`LGV - Petrol - Euro 3` <- road_data_noEuro$`LGV - Petrol` * lgv_petrol_euro_3_split
        road_data_noEuro$`LGV - Petrol - Euro 4` <- road_data_noEuro$`LGV - Petrol` * lgv_petrol_euro_4_split
        road_data_noEuro$`LGV - Petrol - Euro 5a` <- road_data_noEuro$`LGV - Petrol` * lgv_petrol_euro_5a_split
        road_data_noEuro$`LGV - Petrol - Euro 5b` <- road_data_noEuro$`LGV - Petrol` * lgv_petrol_euro_5b_split
        road_data_noEuro$`LGV - Petrol - Euro 6b` <- road_data_noEuro$`LGV - Petrol` * lgv_petrol_euro_6b_split
        road_data_noEuro$`LGV - Petrol - Euro 6c` <- road_data_noEuro$`LGV - Petrol` * lgv_petrol_euro_6c_split
        road_data_noEuro$`LGV - Petrol - Euro 6d-Temp` <- road_data_noEuro$`LGV - Petrol` * lgv_petrol_euro_6dTemp_split
        road_data_noEuro$`LGV - Petrol - Euro 6d` <- road_data_noEuro$`LGV - Petrol` * lgv_petrol_euro_6d_split
        road_data_noEuro$`LGV - Petrol - Euro 7` <- road_data_noEuro$`LGV - Petrol` * lgv_petrol_euro_7_split
        road_data_noEuro$`LGV - Diesel - Euro 1` <- road_data_noEuro$`LGV - Diesel` * lgv_diesel_euro_1_split
        road_data_noEuro$`LGV - Diesel - Euro 2` <- road_data_noEuro$`LGV - Diesel` * lgv_diesel_euro_2_split
        road_data_noEuro$`LGV - Diesel - Euro 3` <- road_data_noEuro$`LGV - Diesel` * lgv_diesel_euro_3_split
        road_data_noEuro$`LGV - Diesel - Euro 4` <- road_data_noEuro$`LGV - Diesel` * lgv_diesel_euro_4_split
        road_data_noEuro$`LGV - Diesel - Euro 5a` <- road_data_noEuro$`LGV - Diesel` * lgv_diesel_euro_5a_split
        road_data_noEuro$`LGV - Diesel - Euro 5b` <- road_data_noEuro$`LGV - Diesel` * lgv_diesel_euro_5b_split
        road_data_noEuro$`LGV - Diesel - Euro 6b` <- road_data_noEuro$`LGV - Diesel` * lgv_diesel_euro_6b_split
        road_data_noEuro$`LGV - Diesel - Euro 6c` <- road_data_noEuro$`LGV - Diesel` * lgv_diesel_euro_6c_split
        road_data_noEuro$`LGV - Diesel - Euro 6d-Temp` <- road_data_noEuro$`LGV - Diesel` * lgv_diesel_euro_6dTemp_split
        road_data_noEuro$`LGV - Diesel - Euro 6d` <- road_data_noEuro$`LGV - Diesel` * lgv_diesel_euro_6d_split
        road_data_noEuro$`LGV - Diesel - Euro 7` <- road_data_noEuro$`LGV - Diesel` * lgv_diesel_euro_7_split
        road_data_noEuro$`LGV - PHEV (Petrol)` <- road_data_noEuro$`LGV - PHEV - (Petrol)` * lgv_phev_petrol_split
        road_data_noEuro$`LGV - PHEV (Diesel)` <- road_data_noEuro$`LGV - PHEV - (Diesel)` * lgv_phev_diesel_split
        road_data_noEuro$`LGV - Hydrogen Fuel Cell` <- road_data_noEuro$`LGV - H2 Fuel Cell` * lgv_fuelcell_split
        road_data_noEuro$`LGV - BEV` <- road_data_noEuro$`LGV - Battery Electric` * lgv_bev_split
        road_data_noEuro$`HGV - CNG - Euro 1` <- road_data_noEuro$`HGV - Natural Gas` * hgv_cng_euro_1_split
        road_data_noEuro$`HGV - CNG - Euro 2` <- road_data_noEuro$`HGV - Natural Gas` * hgv_cng_euro_2_split
        road_data_noEuro$`HGV - CNG - Euro 3` <- road_data_noEuro$`HGV - Natural Gas` * hgv_cng_euro_3_split
        road_data_noEuro$`HGV - CNG - EEV` <- road_data_noEuro$`HGV - Natural Gas` * hgv_cng_eev_split
        road_data_noEuro$`HGV - Diesel - Euro 1` <- road_data_noEuro$`HGV - Diesel` * hgv_diesel_euro_1_split
        road_data_noEuro$`HGV - Diesel - Euro 2` <- road_data_noEuro$`HGV - Diesel` * hgv_diesel_euro_2_split
        road_data_noEuro$`HGV - Diesel - Euro 3` <- road_data_noEuro$`HGV - Diesel` * hgv_diesel_euro_3_split
        road_data_noEuro$`HGV - Diesel - Euro 4` <- road_data_noEuro$`HGV - Diesel` * hgv_diesel_euro_4_split
        road_data_noEuro$`HGV - Diesel - Euro 5` <- road_data_noEuro$`HGV - Diesel` * hgv_diesel_euro_5_split
        road_data_noEuro$`HGV - Diesel - Euro 6` <- road_data_noEuro$`HGV - Diesel` * hgv_diesel_euro_6_split
        road_data_noEuro$`HGV - Diesel - Euro 7` <- road_data_noEuro$`HGV - Diesel` * hgv_diesel_euro_7_split
        road_data_noEuro$`HGV - PHEV (Diesel)` <- road_data_noEuro$`HGV - PHEV - (Diesel)` * hgv_phev_diesel_split
        road_data_noEuro$`HGV - Hydrogen Fuel Cell` <- road_data_noEuro$`HGV - H2 Fuel Cell` * hgv_fuelcell_split
        road_data_noEuro$`HGV - BEV` <- road_data_noEuro$`HGV - Battery Electric` * hgv_bev_split
        road_data_noEuro$`Bus - CNG - Euro 1` <- road_data_noEuro$`Bus - Natural Gas` * bus_cng_euro_1_split
        road_data_noEuro$`Bus - CNG - Euro 2` <- road_data_noEuro$`Bus - Natural Gas` * bus_cng_euro_2_split
        road_data_noEuro$`Bus - CNG - Euro 3` <- road_data_noEuro$`Bus - Natural Gas` * bus_cng_euro_3_split
        road_data_noEuro$`Bus - CNG - EEV` <- road_data_noEuro$`Bus - Natural Gas` * bus_cng_eev_split
        road_data_noEuro$`Bus - Diesel - Euro 1` <- road_data_noEuro$`Bus - Diesel` * bus_diesel_euro_1_split
        road_data_noEuro$`Bus - Diesel - Euro 2` <- road_data_noEuro$`Bus - Diesel` * bus_diesel_euro_2_split
        road_data_noEuro$`Bus - Diesel - Euro 3` <- road_data_noEuro$`Bus - Diesel` * bus_diesel_euro_3_split
        road_data_noEuro$`Bus - Diesel - Euro 4` <- road_data_noEuro$`Bus - Diesel` * bus_diesel_euro_4_split
        road_data_noEuro$`Bus - Diesel - Euro 5` <- road_data_noEuro$`Bus - Diesel` * bus_diesel_euro_5_split
        road_data_noEuro$`Bus - Diesel - Euro 6` <- road_data_noEuro$`Bus - Diesel` * bus_diesel_euro_6_split
        road_data_noEuro$`Bus - Diesel - Euro 7` <- road_data_noEuro$`Bus - Diesel` * bus_diesel_euro_7_split
        road_data_noEuro$`Bus - PHEV (Diesel)` <- road_data_noEuro$`Bus - PHEV - (Diesel)` * bus_phev_diesel_split
        road_data_noEuro$`Bus - Hydrogen Fuel Cell` <- road_data_noEuro$`Bus - H2 Fuel Cell` * bus_fuelcell_split
        road_data_noEuro$`Bus - BEV` <- road_data_noEuro$`Bus - Battery Electric` * bus_bev_split
        road_data_noEuro$`Motorcycle - Petrol - Euro 1` <- road_data_noEuro$`Motorcycle - Petrol` * motorcycle_petrol_euro_1_split
        road_data_noEuro$`Motorcycle - Petrol - Euro 2` <- road_data_noEuro$`Motorcycle - Petrol` * motorcycle_petrol_euro_2_split
        road_data_noEuro$`Motorcycle - Petrol - Euro 3` <- road_data_noEuro$`Motorcycle - Petrol` * motorcycle_petrol_euro_3_split
        road_data_noEuro$`Motorcycle - Petrol - Euro 4` <- road_data_noEuro$`Motorcycle - Petrol` * motorcycle_petrol_euro_4_split
        road_data_noEuro$`Motorcycle - Petrol - Euro 5` <- road_data_noEuro$`Motorcycle - Petrol` * motorcycle_petrol_euro_5_split
        road_data_noEuro$`Motorcycle - Hydrogen Fuel Cell` <- road_data_noEuro$`Motorcycle - H2 Fuel Cell` * motorcycle_fuelcell_split
        road_data_noEuro$`Motorcycle - Electric` <- road_data_noEuro$`Motorcycle - Battery Electric` * motorcycle_electric_split
        
        
        # Applying annual average vkm to Fuel split - taking c(1, 27:113) from road_data_noEuro to road_data - will become 1:88 at end file (similar to vkm case above when getting to emissions expression)
        
        
        road_data_noEuro$`Car - Petrol - Euro 1` <- road_data_noEuro$`Car - Petrol - Euro 1` * car_petrol_average_vkm
        road_data_noEuro$`Car - Petrol - Euro 2` <- road_data_noEuro$`Car - Petrol - Euro 2` * car_petrol_average_vkm
        road_data_noEuro$`Car - Petrol - Euro 3` <- road_data_noEuro$`Car - Petrol - Euro 3` * car_petrol_average_vkm
        road_data_noEuro$`Car - Petrol - Euro 4` <- road_data_noEuro$`Car - Petrol - Euro 4` * car_petrol_average_vkm
        road_data_noEuro$`Car - Petrol - Euro 5a` <- road_data_noEuro$`Car - Petrol - Euro 5a` * car_petrol_average_vkm
        road_data_noEuro$`Car - Petrol - Euro 5b` <- road_data_noEuro$`Car - Petrol - Euro 5b` * car_petrol_average_vkm
        road_data_noEuro$`Car - Petrol - Euro 6b` <- road_data_noEuro$`Car - Petrol - Euro 6b` * car_petrol_average_vkm
        road_data_noEuro$`Car - Petrol - Euro 6c` <- road_data_noEuro$`Car - Petrol - Euro 6c` * car_petrol_average_vkm
        road_data_noEuro$`Car - Petrol - Euro 6d-Temp` <- road_data_noEuro$`Car - Petrol - Euro 6d-Temp` * car_petrol_average_vkm
        road_data_noEuro$`Car - Petrol - Euro 6d` <- road_data_noEuro$`Car - Petrol - Euro 6d` * car_petrol_average_vkm
        road_data_noEuro$`Car - Petrol - Euro 7` <- road_data_noEuro$`Car - Petrol - Euro 7` * car_petrol_average_vkm
        road_data_noEuro$`Car - Diesel - Euro 1` <- road_data_noEuro$`Car - Diesel - Euro 1` * car_diesel_average_vkm
        road_data_noEuro$`Car - Diesel - Euro 2` <- road_data_noEuro$`Car - Diesel - Euro 2` * car_diesel_average_vkm
        road_data_noEuro$`Car - Diesel - Euro 3` <- road_data_noEuro$`Car - Diesel - Euro 3` * car_diesel_average_vkm
        road_data_noEuro$`Car - Diesel - Euro 4` <- road_data_noEuro$`Car - Diesel - Euro 4` * car_diesel_average_vkm
        road_data_noEuro$`Car - Diesel - Euro 5a` <- road_data_noEuro$`Car - Diesel - Euro 5a` * car_diesel_average_vkm
        road_data_noEuro$`Car - Diesel - Euro 5b` <- road_data_noEuro$`Car - Diesel - Euro 5b` * car_diesel_average_vkm
        road_data_noEuro$`Car - Diesel - Euro 6b` <- road_data_noEuro$`Car - Diesel - Euro 6b` * car_diesel_average_vkm
        road_data_noEuro$`Car - Diesel - Euro 6c` <- road_data_noEuro$`Car - Diesel - Euro 6c` * car_diesel_average_vkm
        road_data_noEuro$`Car - Diesel - Euro 6d-Temp` <- road_data_noEuro$`Car - Diesel - Euro 6d-Temp` * car_diesel_average_vkm
        road_data_noEuro$`Car - Diesel - Euro 6d` <- road_data_noEuro$`Car - Diesel - Euro 6d` * car_diesel_average_vkm
        road_data_noEuro$`Car - Diesel - Euro 7` <- road_data_noEuro$`Car - Diesel - Euro 7` * car_diesel_average_vkm
        road_data_noEuro$`Car - PHEV (Petrol)` <- road_data_noEuro$`Car - PHEV (Petrol)` * car_petrol_average_vkm
        road_data_noEuro$`Car - PHEV (Diesel)` <- road_data_noEuro$`Car - PHEV (Diesel)` * car_diesel_average_vkm
        road_data_noEuro$`Car - Hydrogen Fuel Cell` <- road_data_noEuro$`Car - Hydrogen Fuel Cell` * car_diesel_average_vkm
        road_data_noEuro$`Car - BEV` <- road_data_noEuro$`Car - BEV` * car_diesel_average_vkm
        road_data_noEuro$`LGV - Petrol - Euro 1` <- road_data_noEuro$`LGV - Petrol - Euro 1` * lgv_average_vkm
        road_data_noEuro$`LGV - Petrol - Euro 2` <- road_data_noEuro$`LGV - Petrol - Euro 2` * lgv_average_vkm
        road_data_noEuro$`LGV - Petrol - Euro 3` <- road_data_noEuro$`LGV - Petrol - Euro 3` * lgv_average_vkm
        road_data_noEuro$`LGV - Petrol - Euro 4` <- road_data_noEuro$`LGV - Petrol - Euro 4` * lgv_average_vkm
        road_data_noEuro$`LGV - Petrol - Euro 5a` <- road_data_noEuro$`LGV - Petrol - Euro 5a` * lgv_average_vkm
        road_data_noEuro$`LGV - Petrol - Euro 5b` <- road_data_noEuro$`LGV - Petrol - Euro 5b` * lgv_average_vkm
        road_data_noEuro$`LGV - Petrol - Euro 6b` <- road_data_noEuro$`LGV - Petrol - Euro 6b` * lgv_average_vkm
        road_data_noEuro$`LGV - Petrol - Euro 6c` <- road_data_noEuro$`LGV - Petrol - Euro 6c` * lgv_average_vkm
        road_data_noEuro$`LGV - Petrol - Euro 6d-Temp` <- road_data_noEuro$`LGV - Petrol - Euro 6d-Temp` * lgv_average_vkm
        road_data_noEuro$`LGV - Petrol - Euro 6d` <- road_data_noEuro$`LGV - Petrol - Euro 6d` * lgv_average_vkm
        road_data_noEuro$`LGV - Petrol - Euro 7` <- road_data_noEuro$`LGV - Petrol - Euro 7` * lgv_average_vkm
        road_data_noEuro$`LGV - Diesel - Euro 1` <- road_data_noEuro$`LGV - Diesel - Euro 1` * lgv_average_vkm
        road_data_noEuro$`LGV - Diesel - Euro 2` <- road_data_noEuro$`LGV - Diesel - Euro 2` * lgv_average_vkm
        road_data_noEuro$`LGV - Diesel - Euro 3` <- road_data_noEuro$`LGV - Diesel - Euro 3` * lgv_average_vkm
        road_data_noEuro$`LGV - Diesel - Euro 4` <- road_data_noEuro$`LGV - Diesel - Euro 4` * lgv_average_vkm
        road_data_noEuro$`LGV - Diesel - Euro 5a` <- road_data_noEuro$`LGV - Diesel - Euro 5a` * lgv_average_vkm
        road_data_noEuro$`LGV - Diesel - Euro 5b` <- road_data_noEuro$`LGV - Diesel - Euro 5b` * lgv_average_vkm
        road_data_noEuro$`LGV - Diesel - Euro 6b` <- road_data_noEuro$`LGV - Diesel - Euro 6b` * lgv_average_vkm
        road_data_noEuro$`LGV - Diesel - Euro 6c` <- road_data_noEuro$`LGV - Diesel - Euro 6c` * lgv_average_vkm
        road_data_noEuro$`LGV - Diesel - Euro 6d-Temp` <- road_data_noEuro$`LGV - Diesel - Euro 6d-Temp` * lgv_average_vkm
        road_data_noEuro$`LGV - Diesel - Euro 6d` <- road_data_noEuro$`LGV - Diesel - Euro 6d` * lgv_average_vkm
        road_data_noEuro$`LGV - Diesel - Euro 7` <- road_data_noEuro$`LGV - Diesel - Euro 7` * lgv_average_vkm
        road_data_noEuro$`LGV - PHEV (Petrol)` <- road_data_noEuro$`LGV - PHEV (Petrol)` * lgv_average_vkm
        road_data_noEuro$`LGV - PHEV (Diesel)` <- road_data_noEuro$`LGV - PHEV (Diesel)` * lgv_average_vkm
        road_data_noEuro$`LGV - Hydrogen Fuel Cell` <- road_data_noEuro$`LGV - Hydrogen Fuel Cell` * lgv_average_vkm
        road_data_noEuro$`LGV - BEV` <- road_data_noEuro$`LGV - BEV` * lgv_average_vkm
        road_data_noEuro$`HGV - CNG - Euro 1` <- road_data_noEuro$`HGV - CNG - Euro 1` * hgv_average_vkm
        road_data_noEuro$`HGV - CNG - Euro 2` <- road_data_noEuro$`HGV - CNG - Euro 2` * hgv_average_vkm
        road_data_noEuro$`HGV - CNG - Euro 3` <- road_data_noEuro$`HGV - CNG - Euro 3` * hgv_average_vkm
        road_data_noEuro$`HGV - CNG - EEV` <- road_data_noEuro$`HGV - CNG - EEV` * hgv_average_vkm
        road_data_noEuro$`HGV - Diesel - Euro 1` <- road_data_noEuro$`HGV - Diesel - Euro 1` * hgv_average_vkm
        road_data_noEuro$`HGV - Diesel - Euro 2` <- road_data_noEuro$`HGV - Diesel - Euro 2` * hgv_average_vkm
        road_data_noEuro$`HGV - Diesel - Euro 3` <- road_data_noEuro$`HGV - Diesel - Euro 3` * hgv_average_vkm
        road_data_noEuro$`HGV - Diesel - Euro 4` <- road_data_noEuro$`HGV - Diesel - Euro 4` * hgv_average_vkm
        road_data_noEuro$`HGV - Diesel - Euro 5` <- road_data_noEuro$`HGV - Diesel - Euro 5` * hgv_average_vkm
        road_data_noEuro$`HGV - Diesel - Euro 6` <- road_data_noEuro$`HGV - Diesel - Euro 6` * hgv_average_vkm
        road_data_noEuro$`HGV - Diesel - Euro 7` <- road_data_noEuro$`HGV - Diesel - Euro 7` * hgv_average_vkm
        road_data_noEuro$`HGV - PHEV (Diesel)` <- road_data_noEuro$`HGV - PHEV (Diesel)` * hgv_average_vkm
        road_data_noEuro$`HGV - Hydrogen Fuel Cell` <- road_data_noEuro$`HGV - Hydrogen Fuel Cell` * hgv_average_vkm
        road_data_noEuro$`HGV - BEV` <- road_data_noEuro$`HGV - BEV` * hgv_average_vkm
        road_data_noEuro$`Bus - CNG - Euro 1` <- road_data_noEuro$`Bus - CNG - Euro 1` * bus_average_vkm
        road_data_noEuro$`Bus - CNG - Euro 2` <- road_data_noEuro$`Bus - CNG - Euro 2` * bus_average_vkm
        road_data_noEuro$`Bus - CNG - Euro 3` <- road_data_noEuro$`Bus - CNG - Euro 3` * bus_average_vkm
        road_data_noEuro$`Bus - CNG - EEV` <- road_data_noEuro$`Bus - CNG - EEV` * bus_average_vkm
        road_data_noEuro$`Bus - Diesel - Euro 1` <- road_data_noEuro$`Bus - Diesel - Euro 1` * bus_average_vkm
        road_data_noEuro$`Bus - Diesel - Euro 2` <- road_data_noEuro$`Bus - Diesel - Euro 2` * bus_average_vkm
        road_data_noEuro$`Bus - Diesel - Euro 3` <- road_data_noEuro$`Bus - Diesel - Euro 3` * bus_average_vkm
        road_data_noEuro$`Bus - Diesel - Euro 4` <- road_data_noEuro$`Bus - Diesel - Euro 4` * bus_average_vkm
        road_data_noEuro$`Bus - Diesel - Euro 5` <- road_data_noEuro$`Bus - Diesel - Euro 5` * bus_average_vkm
        road_data_noEuro$`Bus - Diesel - Euro 6` <- road_data_noEuro$`Bus - Diesel - Euro 6` * bus_average_vkm
        road_data_noEuro$`Bus - Diesel - Euro 7` <- road_data_noEuro$`Bus - Diesel - Euro 7` * bus_average_vkm
        road_data_noEuro$`Bus - PHEV (Diesel)` <- road_data_noEuro$`Bus - PHEV (Diesel)` * bus_average_vkm
        road_data_noEuro$`Bus - Hydrogen Fuel Cell` <- road_data_noEuro$`Bus - Hydrogen Fuel Cell` * bus_average_vkm
        road_data_noEuro$`Bus - BEV` <- road_data_noEuro$`Bus - BEV` * bus_average_vkm
        road_data_noEuro$`Motorcycle - Petrol - Euro 1` <- road_data_noEuro$`Motorcycle - Petrol - Euro 1` * motorcycle_average_vkm
        road_data_noEuro$`Motorcycle - Petrol - Euro 2` <- road_data_noEuro$`Motorcycle - Petrol - Euro 2` * motorcycle_average_vkm
        road_data_noEuro$`Motorcycle - Petrol - Euro 3` <- road_data_noEuro$`Motorcycle - Petrol - Euro 3` * motorcycle_average_vkm
        road_data_noEuro$`Motorcycle - Petrol - Euro 4` <- road_data_noEuro$`Motorcycle - Petrol - Euro 4` * motorcycle_average_vkm
        road_data_noEuro$`Motorcycle - Petrol - Euro 5` <- road_data_noEuro$`Motorcycle - Petrol - Euro 5` * motorcycle_average_vkm
        road_data_noEuro$`Motorcycle - Hydrogen Fuel Cell` <- road_data_noEuro$`Motorcycle - Hydrogen Fuel Cell` * motorcycle_average_vkm
        road_data_noEuro$`Motorcycle - Electric` <- road_data_noEuro$`Motorcycle - Electric` * motorcycle_average_vkm
        
        road_data <- road_data_noEuro[, c(1, 27:113)]
        
        return(road_data)
        
      }
      
    }
    
    
    
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
  
  output$elec_template_run <- downloadHandler(
    
    filename <- function(){
      "Elec_Example_Run.csv"
    },
    
    content <- function(file) {
      file.copy("Template_Runs/Consumer_Transformation/CT_Elec_Run.csv", file)
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
  
  output$dh_template_download_vector <- downloadHandler(
    
    filename <- function(){
      "DomHeat_Template_Vector_Only.csv"
    },
    
    content <- function(file) {
      file.copy("Templates/DomHeat_Template_Vector_Only.csv", file)
    }
    
  )
  
  output$dh_template_run <- downloadHandler(
    
    filename <- function(){
      "DomHeat_Example_Run.csv"
    },
    
    content <- function(file) {
      file.copy("Template_Runs/Consumer_Transformation/CT_DomHeat_Run_FullData.csv", file)
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
  
  output$ph_template_download_vector <- downloadHandler(
    
    filename <- function(){
      "PubHeat_Template_Vector_Only.csv"
    },
    
    content <- function(file) {
      file.copy("Templates/PubHeat_Template_Vector_Only.csv", file)
    }
    
  )
  
  output$ph_template_run <- downloadHandler(
    
    filename <- function(){
      "PubHeat_Example_Run.csv"
    },
    
    content <- function(file) {
      file.copy("Template_Runs/Consumer_Transformation/CT_PubHeat_Run_FullData.csv", file)
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
  
  output$ind_template_download_vector <- downloadHandler(
    
    filename <- function(){
      "Industry_Template_Vector_Only.csv"
    },
    
    content <- function(file) {
      file.copy("Templates/Industry_Template_Vector_Only.csv", file)
    }
  )
  
  output$ind_template_run <- downloadHandler(
    
    filename <- function(){
      "Industry_Example_Run.csv"
    },
    
    content <- function(file) {
      file.copy("Template_Runs/Consumer_Transformation/CT_Ind_Run_FullData.csv", file)
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
  
  output$hyd_template_run <- downloadHandler(
    
    filename <- function(){
      "Hyd_Example_Run.csv"
    },
    
    content <- function(file) {
      file.copy("Template_Runs/Consumer_Transformation/CT_Hyd_Run.csv", file)
    }
  )
  
  output$road_template_download_euro_specific <- downloadHandler(
    
    filename <- function(){
      "road_template_download_euro_specific.csv"
    },
    
    content <- function(file) {
      file.copy("Templates/Road_Transport_Template_Number_Vehicles_or_Gvkm_WithEuroSplit.csv", file)
    }
  )
  
  output$road_template_download_fuel_only <- downloadHandler(
    
    filename <- function(){
      "road_template_download_fuel_only.csv"
    },
    
    content <- function(file) {
      file.copy("Templates/Road_Transport_Template_Number_Vehicles_or_Gvkm_noEuroSplit.csv", file)
    }
  )
  
  output$road_template_run <- downloadHandler(
    
    filename <- function(){
      "Road_Example_Run.csv"
    },
    
    content <- function(file) {
      file.copy("Template_Runs/Consumer_Transformation/Road_Transport_Run_WithEuroSplit.csv", file)
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
      
      addWorksheet(wb, sheetName = "Electricity_SOx_Impacts")
      writeData(wb, sheet = "Electricity_SOx_Impacts", x = df_elec_so2_impacts())
      
      addWorksheet(wb, sheetName = "Electricity_NH3_Impacts")
      writeData(wb, sheet = "Electricity_NH3_Impacts", x = df_elec_nh3_impacts())
      
      addWorksheet(wb, sheetName = "Electricity_SIA_Impacts")
      writeData(wb, sheet = "Electricity_SIA_Impacts", x = df_elec_sia_impacts())
      
      addWorksheet(wb, sheetName = "Electricity_Tot_PM2.5_Impacts")
      writeData(wb, sheet = "Electricity_Tot_PM2.5_Impacts", x = df_elec_tpm25_impacts())
    
      addWorksheet(wb, sheetName = "Hydrogen_CO2_Emissions")
      writeData(wb, sheet = "Hydrogen_CO2_Emissions", x = hyd_co2_emissions())
      
      addWorksheet(wb, sheetName = "Hydrogen_NOx_Impacts")
      writeData(wb, sheet = "Hydrogen_NOx_Impacts", x = hyd_nox_impacts())
      
      addWorksheet(wb, sheetName = "Hydrogen_PM2.5_Impacts")
      writeData(wb, sheet = "Hydrogen_PM2.5_Impacts", x = hyd_pm25_impacts())
      
      addWorksheet(wb, sheetName = "Hydrogen_SOx_Impacts")
      writeData(wb, sheet = "Hydrogen_SOx_Impacts", x = hyd_so2_impacts())
      
      addWorksheet(wb, sheetName = "Hydrogen_NH3_Impacts")
      writeData(wb, sheet = "Hydrogen_NH3_Impacts", x = hyd_nh3_impacts())
      
      addWorksheet(wb, sheetName = "Hydrogen_SIA_Impacts")
      writeData(wb, sheet = "Hydrogen_SIA_Impacts", x = hyd_sia_impacts())
      
      addWorksheet(wb, sheetName = "Hydrogen_Tot_PM2.5_Impacts")
      writeData(wb, sheet = "Hydrogen_Tot_PM2.5_Impacts", x = hyd_tpm25_impacts())
      
      addWorksheet(wb, sheetName = "Dom_Heat_CO2_Emissions")
      writeData(wb, sheet = "Dom_Heat_CO2_Emissions", x = df_dh_co2_emissions())
      
      addWorksheet(wb, sheetName = "Dom_Heat_NOx_Impacts")
      writeData(wb, sheet = "Dom_Heat_NOx_Impacts", x = df_dh_nox_impacts())
      
      addWorksheet(wb, sheetName = "Dom_Heat_PM2.5_Impacts")
      writeData(wb, sheet = "Dom_Heat_PM2.5_Impacts", x = df_dh_pm25_impacts())
      
      addWorksheet(wb, sheetName = "Dom_Heat_SOx_Impacts")
      writeData(wb, sheet = "Dom_Heat_SOx_Impacts", x = df_dh_so2_impacts())
      
      addWorksheet(wb, sheetName = "Dom_Heat_NH3_Impacts")
      writeData(wb, sheet = "Dom_Heat_NH3_Impacts", x = df_dh_nh3_impacts())
      
      addWorksheet(wb, sheetName = "Dom_Heat_SIA_Impacts")
      writeData(wb, sheet = "Dom_Heat_SIA_Impacts", x = df_dh_sia_impacts())
      
      addWorksheet(wb, sheetName = "Dom_Heat_Tot_PM2.5_Impacts")
      writeData(wb, sheet = "Dom_Heat_Tot_PM2.5_Impacts", x = df_dh_tpm25_impacts())
      
      addWorksheet(wb, sheetName = "Pub_Heat_CO2_Emissions")
      writeData(wb, sheet = "Pub_Heat_CO2_Emissions", x = df_ph_co2_emissions())
      
      addWorksheet(wb, sheetName = "Pub_Heat_NOx_Impacts")
      writeData(wb, sheet = "Pub_Heat_NOx_Impacts", x = df_ph_nox_impacts())
      
      addWorksheet(wb, sheetName = "Pub_Heat_PM2.5_Impacts")
      writeData(wb, sheet = "Pub_Heat_PM2.5_Impacts", x = df_ph_pm25_impacts())
      
      addWorksheet(wb, sheetName = "Pub_Heat_SOx_Impacts")
      writeData(wb, sheet = "Pub_Heat_SOx_Impacts", x = df_ph_so2_impacts())
      
      addWorksheet(wb, sheetName = "Pub_Heat_NH3_Impacts")
      writeData(wb, sheet = "Pub_Heat_NH3_Impacts", x = df_ph_nh3_impacts())
      
      addWorksheet(wb, sheetName = "Pub_Heat_SIA_Impacts")
      writeData(wb, sheet = "Pub_Heat_SIA_Impacts", x = df_ph_sia_impacts())
      
      addWorksheet(wb, sheetName = "Pub_Heat_Tot_PM2.5_Impacts")
      writeData(wb, sheet = "Pub_Heat_Tot_PM2.5_Impacts", x = df_ph_tpm25_impacts())
      
      addWorksheet(wb, sheetName = "Iron&Steel_CO2_Emissions")
      writeData(wb, sheet = "Iron&Steel_CO2_Emissions", x = ironsteel_co2_emissions())
      
      addWorksheet(wb, sheetName = "Iron&Steel_NOx_Impacts")
      writeData(wb, sheet = "Iron&Steel_NOx_Impacts", x = ironsteel_nox_impacts())
      
      addWorksheet(wb, sheetName = "Iron&Steel_PM2.5_Impacts")
      writeData(wb, sheet = "Iron&Steel_PM2.5_Impacts", x = ironsteel_pm25_impacts())
      
      addWorksheet(wb, sheetName = "Iron&Steel_SOx_Impacts")
      writeData(wb, sheet = "Iron&Steel_SOx_Impacts", x = ironsteel_so2_impacts())
      
      addWorksheet(wb, sheetName = "Iron&Steel_NH3_Impacts")
      writeData(wb, sheet = "Iron&Steel_NH3_Impacts", x = ironsteel_nh3_impacts())
      
      addWorksheet(wb, sheetName = "Iron&Steel_SIA_Impacts")
      writeData(wb, sheet = "Iron&Steel_SIA_Impacts", x = ironsteel_sia_impacts())
      
      addWorksheet(wb, sheetName = "Iron&Steel_Tot_PM2.5_Impacts")
      writeData(wb, sheet = "Iron&Steel_Tot_PM2.5_Impacts", x = ironsteel_tpm25_impacts())
      
      addWorksheet(wb, sheetName = "NonFerrous_CO2_Emissions")
      writeData(wb, sheet = "NonFerrous_CO2_Emissions", x = nfm_co2_emissions())
      
      addWorksheet(wb, sheetName = "NonFerrous_NOx_Impacts")
      writeData(wb, sheet = "NonFerrous_NOx_Impacts", x = nfm_nox_impacts())
      
      addWorksheet(wb, sheetName = "NonFerrous_PM2.5_Impacts")
      writeData(wb, sheet = "NonFerrous_PM2.5_Impacts", x = nfm_pm25_impacts())
      
      addWorksheet(wb, sheetName = "NonFerrous_SOx_Impacts")
      writeData(wb, sheet = "NonFerrous_SOx_Impacts", x = nfm_so2_impacts())
      
      addWorksheet(wb, sheetName = "NonFerrous_NH3_Impacts")
      writeData(wb, sheet = "NonFerrous_NH3_Impacts", x = nfm_nh3_impacts())
      
      addWorksheet(wb, sheetName = "NonFerrous_SIA_Impacts")
      writeData(wb, sheet = "NonFerrous_SIA_Impacts", x = nfm_sia_impacts())
      
      addWorksheet(wb, sheetName = "NonFerrous_Tot_PM2.5_Impacts")
      writeData(wb, sheet = "NonFerrous_Tot_PM2.5_Impacts", x = nfm_tpm25_impacts())
      
      addWorksheet(wb, sheetName = "Chemicals_CO2_Emissions")
      writeData(wb, sheet = "Chemicals_CO2_Emissions", x = chem_co2_emissions())
      
      addWorksheet(wb, sheetName = "Chemicals_NOx_Impacts")
      writeData(wb, sheet = "Chemicals_NOx_Impacts", x = chem_nox_impacts())
      
      addWorksheet(wb, sheetName = "Chemicals_PM2.5_Impacts")
      writeData(wb, sheet = "Chemicals_PM2.5_Impacts", x = chem_pm25_impacts())
      
      addWorksheet(wb, sheetName = "Chemicals_SOx_Impacts")
      writeData(wb, sheet = "Chemicals_SOx_Impacts", x = chem_so2_impacts())
      
      addWorksheet(wb, sheetName = "Chemicals_NH3_Impacts")
      writeData(wb, sheet = "Chemicals_NH3_Impacts", x = chem_nh3_impacts())
      
      addWorksheet(wb, sheetName = "Chemicals_SIA_Impacts")
      writeData(wb, sheet = "Chemicals_SIA_Impacts", x = chem_sia_impacts())
      
      addWorksheet(wb, sheetName = "Chemicals_Tot_PM2.5_Impacts")
      writeData(wb, sheet = "Chemicals_Tot_PM2.5_Impacts", x = chem_tpm25_impacts())
      
      addWorksheet(wb, sheetName = "Paper_CO2_Emissions")
      writeData(wb, sheet = "Paper_CO2_Emissions", x = pap_co2_emissions())
      
      addWorksheet(wb, sheetName = "Paper_NOx_Impacts")
      writeData(wb, sheet = "Paper_NOx_Impacts", x = pap_nox_impacts())
      
      addWorksheet(wb, sheetName = "Paper_PM2.5_Impacts")
      writeData(wb, sheet = "Paper_PM2.5_Impacts", x = pap_pm25_impacts())
      
      addWorksheet(wb, sheetName = "Paper_SOx_Impacts")
      writeData(wb, sheet = "Paper_SOx_Impacts", x = pap_so2_impacts())
      
      addWorksheet(wb, sheetName = "Paper_NH3_Impacts")
      writeData(wb, sheet = "Paper_NH3_Impacts", x = pap_nh3_impacts())
      
      addWorksheet(wb, sheetName = "Paper_SIA_Impacts")
      writeData(wb, sheet = "Paper_SIA_Impacts", x = pap_sia_impacts())
      
      addWorksheet(wb, sheetName = "Paper_Tot_PM2.5_Impacts")
      writeData(wb, sheet = "Paper_Tot_PM2.5_Impacts", x = pap_tpm25_impacts())
      
      addWorksheet(wb, sheetName = "Food_CO2_Emissions")
      writeData(wb, sheet = "Food_CO2_Emissions", x = food_co2_emissions())
      
      addWorksheet(wb, sheetName = "Food_NOx_Impacts")
      writeData(wb, sheet = "Food_NOx_Impacts", x = food_nox_impacts())
      
      addWorksheet(wb, sheetName = "Food_PM2.5_Impacts")
      writeData(wb, sheet = "Food_PM2.5_Impacts", x = food_pm25_impacts())
      
      addWorksheet(wb, sheetName = "Food_SOx_Impacts")
      writeData(wb, sheet = "Food_SOx_Impacts", x = food_so2_impacts())
      
      addWorksheet(wb, sheetName = "Food_NH3_Impacts")
      writeData(wb, sheet = "Food_NH3_Impacts", x = food_nh3_impacts())
      
      addWorksheet(wb, sheetName = "Food_SIA_Impacts")
      writeData(wb, sheet = "Food_SIA_Impacts", x = food_sia_impacts())
      
      addWorksheet(wb, sheetName = "Food_Tot_PM2.5_Impacts")
      writeData(wb, sheet = "Food_Tot_PM2.5_Impacts", x = food_tpm25_impacts())
      
      addWorksheet(wb, sheetName = "Minerals_CO2_Emissions")
      writeData(wb, sheet = "Minerals_CO2_Emissions", x = min_co2_emissions())
      
      addWorksheet(wb, sheetName = "Minerals_NOx_Impacts")
      writeData(wb, sheet = "Minerals_NOx_Impacts", x = min_nox_impacts())
      
      addWorksheet(wb, sheetName = "Minerals_PM2.5_Impacts")
      writeData(wb, sheet = "Minerals_PM2.5_Impacts", x = min_pm25_impacts())
      
      addWorksheet(wb, sheetName = "Minerals_SOx_Impacts")
      writeData(wb, sheet = "Minerals_SOx_Impacts", x = min_so2_impacts())
      
      addWorksheet(wb, sheetName = "Minerals_NH3_Impacts")
      writeData(wb, sheet = "Minerals_NH3_Impacts", x = min_nh3_impacts())
      
      addWorksheet(wb, sheetName = "Minerals_SIA_Impacts")
      writeData(wb, sheet = "Minerals_SIA_Impacts", x = min_sia_impacts())
      
      addWorksheet(wb, sheetName = "Minerals_Tot_PM2.5_Impacts")
      writeData(wb, sheet = "Minerals_Tot_PM2.5_Impacts", x = min_tpm25_impacts())
      
      addWorksheet(wb, sheetName = "Textiles_CO2_Emissions")
      writeData(wb, sheet = "Textiles_CO2_Emissions", x = text_co2_emissions())
      
      addWorksheet(wb, sheetName = "Textiles_NOx_Impacts")
      writeData(wb, sheet = "Textiles_NOx_Impacts", x = text_nox_impacts())
      
      addWorksheet(wb, sheetName = "Textiles_PM2.5_Impacts")
      writeData(wb, sheet = "Textiles_PM2.5_Impacts", x = text_pm25_impacts())
      
      addWorksheet(wb, sheetName = "Textiles_SOx_Impacts")
      writeData(wb, sheet = "Textiles_SOx_Impacts", x = text_so2_impacts())
      
      addWorksheet(wb, sheetName = "Textiles_NH3_Impacts")
      writeData(wb, sheet = "Textiles_NH3_Impacts", x = text_nh3_impacts())
      
      addWorksheet(wb, sheetName = "Textiles_SIA_Impacts")
      writeData(wb, sheet = "Textiles_SIA_Impacts", x = text_sia_impacts())
      
      addWorksheet(wb, sheetName = "Textiles_Tot_PM2.5_Impacts")
      writeData(wb, sheet = "Textiles_Tot_PM2.5_Impacts", x = text_tpm25_impacts())
      
      addWorksheet(wb, sheetName = "Construction_CO2_Emissions")
      writeData(wb, sheet = "Construction_CO2_Emissions", x = con_co2_emissions())
      
      addWorksheet(wb, sheetName = "Construction_NOx_Impacts")
      writeData(wb, sheet = "Construction_NOx_Impacts", x = con_nox_impacts())
      
      addWorksheet(wb, sheetName = "Construction_PM2.5_Impacts")
      writeData(wb, sheet = "Construction_PM2.5_Impacts", x = con_pm25_impacts())
      
      addWorksheet(wb, sheetName = "Construction_SOx_Impacts")
      writeData(wb, sheet = "Construction_SOx_Impacts", x = con_so2_impacts())
      
      addWorksheet(wb, sheetName = "Construction_NH3_Impacts")
      writeData(wb, sheet = "Construction_NH3_Impacts", x = con_nh3_impacts())
      
      addWorksheet(wb, sheetName = "Construction_SIA_Impacts")
      writeData(wb, sheet = "Construction_SIA_Impacts", x = con_sia_impacts())
      
      addWorksheet(wb, sheetName = "Construction_Tot_PM2.5_Impacts")
      writeData(wb, sheet = "Construction_Tot_PM2.5_Impacts", x = con_tpm25_impacts())
      
      addWorksheet(wb, sheetName = "Other_CO2_Emissions")
      writeData(wb, sheet = "Other_CO2_Emissions", x = other_co2_emissions())
      
      addWorksheet(wb, sheetName = "Other_NOx_Impacts")
      writeData(wb, sheet = "Other_NOx_Impacts", x = other_nox_impacts())
      
      addWorksheet(wb, sheetName = "Other_PM2.5_Impacts")
      writeData(wb, sheet = "Other_PM2.5_Impacts", x = other_pm25_impacts())
      
      addWorksheet(wb, sheetName = "Other_SOx_Impacts")
      writeData(wb, sheet = "Other_SOx_Impacts", x = other_so2_impacts())
      
      addWorksheet(wb, sheetName = "Other_NH3_Impacts")
      writeData(wb, sheet = "Other_NH3_Impacts", x = other_nh3_impacts())
      
      addWorksheet(wb, sheetName = "Other_SIA_Impacts")
      writeData(wb, sheet = "Other_SIA_Impacts", x = other_sia_impacts())
      
      addWorksheet(wb, sheetName = "Other_Tot_PM2.5_Impacts")
      writeData(wb, sheet = "Other_Tot_PM2.5_Impacts", x = other_tpm25_impacts())
      
      addWorksheet(wb, sheetName = "Road_CO2_Emissions")
      writeData(wb, sheet = "Road_CO2_Emissions", x = road_co2_emissions())
      
      addWorksheet(wb, sheetName = "Road_NOx_Impacts")
      writeData(wb, sheet = "Road_NOx_Impacts", x = road_nox_impacts())
      
      addWorksheet(wb, sheetName = "Road_PM2.5_Exhaust_Impacts")
      writeData(wb, sheet = "Road_PM2.5_Exhaust_Impacts", x = road_pm25_exhaust_impacts())
      
      addWorksheet(wb, sheetName = "Road_PM2.5_Tyre_Impacts")
      writeData(wb, sheet = "Road_PM2.5_Tyre_Impacts", x = road_pm25_tyre_impacts())
      
      addWorksheet(wb, sheetName = "Road_PM2.5_Brake_Impacts")
      writeData(wb, sheet = "Road_PM2.5_Brake_Impacts", x = road_pm25_brake_impacts())
      
      addWorksheet(wb, sheetName = "Road_PM2.5_Road_Impacts")
      writeData(wb, sheet = "Road_PM2.5_Road_Impacts", x = road_pm25_road_impacts())
      
      addWorksheet(wb, sheetName = "Road_SOx_Impacts")
      writeData(wb, sheet = "Road_SOx_Impacts", x = road_so2_impacts())
      
      addWorksheet(wb, sheetName = "Road_NH3_Impacts")
      writeData(wb, sheet = "Road_NH3_Impacts", x = road_nh3_impacts())
      
      addWorksheet(wb, sheetName = "Road_SIA_Impacts")
      writeData(wb, sheet = "Road_SIA_Impacts", x = road_sia_impacts())
      
      addWorksheet(wb, sheetName = "Road_Tot_PM2.5_Impacts")
      writeData(wb, sheet = "Road_Tot_PM2.5_Impacts", x = road_tpm25_impacts())
      
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
      
      addWorksheet(wb, sheetName = "Electricity_SOx_Impacts")
      writeData(wb, sheet = "Electricity_SOx_Impacts", x = df_elec_so2_impacts())
      
      addWorksheet(wb, sheetName = "Electricity_NH3_Impacts")
      writeData(wb, sheet = "Electricity_NH3_Impacts", x = df_elec_nh3_impacts())
      
      addWorksheet(wb, sheetName = "Electricity_SIA_Impacts")
      writeData(wb, sheet = "Electricity_SIA_Impacts", x = df_elec_sia_impacts())
      
      addWorksheet(wb, sheetName = "Electricity_Tot_PM2.5_Impacts")
      writeData(wb, sheet = "Electricity_Tot_PM2.5_Impacts", x = df_elec_tpm25_impacts())
      
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
      
      addWorksheet(wb, sheetName = "Hydrogen_SOx_Impacts")
      writeData(wb, sheet = "Hydrogen_SOx_Impacts", x = hyd_so2_impacts())
      
      addWorksheet(wb, sheetName = "Hydrogen_NH3_Impacts")
      writeData(wb, sheet = "Hydrogen_NH3_Impacts", x = hyd_nh3_impacts())
      
      addWorksheet(wb, sheetName = "Hydrogen_SIA_Impacts")
      writeData(wb, sheet = "Hydrogen_SIA_Impacts", x = hyd_sia_impacts())
      
      addWorksheet(wb, sheetName = "Hydrogen_Tot_PM2.5_Impacts")
      writeData(wb, sheet = "Hydrogen_Tot_PM2.5_Impacts", x = hyd_tpm25_impacts())
      
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
      
      addWorksheet(wb, sheetName = "Dom_Heat_SOx_Impacts")
      writeData(wb, sheet = "Dom_Heat_SOx_Impacts", x = df_dh_so2_impacts())
      
      addWorksheet(wb, sheetName = "Dom_Heat_NH3_Impacts")
      writeData(wb, sheet = "Dom_Heat_NH3_Impacts", x = df_dh_nh3_impacts())
      
      addWorksheet(wb, sheetName = "Dom_Heat_SIA_Impacts")
      writeData(wb, sheet = "Dom_Heat_SIA_Impacts", x = df_dh_sia_impacts())
      
      addWorksheet(wb, sheetName = "Dom_Heat_Tot_PM2.5_Impacts")
      writeData(wb, sheet = "Dom_Heat_Tot_PM2.5_Impacts", x = df_dh_tpm25_impacts())
      
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
      
      addWorksheet(wb, sheetName = "Pub_Heat_SOx_Impacts")
      writeData(wb, sheet = "Pub_Heat_SOx_Impacts", x = df_ph_so2_impacts())
      
      addWorksheet(wb, sheetName = "Pub_Heat_NH3_Impacts")
      writeData(wb, sheet = "Pub_Heat_NH3_Impacts", x = df_ph_nh3_impacts())
      
      addWorksheet(wb, sheetName = "Pub_Heat_SIA_Impacts")
      writeData(wb, sheet = "Pub_Heat_SIA_Impacts", x = df_ph_sia_impacts())
      
      addWorksheet(wb, sheetName = "Pub_Heat_Tot_PM2.5_Impacts")
      writeData(wb, sheet = "Pub_Heat_Tot_PM2.5_Impacts", x = df_ph_tpm25_impacts())
      
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
      
      addWorksheet(wb, sheetName = "Iron&Steel_SOx_Impacts")
      writeData(wb, sheet = "Iron&Steel_SOx_Impacts", x = ironsteel_so2_impacts())
      
      addWorksheet(wb, sheetName = "Iron&Steel_NH3_Impacts")
      writeData(wb, sheet = "Iron&Steel_NH3_Impacts", x = ironsteel_nh3_impacts())
      
      addWorksheet(wb, sheetName = "Iron&Steel_SIA_Impacts")
      writeData(wb, sheet = "Iron&Steel_SIA_Impacts", x = ironsteel_sia_impacts())
      
      addWorksheet(wb, sheetName = "Iron&Steel_Tot_PM2.5_Impacts")
      writeData(wb, sheet = "Iron&Steel_Tot_PM2.5_Impacts", x = ironsteel_tpm25_impacts())
      
      addWorksheet(wb, sheetName = "NonFerrous_CO2_Emissions")
      writeData(wb, sheet = "NonFerrous_CO2_Emissions", x = nfm_co2_emissions())
      
      addWorksheet(wb, sheetName = "NonFerrous_NOx_Impacts")
      writeData(wb, sheet = "NonFerrous_NOx_Impacts", x = nfm_nox_impacts())
      
      addWorksheet(wb, sheetName = "NonFerrous_PM2.5_Impacts")
      writeData(wb, sheet = "NonFerrous_PM2.5_Impacts", x = nfm_pm25_impacts())
      
      addWorksheet(wb, sheetName = "NonFerrous_SOx_Impacts")
      writeData(wb, sheet = "NonFerrous_SOx_Impacts", x = nfm_so2_impacts())
      
      addWorksheet(wb, sheetName = "NonFerrous_NH3_Impacts")
      writeData(wb, sheet = "NonFerrous_NH3_Impacts", x = nfm_nh3_impacts())
      
      addWorksheet(wb, sheetName = "NonFerrous_SIA_Impacts")
      writeData(wb, sheet = "NonFerrous_SIA_Impacts", x = nfm_sia_impacts())
      
      addWorksheet(wb, sheetName = "NonFerrous_Tot_PM2.5_Impacts")
      writeData(wb, sheet = "NonFerrous_Tot_PM2.5_Impacts", x = nfm_tpm25_impacts())
      
      addWorksheet(wb, sheetName = "Chemicals_CO2_Emissions")
      writeData(wb, sheet = "Chemicals_CO2_Emissions", x = chem_co2_emissions())
      
      addWorksheet(wb, sheetName = "Chemicals_NOx_Impacts")
      writeData(wb, sheet = "Chemicals_NOx_Impacts", x = chem_nox_impacts())
      
      addWorksheet(wb, sheetName = "Chemicals_PM2.5_Impacts")
      writeData(wb, sheet = "Chemicals_PM2.5_Impacts", x = chem_pm25_impacts())
      
      addWorksheet(wb, sheetName = "Chemicals_SOx_Impacts")
      writeData(wb, sheet = "Chemicals_SOx_Impacts", x = chem_so2_impacts())
      
      addWorksheet(wb, sheetName = "Chemicals_NH3_Impacts")
      writeData(wb, sheet = "Chemicals_NH3_Impacts", x = chem_nh3_impacts())
      
      addWorksheet(wb, sheetName = "Chemicals_SIA_Impacts")
      writeData(wb, sheet = "Chemicals_SIA_Impacts", x = chem_sia_impacts())
      
      addWorksheet(wb, sheetName = "Chemicals_Tot_PM2.5_Impacts")
      writeData(wb, sheet = "Chemicals_Tot_PM2.5_Impacts", x = chem_tpm25_impacts())
      
      addWorksheet(wb, sheetName = "Paper_CO2_Emissions")
      writeData(wb, sheet = "Paper_CO2_Emissions", x = pap_co2_emissions())
      
      addWorksheet(wb, sheetName = "Paper_NOx_Impacts")
      writeData(wb, sheet = "Paper_NOx_Impacts", x = pap_nox_impacts())
      
      addWorksheet(wb, sheetName = "Paper_PM2.5_Impacts")
      writeData(wb, sheet = "Paper_PM2.5_Impacts", x = pap_pm25_impacts())
      
      addWorksheet(wb, sheetName = "Paper_SOx_Impacts")
      writeData(wb, sheet = "Paper_SOx_Impacts", x = pap_so2_impacts())
      
      addWorksheet(wb, sheetName = "Paper_NH3_Impacts")
      writeData(wb, sheet = "Paper_NH3_Impacts", x = pap_nh3_impacts())
      
      addWorksheet(wb, sheetName = "Paper_SIA_Impacts")
      writeData(wb, sheet = "Paper_SIA_Impacts", x = pap_sia_impacts())
      
      addWorksheet(wb, sheetName = "Paper_Tot_PM2.5_Impacts")
      writeData(wb, sheet = "Paper_Tot_PM2.5_Impacts", x = pap_tpm25_impacts())
      
      addWorksheet(wb, sheetName = "Food_CO2_Emissions")
      writeData(wb, sheet = "Food_CO2_Emissions", x = food_co2_emissions())
      
      addWorksheet(wb, sheetName = "Food_NOx_Impacts")
      writeData(wb, sheet = "Food_NOx_Impacts", x = food_nox_impacts())
      
      addWorksheet(wb, sheetName = "Food_PM2.5_Impacts")
      writeData(wb, sheet = "Food_PM2.5_Impacts", x = food_pm25_impacts())
      
      addWorksheet(wb, sheetName = "Food_SOx_Impacts")
      writeData(wb, sheet = "Food_SOx_Impacts", x = food_so2_impacts())
      
      addWorksheet(wb, sheetName = "Food_NH3_Impacts")
      writeData(wb, sheet = "Food_NH3_Impacts", x = food_nh3_impacts())
      
      addWorksheet(wb, sheetName = "Food_SIA_Impacts")
      writeData(wb, sheet = "Food_SIA_Impacts", x = food_sia_impacts())
      
      addWorksheet(wb, sheetName = "Food_Tot_PM2.5_Impacts")
      writeData(wb, sheet = "Food_Tot_PM2.5_Impacts", x = food_tpm25_impacts())
      
      addWorksheet(wb, sheetName = "Minerals_CO2_Emissions")
      writeData(wb, sheet = "Minerals_CO2_Emissions", x = min_co2_emissions())
      
      addWorksheet(wb, sheetName = "Minerals_NOx_Impacts")
      writeData(wb, sheet = "Minerals_NOx_Impacts", x = min_nox_impacts())
      
      addWorksheet(wb, sheetName = "Minerals_PM2.5_Impacts")
      writeData(wb, sheet = "Minerals_PM2.5_Impacts", x = min_pm25_impacts())
      
      addWorksheet(wb, sheetName = "Minerals_SOx_Impacts")
      writeData(wb, sheet = "Minerals_SOx_Impacts", x = min_so2_impacts())
      
      addWorksheet(wb, sheetName = "Minerals_NH3_Impacts")
      writeData(wb, sheet = "Minerals_NH3_Impacts", x = min_nh3_impacts())
      
      addWorksheet(wb, sheetName = "Minerals_SIA_Impacts")
      writeData(wb, sheet = "Minerals_SIA_Impacts", x = min_sia_impacts())
      
      addWorksheet(wb, sheetName = "Minerals_Tot_PM2.5_Impacts")
      writeData(wb, sheet = "Minerals_Tot_PM2.5_Impacts", x = min_tpm25_impacts())
      
      addWorksheet(wb, sheetName = "Textiles_CO2_Emissions")
      writeData(wb, sheet = "Textiles_CO2_Emissions", x = text_co2_emissions())
      
      addWorksheet(wb, sheetName = "Textiles_NOx_Impacts")
      writeData(wb, sheet = "Textiles_NOx_Impacts", x = text_nox_impacts())
      
      addWorksheet(wb, sheetName = "Textiles_PM2.5_Impacts")
      writeData(wb, sheet = "Textiles_PM2.5_Impacts", x = text_pm25_impacts())
      
      addWorksheet(wb, sheetName = "Textiles_SOx_Impacts")
      writeData(wb, sheet = "Textiles_SOx_Impacts", x = text_so2_impacts())
      
      addWorksheet(wb, sheetName = "Textiles_NH3_Impacts")
      writeData(wb, sheet = "Textiles_NH3_Impacts", x = text_nh3_impacts())
      
      addWorksheet(wb, sheetName = "Textiles_SIA_Impacts")
      writeData(wb, sheet = "Textiles_SIA_Impacts", x = text_sia_impacts())
      
      addWorksheet(wb, sheetName = "Textiles_Tot_PM2.5_Impacts")
      writeData(wb, sheet = "Textiles_Tot_PM2.5_Impacts", x = text_tpm25_impacts())
      
      addWorksheet(wb, sheetName = "Construction_CO2_Emissions")
      writeData(wb, sheet = "Construction_CO2_Emissions", x = con_co2_emissions())
      
      addWorksheet(wb, sheetName = "Construction_NOx_Impacts")
      writeData(wb, sheet = "Construction_NOx_Impacts", x = con_nox_impacts())
      
      addWorksheet(wb, sheetName = "Construction_PM2.5_Impacts")
      writeData(wb, sheet = "Construction_PM2.5_Impacts", x = con_pm25_impacts())
      
      addWorksheet(wb, sheetName = "Construction_SOx_Impacts")
      writeData(wb, sheet = "Construction_SOx_Impacts", x = con_so2_impacts())
      
      addWorksheet(wb, sheetName = "Construction_NH3_Impacts")
      writeData(wb, sheet = "Construction_NH3_Impacts", x = con_nh3_impacts())
      
      addWorksheet(wb, sheetName = "Construction_SIA_Impacts")
      writeData(wb, sheet = "Construction_SIA_Impacts", x = con_sia_impacts())
      
      addWorksheet(wb, sheetName = "Construction_Tot_PM2.5_Impacts")
      writeData(wb, sheet = "Construction_Tot_PM2.5_Impacts", x = con_tpm25_impacts())
      
      addWorksheet(wb, sheetName = "Other_CO2_Emissions")
      writeData(wb, sheet = "Other_CO2_Emissions", x = other_co2_emissions())
      
      addWorksheet(wb, sheetName = "Other_NOx_Impacts")
      writeData(wb, sheet = "Other_NOx_Impacts", x = other_nox_impacts())
      
      addWorksheet(wb, sheetName = "Other_PM2.5_Impacts")
      writeData(wb, sheet = "Other_PM2.5_Impacts", x = other_pm25_impacts())
      
      addWorksheet(wb, sheetName = "Other_SOx_Impacts")
      writeData(wb, sheet = "Other_SOx_Impacts", x = other_so2_impacts())
      
      addWorksheet(wb, sheetName = "Other_NH3_Impacts")
      writeData(wb, sheet = "Other_NH3_Impacts", x = other_nh3_impacts())
      
      addWorksheet(wb, sheetName = "Other_SIA_Impacts")
      writeData(wb, sheet = "Other_SIA_Impacts", x = other_sia_impacts())
      
      addWorksheet(wb, sheetName = "Other_Tot_PM2.5_Impacts")
      writeData(wb, sheet = "Other_Tot_PM2.5_Impacts", x = other_tpm25_impacts())
      
      saveWorkbook(wb, file)
      
    }
  )
  
  
  output$download_road_xlsx <- downloadHandler(
    
    filename = function(){
      
      paste("CAPSAM_Road_Data-", Sys.time(),".xlsx")
      
    },
    
    content = function(file){
      
      wb <- createWorkbook()
      
      addWorksheet(wb, sheetName = "Road_CO2_Emissions")
      writeData(wb, sheet = "Road_CO2_Emissions", x = road_co2_emissions())
      
      addWorksheet(wb, sheetName = "Road_NOx_Impacts")
      writeData(wb, sheet = "Road_NOx_Impacts", x = road_nox_impacts())
      
      addWorksheet(wb, sheetName = "Road_PM2.5_Exhaust_Impacts")
      writeData(wb, sheet = "Road_PM2.5_Exhaust_Impacts", x = road_pm25_exhaust_impacts())
      
      addWorksheet(wb, sheetName = "Road_PM2.5_Tyre_Impacts")
      writeData(wb, sheet = "Road_PM2.5_Tyre_Impacts", x = road_pm25_tyre_impacts())
      
      addWorksheet(wb, sheetName = "Road_PM2.5_Brake_Impacts")
      writeData(wb, sheet = "Road_PM2.5_Brake_Impacts", x = road_pm25_brake_impacts())
      
      addWorksheet(wb, sheetName = "Road_PM2.5_Road_Impacts")
      writeData(wb, sheet = "Road_PM2.5_Road_Impacts", x = road_pm25_road_impacts())
      
      addWorksheet(wb, sheetName = "Road_SOx_Impacts")
      writeData(wb, sheet = "Road_SOx_Impacts", x = road_so2_impacts())
      
      addWorksheet(wb, sheetName = "Road_NH3_Impacts")
      writeData(wb, sheet = "Road_NH3_Impacts", x = road_nh3_impacts())
      
      addWorksheet(wb, sheetName = "Road_SIA_Impacts")
      writeData(wb, sheet = "Road_SIA_Impacts", x = road_sia_impacts())
      
      addWorksheet(wb, sheetName = "Road_Tot_PM2.5_Impacts")
      writeData(wb, sheet = "Road_Tot_PM2.5_Impacts", x = road_tpm25_impacts())
      
      saveWorkbook(wb, file)
      
    }
  )
  
  
  observeEvent(input$welcome, {
    
    shinyalert("Welcome to CAPSAM!", "This website is designed to read energy system data (in TWh) for a variety of sectors. From here, CAPSAM will output GHG emissions, air quality impacts, and damage cost data.\n\nTo use CAPSAM, upload your energy data into the required slots on the 'Import Scenarios CSV' page (empty and completed templates are also provided).\n\nCAPSAM also allows for a range of different data forms for building heating and industrial combustion. Select the drop down on the 'Scenario Questions' page to determine your data type - CAPSAM can then make some basic assumptions to produce the necessary data.\n\nEmissions and impacts can also be changed to be 'per TWh', and using both 20-year and 100-year global warming potentials.\n\nAir pollution and GHG results can be downloaded as a .csv for all sectors in one file, or individually, by clicking to corresponding download button in the 'Results Download' box.\n\nMore information is provided on the 'About CAPSAM' page.", type = "info", size = "m")
    
    })
  
  
  
  #######################################################################################################################################################################
  
  
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
    
    long_df_elec_co2_emissions <- melt(df_elec_co2_emissions()[, 1:17], id.vars = "Year", variable.name = "Source", value.name = "Emissions", na.rm = TRUE)
      
      
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
    
      long_df_elec_nox_impacts <- melt(df_elec_nox_impacts()[, 1:10], id.vars = "Year", variable.name = "Source", value.name = "PWMC", na.rm = TRUE)
      
      
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
  
  # PM2.5 PWMC Impacts - taking out per TWh section until Total PM2.5 (tpm25) section later
  
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
    
      # PM2.5 Impacts from electricity generation
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
  
  })
  
  ####################################################################################################################################
  # Secondary NOx Impacts - taking NOx emissions from pNOx section - taking out per TWh section until Total PM2.5 (tpm25) section later
  
  df_elec_snox_impacts <- reactive({
    
    req(df_elec_nox_emissions())
    
    # Producing PWMC Impacts using UK-to-UK impact factors 
    df_elec_snox_impacts <- df_elec_nox_emissions()[,1:9]
    
    # Absolute Impacts
    
      # sNOx Impacts from electricity generation
      df_elec_snox_impacts$Biomass <- df_elec_snox_impacts$Biomass * elec_snox_IF_Other
      df_elec_snox_impacts$BECCS <- df_elec_snox_impacts$BECCS * elec_snox_IF_Other
      df_elec_snox_impacts$Gas <- df_elec_snox_impacts$Gas * elec_snox_IF_Gas
      df_elec_snox_impacts$`Gas CCS` <- df_elec_snox_impacts$`Gas CCS` * elec_snox_IF_Gas
      df_elec_snox_impacts$Hydrogen <- df_elec_snox_impacts$Hydrogen * elec_snox_IF_Gas
      df_elec_snox_impacts$Coal <- df_elec_snox_impacts$Coal * elec_snox_IF_Other
      df_elec_snox_impacts$Waste <- df_elec_snox_impacts$Waste * elec_snox_IF_Other
      df_elec_snox_impacts$`Other thermal` <- df_elec_snox_impacts$`Other thermal` * elec_snox_IF_Other
      df_elec_snox_impacts$`Total Impact` <- rowSums(df_elec_snox_impacts[, 2:9], na.rm = TRUE)
      
      return(df_elec_snox_impacts)
      
  })
  
  ####################################################################################################################################
  
  # SO2 Impacts - taking out per TWh section until Total PM2.5 (tpm25) section later
  
  df_elec_so2_emissions <- reactive({
    
    req(input_elec_file())
    
    df_elec_so2_emissions <- input_elec_file()[, 1:9]
    
    df_elec_so2_emissions$Biomass <- df_elec_so2_emissions$Biomass * elec_so2_EF_Biomass
    df_elec_so2_emissions$BECCS <- df_elec_so2_emissions$BECCS * elec_so2_EF_BECCS
    df_elec_so2_emissions$Gas <- df_elec_so2_emissions$Gas * elec_so2_EF_Gas
    df_elec_so2_emissions$`Gas CCS` <- df_elec_so2_emissions$`Gas CCS` * elec_so2_EF_GasCCS
    df_elec_so2_emissions$Hydrogen <- df_elec_so2_emissions$Hydrogen * elec_so2_EF_Hydrogen
    df_elec_so2_emissions$Coal <- df_elec_so2_emissions$Coal * elec_so2_EF_Coal
    df_elec_so2_emissions$Waste <- df_elec_so2_emissions$Waste * elec_so2_EF_Waste
    df_elec_so2_emissions$`Other thermal` <- df_elec_so2_emissions$`Other thermal` * elec_so2_EF_OtherThermal
    df_elec_so2_emissions$`Total Emissions` <- rowSums(df_elec_so2_emissions[, 2:9], na.rm = TRUE)
    
    return(df_elec_so2_emissions)
    
  })
  
  
  df_elec_so2_impacts <- reactive({
    
    req(df_elec_so2_emissions())
    
    # Producing PWMC Impacts using UK-to-UK impact factors 
    df_elec_so2_impacts <- df_elec_so2_emissions()[,1:9]
    
    # Absolute Impacts
    
    # PM2.5 Impacts from electricity generation
    df_elec_so2_impacts$Biomass <- df_elec_so2_impacts$Biomass * elec_so2_IF_Other
    df_elec_so2_impacts$BECCS <- df_elec_so2_impacts$BECCS * elec_so2_IF_Other
    df_elec_so2_impacts$Gas <- df_elec_so2_impacts$Gas * elec_so2_IF_Gas
    df_elec_so2_impacts$`Gas CCS` <- df_elec_so2_impacts$`Gas CCS` * elec_so2_IF_Gas
    df_elec_so2_impacts$Hydrogen <- df_elec_so2_impacts$Hydrogen * elec_so2_IF_Gas
    df_elec_so2_impacts$Coal <- df_elec_so2_impacts$Coal * elec_so2_IF_Other
    df_elec_so2_impacts$Waste <- df_elec_so2_impacts$Waste * elec_so2_IF_Other
    df_elec_so2_impacts$`Other thermal` <- df_elec_so2_impacts$`Other thermal` * elec_so2_IF_Other
    df_elec_so2_impacts$`Total Impact` <- rowSums(df_elec_so2_impacts[, 2:9], na.rm = TRUE)
    
    return(df_elec_so2_impacts)
    
  })
  
  
  ####################################################################################################################################
  
  # NH3 Impacts - taking out per TWh section until Total PM2.5 (tpm25) section later
  
  df_elec_nh3_emissions <- reactive({
    
    req(input_elec_file())
    
    df_elec_nh3_emissions <- input_elec_file()[, 1:9]
    
    df_elec_nh3_emissions$Biomass <- df_elec_nh3_emissions$Biomass * elec_nh3_EF_Biomass
    df_elec_nh3_emissions$BECCS <- df_elec_nh3_emissions$BECCS * elec_nh3_EF_BECCS
    df_elec_nh3_emissions$Gas <- df_elec_nh3_emissions$Gas * elec_nh3_EF_Gas
    df_elec_nh3_emissions$`Gas CCS` <- df_elec_nh3_emissions$`Gas CCS` * elec_nh3_EF_GasCCS
    df_elec_nh3_emissions$Hydrogen <- df_elec_nh3_emissions$Hydrogen * elec_nh3_EF_Hydrogen
    df_elec_nh3_emissions$Coal <- df_elec_nh3_emissions$Coal * elec_nh3_EF_Coal
    df_elec_nh3_emissions$Waste <- df_elec_nh3_emissions$Waste * elec_nh3_EF_Waste
    df_elec_nh3_emissions$`Other thermal` <- df_elec_nh3_emissions$`Other thermal` * elec_nh3_EF_OtherThermal
    df_elec_nh3_emissions$`Total Emissions` <- rowSums(df_elec_nh3_emissions[, 2:9], na.rm = TRUE)
    
    return(df_elec_nh3_emissions)
    
  })
  
  
  df_elec_nh3_impacts <- reactive({
    
    req(df_elec_nh3_emissions())
    
    # Producing PWMC Impacts using UK-to-UK impact factors 
    df_elec_nh3_impacts <- df_elec_nh3_emissions()[,1:9]
    
    # Absolute Impacts
    
    # PM2.5 Impacts from electricity generation
    df_elec_nh3_impacts$Biomass <- df_elec_nh3_impacts$Biomass * elec_nh3_IF_Other
    df_elec_nh3_impacts$BECCS <- df_elec_nh3_impacts$BECCS * elec_nh3_IF_Other
    df_elec_nh3_impacts$Gas <- df_elec_nh3_impacts$Gas * elec_nh3_IF_Gas
    df_elec_nh3_impacts$`Gas CCS` <- df_elec_nh3_impacts$`Gas CCS` * elec_nh3_IF_Gas
    df_elec_nh3_impacts$Hydrogen <- df_elec_nh3_impacts$Hydrogen * elec_nh3_IF_Gas
    df_elec_nh3_impacts$Coal <- df_elec_nh3_impacts$Coal * elec_nh3_IF_Other
    df_elec_nh3_impacts$Waste <- df_elec_nh3_impacts$Waste * elec_nh3_IF_Other
    df_elec_nh3_impacts$`Other thermal` <- df_elec_nh3_impacts$`Other thermal` * elec_nh3_IF_Other
    df_elec_nh3_impacts$`Total Impact` <- rowSums(df_elec_nh3_impacts[, 2:9], na.rm = TRUE)
    
    return(df_elec_nh3_impacts)
    
  })
  
  
  ####################################################################################################################################
  
  # SIA impacts - to combine after with primary PM2.5 impacts to get total PM2.5
  
  df_elec_sia_impacts <-  reactive({
    
    req(df_elec_snox_impacts())
    req(df_elec_so2_impacts())
    req(df_elec_nh3_impacts())
    
    # Producing PWMC Impacts using UK-to-UK impact factors 
    df_elec_sia_impacts <- df_elec_snox_impacts()[,1:9]
    
    # Absolute Impacts
    
    # sNOx Impacts from electricity generation
    df_elec_sia_impacts$Biomass <- df_elec_snox_impacts()$Biomass + df_elec_so2_impacts()$Biomass + df_elec_nh3_impacts()$Biomass
    df_elec_sia_impacts$BECCS <- df_elec_snox_impacts()$BECCS + df_elec_so2_impacts()$BECCS + df_elec_nh3_impacts()$BECCS
    df_elec_sia_impacts$Gas <- df_elec_snox_impacts()$Gas + df_elec_so2_impacts()$Gas + df_elec_nh3_impacts()$Gas
    df_elec_sia_impacts$`Gas CCS` <- df_elec_snox_impacts()$`Gas CCS` + df_elec_so2_impacts()$`Gas CCS` + df_elec_nh3_impacts()$`Gas CCS`
    df_elec_sia_impacts$Hydrogen <- df_elec_snox_impacts()$Hydrogen + df_elec_so2_impacts()$Hydrogen + df_elec_nh3_impacts()$Hydrogen
    df_elec_sia_impacts$Coal <- df_elec_snox_impacts()$Coal + df_elec_so2_impacts()$Coal + df_elec_nh3_impacts()$Coal
    df_elec_sia_impacts$Waste <- df_elec_snox_impacts()$Waste + df_elec_so2_impacts()$Waste + df_elec_nh3_impacts()$Waste
    df_elec_sia_impacts$`Other thermal` <- df_elec_snox_impacts()$`Other thermal` + df_elec_so2_impacts()$`Other thermal` + df_elec_nh3_impacts()$`Other thermal`
    df_elec_sia_impacts$`Total Impact` <- rowSums(df_elec_sia_impacts[, 2:9], na.rm = TRUE)
    
    return(df_elec_sia_impacts)
    
  })
  
  ####################################################################################################################################
  # Total PM2.5 Impacts - only time with per TWh impacts in place to prevent double division
  
  df_elec_tpm25_impacts <-  reactive({
    
    req(df_elec_sia_impacts())
    req(df_elec_pm25_impacts())

    # Producing PWMC Impacts using UK-to-UK impact factors 
    df_elec_tpm25_impacts <- df_elec_sia_impacts()[,1:9]
    
    # Absolute Impacts
    
    # sNOx Impacts from electricity generation
    
    if (input$absolute_or_perUnit == "Absolute emissions/impacts")
    {
    
      df_elec_tpm25_impacts$Biomass <- df_elec_pm25_impacts()$Biomass + df_elec_sia_impacts()$Biomass
      df_elec_tpm25_impacts$BECCS <- df_elec_pm25_impacts()$BECCS + df_elec_sia_impacts()$BECCS
      df_elec_tpm25_impacts$Gas <- df_elec_pm25_impacts()$Gas + df_elec_sia_impacts()$Gas
      df_elec_tpm25_impacts$`Gas CCS` <- df_elec_pm25_impacts()$`Gas CCS` + df_elec_sia_impacts()$`Gas CCS`
      df_elec_tpm25_impacts$Hydrogen <- df_elec_pm25_impacts()$Hydrogen + df_elec_sia_impacts()$Hydrogen
      df_elec_tpm25_impacts$Coal <- df_elec_pm25_impacts()$Coal + df_elec_sia_impacts()$Coal
      df_elec_tpm25_impacts$Waste <- df_elec_pm25_impacts()$Waste + df_elec_sia_impacts()$Waste
      df_elec_tpm25_impacts$`Other thermal` <- df_elec_pm25_impacts()$`Other thermal` + df_elec_sia_impacts()$`Other thermal`
      df_elec_tpm25_impacts$`Total Impact` <- rowSums(df_elec_tpm25_impacts[, 2:9], na.rm = TRUE)
    
    return(df_elec_tpm25_impacts)
    
    }
    
    else {
      
      df_elec_tpm25_impacts$Biomass <- (df_elec_pm25_impacts()$Biomass + df_elec_sia_impacts()$Biomass)/elec_data_sum()
      df_elec_tpm25_impacts$BECCS <- (df_elec_pm25_impacts()$BECCS + df_elec_sia_impacts()$BECCS)/elec_data_sum()
      df_elec_tpm25_impacts$Gas <- (df_elec_pm25_impacts()$Gas + df_elec_sia_impacts()$Gas)/elec_data_sum()
      df_elec_tpm25_impacts$`Gas CCS` <- (df_elec_pm25_impacts()$`Gas CCS` + df_elec_sia_impacts()$`Gas CCS`)/elec_data_sum()
      df_elec_tpm25_impacts$Hydrogen <- (df_elec_pm25_impacts()$Hydrogen + df_elec_sia_impacts()$Hydrogen)/elec_data_sum()
      df_elec_tpm25_impacts$Coal <- (df_elec_pm25_impacts()$Coal + df_elec_sia_impacts()$Coal)/elec_data_sum()
      df_elec_tpm25_impacts$Waste <- (df_elec_pm25_impacts()$Waste + df_elec_sia_impacts()$Waste)/elec_data_sum()
      df_elec_tpm25_impacts$`Other thermal` <- (df_elec_pm25_impacts()$`Other thermal` + df_elec_sia_impacts()$`Other thermal`)/elec_data_sum()
      df_elec_tpm25_impacts$`Total Impact per TWh` <- rowSums(df_elec_tpm25_impacts[, 2:9], na.rm = TRUE)
      
      return(df_elec_tpm25_impacts)
      
    }
    
  })
  
  
  # Plot output for total PM2.5
  
  output$elec_tpm25 <- renderPlotly({
    
    req(df_elec_tpm25_impacts())
    
    
      long_df_elec_tpm25_impacts <- melt(df_elec_tpm25_impacts()[, 1:10], id.vars = "Year", variable.name = "Source", value.name = "PWMC", na.rm = TRUE)
      
      
      p <- ggplot(long_df_elec_tpm25_impacts, aes(Year, PWMC, col = Source)) +
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
  
  # Domestic Heating NOx - Keeping per TWh here as only divided once for NOx impacts (compared to PPM2.5 and SIA aspects of total PM2.5)
  
  
  
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
  
  # Domestic Primary PM2.5 Emissions - no per TWh - used only in final Total PM2.5 impacts section to prevent multiple divisions
  
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
   
    
  })
  
  
  
  ##################################################################################################################################################
  
  # Domestic Secondary NOx Impacts - using emissions from pNOx section (same emissions different impact factor - no need to re run emissions file)
  # No per TWh impact to prevent double division in final Total PM2.5
  
  df_dh_snox_impacts <- reactive({
    
    req(df_dh_nox_emissions())
    
    df_dh_snox_impacts <- df_dh_nox_emissions()[, 1:17] # setting Nox emissions to impacts - then multiplying by sNOx impact factor to get ACTUAL sNOx impacts
    
    # Absolute sNox Impacts
    

      df_dh_snox_impacts$`Biofuel Boiler` <- df_dh_snox_impacts$`Biofuel Boiler` * dh_snox_IF_oil
      df_dh_snox_impacts$`ASHP + Biofuel Boiler (Biofuel)` <- df_dh_snox_impacts$`ASHP + Biofuel Boiler (Biofuel)` * dh_snox_IF_oil
      df_dh_snox_impacts$`Biomass Boiler` <- df_dh_snox_impacts$`Biomass Boiler` * dh_snox_IF_wood
      df_dh_snox_impacts$`Biomass CHP` <- df_dh_snox_impacts$`Biomass CHP` * ph_snox_IF_public 
      df_dh_snox_impacts$`District Heating (Biomass)` <- df_dh_snox_impacts$`District Heating (Biomass)` * ph_snox_IF_public 
      df_dh_snox_impacts$`District Heating (Biomethane)` <- df_dh_snox_impacts$`District Heating (Biomethane)` * ph_snox_IF_public 
      df_dh_snox_impacts$`District Heating (Gas)` <- df_dh_snox_impacts$`District Heating (Gas)` * ph_snox_IF_public 
      df_dh_snox_impacts$`Gas Boiler` <- df_dh_snox_impacts$`Gas Boiler` * dh_snox_IF_gas
      df_dh_snox_impacts$`Gas CHP` <- df_dh_snox_impacts$`Gas CHP` * ph_snox_IF_public 
      df_dh_snox_impacts$`District Heating (Hydrogen)` <- df_dh_snox_impacts$`District Heating (Hydrogen)` * ph_snox_IF_public 
      df_dh_snox_impacts$`Gas Boiler - H2-NG Blend` <- df_dh_snox_impacts$`Gas Boiler - H2-NG Blend` * dh_snox_IF_gas 
      df_dh_snox_impacts$`Gas CHP - H2-NG Blend` <- df_dh_snox_impacts$`Gas CHP - H2-NG Blend` * ph_snox_IF_public 
      df_dh_snox_impacts$`ASHP + Hydrogen Boiler (Hydrogen)` <- df_dh_snox_impacts$`ASHP + Hydrogen Boiler (Hydrogen)` * dh_snox_IF_gas 
      df_dh_snox_impacts$`Hydrogen Boiler` <- df_dh_snox_impacts$`Hydrogen Boiler` * dh_snox_IF_gas 
      df_dh_snox_impacts$`Oil Boiler` <- df_dh_snox_impacts$`Oil Boiler` * dh_snox_IF_oil 
      df_dh_snox_impacts$`Community Heating` <- df_dh_snox_impacts$`Community Heating` * ph_snox_IF_public 
      df_dh_snox_impacts$`Total Impact` <- rowSums(df_dh_snox_impacts[, 2:17], na.rm = TRUE)
      
      return(df_dh_snox_impacts)
    
    
  })
  
  ###################################################################################################################################################

  # Domestic Heating SO2 Emissions and Impacts - no per TWh impacts to prevent double division in total PM2.5 calculation (only needed since adding SIA)
  
  df_dh_so2_emissions <- reactive({
    
    # Both perfect data and energy vector now in same format (treated prior in dh_data), no need for looping of code
    req(dh_data())
    
    df_dh_so2_emissions <- dh_data()[, 1:17]
    
    df_dh_so2_emissions$`Biofuel Boiler` <- df_dh_so2_emissions$`Biofuel Boiler` * dh_so2_EF_gasoil_boiler
    df_dh_so2_emissions$`ASHP + Biofuel Boiler (Biofuel)` <- df_dh_so2_emissions$`ASHP + Biofuel Boiler (Biofuel)` * dh_so2_EF_gasoil_boiler
    df_dh_so2_emissions$`Biomass Boiler` <- df_dh_so2_emissions$`Biomass Boiler` * dh_so2_EF_woodpellet_boiler
    df_dh_so2_emissions$`Biomass CHP` <- df_dh_so2_emissions$`Biomass CHP` * ph_so2_EF_biomass_boiler
    df_dh_so2_emissions$`District Heating (Biomass)` <- df_dh_so2_emissions$`District Heating (Biomass)` * ph_so2_EF_biomass_boiler
    df_dh_so2_emissions$`District Heating (Biomethane)` <- df_dh_so2_emissions$`District Heating (Biomethane)` * ph_so2_EF_gas_boiler
    df_dh_so2_emissions$`District Heating (Gas)` <- df_dh_so2_emissions$`District Heating (Gas)` * ph_so2_EF_gas_boiler
    df_dh_so2_emissions$`Gas Boiler` <- df_dh_so2_emissions$`Gas Boiler` * dh_so2_EF_gas_boiler
    df_dh_so2_emissions$`Gas CHP` <- df_dh_so2_emissions$`Gas CHP` * ph_so2_EF_gas_boiler
    df_dh_so2_emissions$`District Heating (Hydrogen)` <- df_dh_so2_emissions$`District Heating (Hydrogen)` * ph_so2_EF_hydrogen_boiler
    df_dh_so2_emissions$`Gas Boiler - H2-NG Blend` <- df_dh_so2_emissions$`Gas Boiler - H2-NG Blend` * dh_so2_EF_hydrogen_natgas_boiler
    df_dh_so2_emissions$`Gas CHP - H2-NG Blend` <- df_dh_so2_emissions$`Gas CHP - H2-NG Blend` * ph_so2_EF_hydrogen_natgas_boiler
    df_dh_so2_emissions$`ASHP + Hydrogen Boiler (Hydrogen)` <- df_dh_so2_emissions$`ASHP + Hydrogen Boiler (Hydrogen)` * dh_so2_EF_hydrogen_boiler
    df_dh_so2_emissions$`Hydrogen Boiler` <- df_dh_so2_emissions$`Hydrogen Boiler` * dh_so2_EF_hydrogen_boiler
    df_dh_so2_emissions$`Oil Boiler` <- df_dh_so2_emissions$`Oil Boiler` * dh_so2_EF_gasoil_boiler
    df_dh_so2_emissions$`Community Heating` <- df_dh_so2_emissions$`Community Heating` * ph_so2_EF_fueloil_boiler
    df_dh_so2_emissions$`Total Emissions` <- rowSums(df_dh_so2_emissions[, 2:17], na.rm = TRUE)
    
    return(df_dh_so2_emissions)
    
    
  })
  
  
  df_dh_so2_impacts <- reactive({
    
    req(df_dh_so2_emissions())
    
    df_dh_so2_impacts <- df_dh_so2_emissions()[, 1:17]
    
    # Absolute PM2.5 Impacts
    
      df_dh_so2_impacts$`Biofuel Boiler` <- df_dh_so2_impacts$`Biofuel Boiler` * dh_nox_IF_oil
      df_dh_so2_impacts$`ASHP + Biofuel Boiler (Biofuel)` <- df_dh_so2_impacts$`ASHP + Biofuel Boiler (Biofuel)` * dh_nox_IF_oil
      df_dh_so2_impacts$`Biomass Boiler` <- df_dh_so2_impacts$`Biomass Boiler` * dh_nox_IF_wood
      df_dh_so2_impacts$`Biomass CHP` <- df_dh_so2_impacts$`Biomass CHP` * ph_nox_IF_public
      df_dh_so2_impacts$`District Heating (Biomass)` <- df_dh_so2_impacts$`District Heating (Biomass)` * ph_nox_IF_public
      df_dh_so2_impacts$`District Heating (Biomethane)` <- df_dh_so2_impacts$`District Heating (Biomethane)` * ph_nox_IF_public
      df_dh_so2_impacts$`District Heating (Gas)` <- df_dh_so2_impacts$`District Heating (Gas)` * ph_nox_IF_public
      df_dh_so2_impacts$`Gas Boiler` <- df_dh_so2_impacts$`Gas Boiler` * dh_nox_IF_gas
      df_dh_so2_impacts$`Gas CHP` <- df_dh_so2_impacts$`Gas CHP` * ph_nox_IF_public
      df_dh_so2_impacts$`District Heating (Hydrogen)` <- df_dh_so2_impacts$`District Heating (Hydrogen)` * ph_nox_IF_public
      df_dh_so2_impacts$`Gas Boiler - H2-NG Blend` <- df_dh_so2_impacts$`Gas Boiler - H2-NG Blend` * dh_nox_IF_gas
      df_dh_so2_impacts$`Gas CHP - H2-NG Blend` <- df_dh_so2_impacts$`Gas CHP - H2-NG Blend` * ph_nox_IF_public
      df_dh_so2_impacts$`ASHP + Hydrogen Boiler (Hydrogen)` <- df_dh_so2_impacts$`ASHP + Hydrogen Boiler (Hydrogen)` * dh_nox_IF_gas
      df_dh_so2_impacts$`Hydrogen Boiler` <- df_dh_so2_impacts$`Hydrogen Boiler` * dh_nox_IF_gas
      df_dh_so2_impacts$`Oil Boiler` <- df_dh_so2_impacts$`Oil Boiler` * dh_nox_IF_oil
      df_dh_so2_impacts$`Community Heating` <- df_dh_so2_impacts$`Community Heating` * ph_nox_IF_public
      df_dh_so2_impacts$`Total Impact` <- rowSums(df_dh_so2_impacts[, 2:17], na.rm = TRUE)
      
      return(df_dh_so2_impacts)
      
    
  })
  
  ###################################################################################################################################################
  
  # Domestic Heating NH3 Emissions and Impacts - no impacts per TWh in order to prevent double counting/division
  
  df_dh_nh3_emissions <- reactive({
    
    # Both perfect data and energy vector now in same format (treated prior in dh_data), no need for looping of code
    req(dh_data())
    
    df_dh_nh3_emissions <- dh_data()[, 1:17]
    
    df_dh_nh3_emissions$`Biofuel Boiler` <- df_dh_nh3_emissions$`Biofuel Boiler` * dh_nh3_EF_gasoil_boiler
    df_dh_nh3_emissions$`ASHP + Biofuel Boiler (Biofuel)` <- df_dh_nh3_emissions$`ASHP + Biofuel Boiler (Biofuel)` * dh_nh3_EF_gasoil_boiler
    df_dh_nh3_emissions$`Biomass Boiler` <- df_dh_nh3_emissions$`Biomass Boiler` * dh_nh3_EF_woodpellet_boiler
    df_dh_nh3_emissions$`Biomass CHP` <- df_dh_nh3_emissions$`Biomass CHP` * ph_nh3_EF_biomass_boiler
    df_dh_nh3_emissions$`District Heating (Biomass)` <- df_dh_nh3_emissions$`District Heating (Biomass)` * ph_nh3_EF_biomass_boiler
    df_dh_nh3_emissions$`District Heating (Biomethane)` <- df_dh_nh3_emissions$`District Heating (Biomethane)` * ph_nh3_EF_gas_boiler
    df_dh_nh3_emissions$`District Heating (Gas)` <- df_dh_nh3_emissions$`District Heating (Gas)` * ph_nh3_EF_gas_boiler
    df_dh_nh3_emissions$`Gas Boiler` <- df_dh_nh3_emissions$`Gas Boiler` * dh_nh3_EF_gas_boiler
    df_dh_nh3_emissions$`Gas CHP` <- df_dh_nh3_emissions$`Gas CHP` * ph_nh3_EF_gas_boiler
    df_dh_nh3_emissions$`District Heating (Hydrogen)` <- df_dh_nh3_emissions$`District Heating (Hydrogen)` * ph_nh3_EF_hydrogen_boiler
    df_dh_nh3_emissions$`Gas Boiler - H2-NG Blend` <- df_dh_nh3_emissions$`Gas Boiler - H2-NG Blend` * dh_nh3_EF_hydrogen_natgas_boiler
    df_dh_nh3_emissions$`Gas CHP - H2-NG Blend` <- df_dh_nh3_emissions$`Gas CHP - H2-NG Blend` * ph_nh3_EF_hydrogen_natgas_boiler
    df_dh_nh3_emissions$`ASHP + Hydrogen Boiler (Hydrogen)` <- df_dh_nh3_emissions$`ASHP + Hydrogen Boiler (Hydrogen)` * dh_nh3_EF_hydrogen_boiler
    df_dh_nh3_emissions$`Hydrogen Boiler` <- df_dh_nh3_emissions$`Hydrogen Boiler` * dh_nh3_EF_hydrogen_boiler
    df_dh_nh3_emissions$`Oil Boiler` <- df_dh_nh3_emissions$`Oil Boiler` * dh_nh3_EF_gasoil_boiler
    df_dh_nh3_emissions$`Community Heating` <- df_dh_nh3_emissions$`Community Heating` * ph_nh3_EF_fueloil_boiler
    df_dh_nh3_emissions$`Total Emissions` <- rowSums(df_dh_nh3_emissions[, 2:17], na.rm = TRUE)
    
    return(df_dh_nh3_emissions)
    
    
  })
  
  
  df_dh_nh3_impacts <- reactive({
    
    req(df_dh_nh3_emissions())
    
    df_dh_nh3_impacts <- df_dh_nh3_emissions()[, 1:17]
    
    # Absolute PM2.5 Impacts
    
      df_dh_nh3_impacts$`Biofuel Boiler` <- df_dh_nh3_impacts$`Biofuel Boiler` * dh_nox_IF_oil
      df_dh_nh3_impacts$`ASHP + Biofuel Boiler (Biofuel)` <- df_dh_nh3_impacts$`ASHP + Biofuel Boiler (Biofuel)` * dh_nox_IF_oil
      df_dh_nh3_impacts$`Biomass Boiler` <- df_dh_nh3_impacts$`Biomass Boiler` * dh_nox_IF_wood
      df_dh_nh3_impacts$`Biomass CHP` <- df_dh_nh3_impacts$`Biomass CHP` * ph_nox_IF_public
      df_dh_nh3_impacts$`District Heating (Biomass)` <- df_dh_nh3_impacts$`District Heating (Biomass)` * ph_nox_IF_public
      df_dh_nh3_impacts$`District Heating (Biomethane)` <- df_dh_nh3_impacts$`District Heating (Biomethane)` * ph_nox_IF_public
      df_dh_nh3_impacts$`District Heating (Gas)` <- df_dh_nh3_impacts$`District Heating (Gas)` * ph_nox_IF_public
      df_dh_nh3_impacts$`Gas Boiler` <- df_dh_nh3_impacts$`Gas Boiler` * dh_nox_IF_gas
      df_dh_nh3_impacts$`Gas CHP` <- df_dh_nh3_impacts$`Gas CHP` * ph_nox_IF_public
      df_dh_nh3_impacts$`District Heating (Hydrogen)` <- df_dh_nh3_impacts$`District Heating (Hydrogen)` * ph_nox_IF_public
      df_dh_nh3_impacts$`Gas Boiler - H2-NG Blend` <- df_dh_nh3_impacts$`Gas Boiler - H2-NG Blend` * dh_nox_IF_gas
      df_dh_nh3_impacts$`Gas CHP - H2-NG Blend` <- df_dh_nh3_impacts$`Gas CHP - H2-NG Blend` * ph_nox_IF_public
      df_dh_nh3_impacts$`ASHP + Hydrogen Boiler (Hydrogen)` <- df_dh_nh3_impacts$`ASHP + Hydrogen Boiler (Hydrogen)` * dh_nox_IF_gas
      df_dh_nh3_impacts$`Hydrogen Boiler` <- df_dh_nh3_impacts$`Hydrogen Boiler` * dh_nox_IF_gas
      df_dh_nh3_impacts$`Oil Boiler` <- df_dh_nh3_impacts$`Oil Boiler` * dh_nox_IF_oil
      df_dh_nh3_impacts$`Community Heating` <- df_dh_nh3_impacts$`Community Heating` * ph_nox_IF_public
      df_dh_nh3_impacts$`Total Impact` <- rowSums(df_dh_nh3_impacts[, 2:17], na.rm = TRUE)
      
      return(df_dh_nh3_impacts)
      
    
  })
  
  ###################################################################################################################################################
  
  # Secondary PM2.5 Impacts - summing impacts of NOx, SO2, and NH3 on SIA (later to be added to total PM2.5) - Only using per TWh logic in FINAL expression to prevent double counting/continuous division
  
  df_dh_sia_impacts <- reactive({
    
    req(df_dh_nh3_impacts())
    req(df_dh_snox_impacts())
    req(df_dh_so2_impacts())
    
    
    # Set to a pre-existing table so rowSums can still work - may not need but good for safeguarding
    
    df_dh_sia_impacts <- df_dh_nh3_impacts()[, 1:17]
    
    # Absolute PM2.5 Impacts
    
      df_dh_sia_impacts$`Biofuel Boiler` <- df_dh_nh3_impacts()$`Biofuel Boiler` + df_dh_so2_impacts()$`Biofuel Boiler` + df_dh_snox_impacts()$`Biofuel Boiler`
      df_dh_sia_impacts$`ASHP + Biofuel Boiler (Biofuel)` <- df_dh_nh3_impacts()$`ASHP + Biofuel Boiler (Biofuel)` + df_dh_so2_impacts()$`ASHP + Biofuel Boiler (Biofuel)` + df_dh_snox_impacts()$`ASHP + Biofuel Boiler (Biofuel)`
      df_dh_sia_impacts$`Biomass Boiler` <- df_dh_nh3_impacts()$`Biomass Boiler` + df_dh_so2_impacts()$`Biomass Boiler` + df_dh_snox_impacts()$`Biomass Boiler`
      df_dh_sia_impacts$`Biomass CHP` <- df_dh_nh3_impacts()$`Biomass CHP` + df_dh_so2_impacts()$`Biomass CHP` + df_dh_snox_impacts()$`Biomass CHP`
      df_dh_sia_impacts$`District Heating (Biomass)` <- df_dh_nh3_impacts()$`District Heating (Biomass)` + df_dh_so2_impacts()$`District Heating (Biomass)` + df_dh_snox_impacts()$`District Heating (Biomass)`
      df_dh_sia_impacts$`District Heating (Biomethane)` <- df_dh_nh3_impacts()$`District Heating (Biomethane)` + df_dh_so2_impacts()$`District Heating (Biomethane)` + df_dh_snox_impacts()$`District Heating (Biomethane)`
      df_dh_sia_impacts$`District Heating (Gas)` <- df_dh_nh3_impacts()$`District Heating (Gas)` + df_dh_so2_impacts()$`District Heating (Gas)` + df_dh_snox_impacts()$`District Heating (Gas)`
      df_dh_sia_impacts$`Gas Boiler` <- df_dh_nh3_impacts()$`Gas Boiler` + df_dh_so2_impacts()$`Gas Boiler` + df_dh_snox_impacts()$`Gas Boiler`
      df_dh_sia_impacts$`Gas CHP` <- df_dh_nh3_impacts()$`Gas CHP` + df_dh_so2_impacts()$`Gas CHP` + df_dh_snox_impacts()$`Gas CHP`
      df_dh_sia_impacts$`District Heating (Hydrogen)` <- df_dh_nh3_impacts()$`District Heating (Hydrogen)` + df_dh_so2_impacts()$`District Heating (Hydrogen)` + df_dh_snox_impacts()$`District Heating (Hydrogen)`
      df_dh_sia_impacts$`Gas Boiler - H2-NG Blend` <- df_dh_nh3_impacts()$`Gas Boiler - H2-NG Blend` + df_dh_so2_impacts()$`Gas Boiler - H2-NG Blend` + df_dh_snox_impacts()$`Gas Boiler - H2-NG Blend`
      df_dh_sia_impacts$`Gas CHP - H2-NG Blend` <- df_dh_nh3_impacts()$`Gas CHP - H2-NG Blend` + df_dh_so2_impacts()$`Gas CHP - H2-NG Blend` + df_dh_snox_impacts()$`Gas CHP - H2-NG Blend`
      df_dh_sia_impacts$`ASHP + Hydrogen Boiler (Hydrogen)` <- df_dh_nh3_impacts()$`ASHP + Hydrogen Boiler (Hydrogen)` + df_dh_so2_impacts()$`ASHP + Hydrogen Boiler (Hydrogen)` + df_dh_snox_impacts()$`ASHP + Hydrogen Boiler (Hydrogen)`
      df_dh_sia_impacts$`Hydrogen Boiler` <- df_dh_nh3_impacts()$`Hydrogen Boiler` + df_dh_so2_impacts()$`Hydrogen Boiler` + df_dh_snox_impacts()$`Hydrogen Boiler`
      df_dh_sia_impacts$`Oil Boiler` <- df_dh_nh3_impacts()$`Oil Boiler` + df_dh_so2_impacts()$`Oil Boiler` + df_dh_snox_impacts()$`Oil Boiler`
      df_dh_sia_impacts$`Community Heating` <- df_dh_nh3_impacts()$`Community Heating` + df_dh_so2_impacts()$`Community Heating` + df_dh_snox_impacts()$`Community Heating`
      df_dh_sia_impacts$`Total Impact` <- rowSums(df_dh_sia_impacts[, 2:17], na.rm = TRUE)
      
      return(df_dh_sia_impacts)
    
 
  })
  
  ###################################################################################################################################################
  
  # Total Domestic Heating PM2.5 Impacts - Adding Primary PM2.5 to SIA
  
  df_dh_tpm25_impacts <- reactive({
    
    req(df_dh_sia_impacts())
    req(df_dh_pm25_impacts())
    
    # Set to a pre-existing table so rowSums can still work - may not need but good for safeguarding
    
    df_dh_tpm25_impacts <- df_dh_sia_impacts()[, 1:17]
    
    # Absolute PM2.5 Impacts
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      df_dh_tpm25_impacts$`Biofuel Boiler` <- df_dh_pm25_impacts()$`Biofuel Boiler` + df_dh_sia_impacts()$`Biofuel Boiler`
      df_dh_tpm25_impacts$`ASHP + Biofuel Boiler (Biofuel)` <- df_dh_pm25_impacts()$`ASHP + Biofuel Boiler (Biofuel)` + df_dh_sia_impacts()$`ASHP + Biofuel Boiler (Biofuel)`
      df_dh_tpm25_impacts$`Biomass Boiler` <- df_dh_pm25_impacts()$`Biomass Boiler` + df_dh_sia_impacts()$`Biomass Boiler`
      df_dh_tpm25_impacts$`Biomass CHP` <- df_dh_pm25_impacts()$`Biomass CHP` + df_dh_sia_impacts()$`Biomass CHP`
      df_dh_tpm25_impacts$`District Heating (Biomass)` <- df_dh_pm25_impacts()$`District Heating (Biomass)` + df_dh_sia_impacts()$`District Heating (Biomass)`
      df_dh_tpm25_impacts$`District Heating (Biomethane)` <- df_dh_pm25_impacts()$`District Heating (Biomethane)` + df_dh_sia_impacts()$`District Heating (Biomethane)`
      df_dh_tpm25_impacts$`District Heating (Gas)` <- df_dh_pm25_impacts()$`District Heating (Gas)` + df_dh_sia_impacts()$`District Heating (Gas)`
      df_dh_tpm25_impacts$`Gas Boiler` <- df_dh_pm25_impacts()$`Gas Boiler` + df_dh_sia_impacts()$`Gas Boiler`
      df_dh_tpm25_impacts$`Gas CHP` <- df_dh_pm25_impacts()$`Gas CHP` + df_dh_sia_impacts()$`Gas CHP`
      df_dh_tpm25_impacts$`District Heating (Hydrogen)` <- df_dh_pm25_impacts()$`District Heating (Hydrogen)` + df_dh_sia_impacts()$`District Heating (Hydrogen)`
      df_dh_tpm25_impacts$`Gas Boiler - H2-NG Blend` <- df_dh_pm25_impacts()$`Gas Boiler - H2-NG Blend` + df_dh_sia_impacts()$`Gas Boiler - H2-NG Blend`
      df_dh_tpm25_impacts$`Gas CHP - H2-NG Blend` <- df_dh_pm25_impacts()$`Gas CHP - H2-NG Blend` + df_dh_sia_impacts()$`Gas CHP - H2-NG Blend`
      df_dh_tpm25_impacts$`ASHP + Hydrogen Boiler (Hydrogen)` <- df_dh_pm25_impacts()$`ASHP + Hydrogen Boiler (Hydrogen)` + df_dh_sia_impacts()$`ASHP + Hydrogen Boiler (Hydrogen)`
      df_dh_tpm25_impacts$`Hydrogen Boiler` <- df_dh_pm25_impacts()$`Hydrogen Boiler` + df_dh_sia_impacts()$`Hydrogen Boiler`
      df_dh_tpm25_impacts$`Oil Boiler` <- df_dh_pm25_impacts()$`Oil Boiler` + df_dh_sia_impacts()$`Oil Boiler`
      df_dh_tpm25_impacts$`Community Heating` <- df_dh_pm25_impacts()$`Community Heating` + df_dh_sia_impacts()$`Community Heating`
      df_dh_tpm25_impacts$`Total Impact` <- rowSums(df_dh_tpm25_impacts[, 2:17], na.rm = TRUE)
      
      return(df_dh_tpm25_impacts)
      
    }
    
    # Per TWh impacts - only divided by sum in this expression to prevent double division
    
    else {
      
      df_dh_tpm25_impacts$`Biofuel Boiler` <- (df_dh_pm25_impacts()$`Biofuel Boiler` + df_dh_sia_impacts()$`Biofuel Boiler`)/dh_data_sum()
      df_dh_tpm25_impacts$`ASHP + Biofuel Boiler (Biofuel)` <- (df_dh_pm25_impacts()$`ASHP + Biofuel Boiler (Biofuel)` + df_dh_sia_impacts()$`ASHP + Biofuel Boiler (Biofuel)`)/dh_data_sum()
      df_dh_tpm25_impacts$`Biomass Boiler` <- (df_dh_pm25_impacts()$`Biomass Boiler` + df_dh_sia_impacts()$`Biomass Boiler`)/dh_data_sum()
      df_dh_tpm25_impacts$`Biomass CHP` <- (df_dh_pm25_impacts()$`Biomass CHP` + df_dh_sia_impacts()$`Biomass CHP`)/dh_data_sum()
      df_dh_tpm25_impacts$`District Heating (Biomass)` <- (df_dh_pm25_impacts()$`District Heating (Biomass)` + df_dh_sia_impacts()$`District Heating (Biomass)`)/dh_data_sum()
      df_dh_tpm25_impacts$`District Heating (Biomethane)` <- (df_dh_pm25_impacts()$`District Heating (Biomethane)` + df_dh_sia_impacts()$`District Heating (Biomethane)`)/dh_data_sum()
      df_dh_tpm25_impacts$`District Heating (Gas)` <- (df_dh_pm25_impacts()$`District Heating (Gas)` + df_dh_sia_impacts()$`District Heating (Gas)`)/dh_data_sum()
      df_dh_tpm25_impacts$`Gas Boiler` <- (df_dh_pm25_impacts()$`Gas Boiler` + df_dh_sia_impacts()$`Gas Boiler`)/dh_data_sum()
      df_dh_tpm25_impacts$`Gas CHP` <- (df_dh_pm25_impacts()$`Gas CHP` + df_dh_sia_impacts()$`Gas CHP`)/dh_data_sum()
      df_dh_tpm25_impacts$`District Heating (Hydrogen)` <- (df_dh_pm25_impacts()$`District Heating (Hydrogen)` + df_dh_sia_impacts()$`District Heating (Hydrogen)`)/dh_data_sum()
      df_dh_tpm25_impacts$`Gas Boiler - H2-NG Blend` <- (df_dh_pm25_impacts()$`Gas Boiler - H2-NG Blend` + df_dh_sia_impacts()$`Gas Boiler - H2-NG Blend`)/dh_data_sum()
      df_dh_tpm25_impacts$`Gas CHP - H2-NG Blend` <- (df_dh_pm25_impacts()$`Gas CHP - H2-NG Blend` + df_dh_sia_impacts()$`Gas CHP - H2-NG Blend`)/dh_data_sum()
      df_dh_tpm25_impacts$`ASHP + Hydrogen Boiler (Hydrogen)` <- (df_dh_pm25_impacts()$`ASHP + Hydrogen Boiler (Hydrogen)` + df_dh_sia_impacts()$`ASHP + Hydrogen Boiler (Hydrogen)`)/dh_data_sum()
      df_dh_tpm25_impacts$`Hydrogen Boiler` <- (df_dh_pm25_impacts()$`Hydrogen Boiler` + df_dh_sia_impacts()$`Hydrogen Boiler`)/dh_data_sum()
      df_dh_tpm25_impacts$`Oil Boiler` <- (df_dh_pm25_impacts()$`Oil Boiler` + df_dh_sia_impacts()$`Oil Boiler`)/dh_data_sum()
      df_dh_tpm25_impacts$`Community Heating` <- (df_dh_pm25_impacts()$`Community Heating` + df_dh_sia_impacts()$`Community Heating`)/dh_data_sum()
      df_dh_tpm25_impacts$`Total Impact per TWh` <- rowSums(df_dh_tpm25_impacts[, 2:17], na.rm = TRUE)
      
      return(df_dh_tpm25_impacts)
      
    }
    
  })
  
  
  
  
  # Plot output for total PM2.5 Impacts
  
  output$dh_tpm25 <- renderPlotly({
    
    req(df_dh_tpm25_impacts())
    
    long_df_dh_tpm25_impacts <- melt(df_dh_tpm25_impacts()[, 1:17], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
    
    p <- ggplot(long_df_dh_tpm25_impacts, aes(Year, Impacts, col = Source)) +
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
  
  # Public and commercial PM2.5 Impacts - ONLY DOING PER TWH PM2.5 IMPACTS IN TOTAL PM2.5 TO PREVENT DOUBLE DIVISION (only issue since adding SIA)
  
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
    
  
  })
  
 
 
  ##################################################################################################################################################
  
  # Public Secondary NOx Impacts - using emissions from pNOx section (same emissions different impact factor - no need to re run emissions file)
  
  df_ph_snox_impacts <- reactive({
    
    req(df_ph_nox_emissions())
    
    df_ph_snox_impacts <- df_ph_nox_emissions()[, 1:17] # setting Nox emissions to impacts - then multiplying by sNOx impact factor to get ACTUAL sNOx impacts
    
    # Absolute snox Impacts
    
      df_ph_snox_impacts$`Biofuel Boiler` <- df_ph_snox_impacts$`Biofuel Boiler` * ph_snox_IF_public
      df_ph_snox_impacts$`ASHP + Biofuel Boiler (Biofuel)` <- df_ph_snox_impacts$`ASHP + Biofuel Boiler (Biofuel)` * ph_snox_IF_public
      df_ph_snox_impacts$`Biomass Boiler` <- df_ph_snox_impacts$`Biomass Boiler` * ph_snox_IF_public
      df_ph_snox_impacts$`Biomass CHP` <- df_ph_snox_impacts$`Biomass CHP` * ph_snox_IF_public 
      df_ph_snox_impacts$`District Heating (Biomass)` <- df_ph_snox_impacts$`District Heating (Biomass)` * ph_snox_IF_public 
      df_ph_snox_impacts$`District Heating (Biomethane)` <- df_ph_snox_impacts$`District Heating (Biomethane)` * ph_snox_IF_public 
      df_ph_snox_impacts$`District Heating (Gas)` <- df_ph_snox_impacts$`District Heating (Gas)` * ph_snox_IF_public 
      df_ph_snox_impacts$`Gas Boiler` <- df_ph_snox_impacts$`Gas Boiler` * ph_snox_IF_public
      df_ph_snox_impacts$`Gas CHP` <- df_ph_snox_impacts$`Gas CHP` * ph_snox_IF_public 
      df_ph_snox_impacts$`District Heating (Hydrogen)` <- df_ph_snox_impacts$`District Heating (Hydrogen)` * ph_snox_IF_public 
      df_ph_snox_impacts$`Gas Boiler - H2-NG Blend` <- df_ph_snox_impacts$`Gas Boiler - H2-NG Blend` * ph_snox_IF_public 
      df_ph_snox_impacts$`Gas CHP - H2-NG Blend` <- df_ph_snox_impacts$`Gas CHP - H2-NG Blend` * ph_snox_IF_public 
      df_ph_snox_impacts$`ASHP + Hydrogen Boiler (Hydrogen)` <- df_ph_snox_impacts$`ASHP + Hydrogen Boiler (Hydrogen)` * ph_snox_IF_public 
      df_ph_snox_impacts$`Hydrogen Boiler` <- df_ph_snox_impacts$`Hydrogen Boiler` * ph_snox_IF_public 
      df_ph_snox_impacts$`Oil Boiler` <- df_ph_snox_impacts$`Oil Boiler` * ph_snox_IF_public 
      df_ph_snox_impacts$`Community Heating` <- df_ph_snox_impacts$`Community Heating` * ph_snox_IF_public 
      df_ph_snox_impacts$`Total Impact` <- rowSums(df_ph_snox_impacts[, 2:17], na.rm = TRUE)
      
      return(df_ph_snox_impacts)
      
  })
  
  ###################################################################################################################################################
  
  # Public Heating SO2 Emissions and Impacts  
  
  df_ph_so2_emissions <- reactive({
    
    # Both perfect data and energy vector now in same format (treated prior in ph_data), no need for looping of code
    req(ph_data())
    
    df_ph_so2_emissions <- ph_data()[, 1:17]
    
    df_ph_so2_emissions$`Biofuel Boiler` <- df_ph_so2_emissions$`Biofuel Boiler` * ph_so2_EF_fueloil_boiler
    df_ph_so2_emissions$`ASHP + Biofuel Boiler (Biofuel)` <- df_ph_so2_emissions$`ASHP + Biofuel Boiler (Biofuel)` * ph_so2_EF_fueloil_boiler
    df_ph_so2_emissions$`Biomass Boiler` <- df_ph_so2_emissions$`Biomass Boiler` * ph_so2_EF_biomass_boiler
    df_ph_so2_emissions$`Biomass CHP` <- df_ph_so2_emissions$`Biomass CHP` * ph_so2_EF_biomass_boiler
    df_ph_so2_emissions$`District Heating (Biomass)` <- df_ph_so2_emissions$`District Heating (Biomass)` * ph_so2_EF_biomass_boiler
    df_ph_so2_emissions$`District Heating (Biomethane)` <- df_ph_so2_emissions$`District Heating (Biomethane)` * ph_so2_EF_gas_boiler
    df_ph_so2_emissions$`District Heating (Gas)` <- df_ph_so2_emissions$`District Heating (Gas)` * ph_so2_EF_gas_boiler
    df_ph_so2_emissions$`Gas Boiler` <- df_ph_so2_emissions$`Gas Boiler` * ph_so2_EF_gas_boiler
    df_ph_so2_emissions$`Gas CHP` <- df_ph_so2_emissions$`Gas CHP` * ph_so2_EF_gas_boiler
    df_ph_so2_emissions$`District Heating (Hydrogen)` <- df_ph_so2_emissions$`District Heating (Hydrogen)` * ph_so2_EF_hydrogen_boiler
    df_ph_so2_emissions$`Gas Boiler - H2-NG Blend` <- df_ph_so2_emissions$`Gas Boiler - H2-NG Blend` * ph_so2_EF_hydrogen_natgas_boiler
    df_ph_so2_emissions$`Gas CHP - H2-NG Blend` <- df_ph_so2_emissions$`Gas CHP - H2-NG Blend` * ph_so2_EF_hydrogen_natgas_boiler
    df_ph_so2_emissions$`ASHP + Hydrogen Boiler (Hydrogen)` <- df_ph_so2_emissions$`ASHP + Hydrogen Boiler (Hydrogen)` * ph_so2_EF_hydrogen_boiler
    df_ph_so2_emissions$`Hydrogen Boiler` <- df_ph_so2_emissions$`Hydrogen Boiler` * ph_so2_EF_hydrogen_boiler
    df_ph_so2_emissions$`Oil Boiler` <- df_ph_so2_emissions$`Oil Boiler` * ph_so2_EF_fueloil_boiler
    df_ph_so2_emissions$`Community Heating` <- df_ph_so2_emissions$`Community Heating` * ph_so2_EF_fueloil_boiler
    df_ph_so2_emissions$`Total Emissions` <- rowSums(df_ph_so2_emissions[, 2:17], na.rm = TRUE)
    
    return(df_ph_so2_emissions)
    
    
  })
  
  
  df_ph_so2_impacts <- reactive({
    
    req(df_ph_so2_emissions())
    
    df_ph_so2_impacts <- df_ph_so2_emissions()[, 1:17]
    
    # Absolute PM2.5 Impacts
    
      df_ph_so2_impacts$`Biofuel Boiler` <- df_ph_so2_impacts$`Biofuel Boiler` * ph_nox_IF_public
      df_ph_so2_impacts$`ASHP + Biofuel Boiler (Biofuel)` <- df_ph_so2_impacts$`ASHP + Biofuel Boiler (Biofuel)` * ph_nox_IF_public
      df_ph_so2_impacts$`Biomass Boiler` <- df_ph_so2_impacts$`Biomass Boiler` * ph_nox_IF_public
      df_ph_so2_impacts$`Biomass CHP` <- df_ph_so2_impacts$`Biomass CHP` * ph_nox_IF_public
      df_ph_so2_impacts$`District Heating (Biomass)` <- df_ph_so2_impacts$`District Heating (Biomass)` * ph_nox_IF_public
      df_ph_so2_impacts$`District Heating (Biomethane)` <- df_ph_so2_impacts$`District Heating (Biomethane)` * ph_nox_IF_public
      df_ph_so2_impacts$`District Heating (Gas)` <- df_ph_so2_impacts$`District Heating (Gas)` * ph_nox_IF_public
      df_ph_so2_impacts$`Gas Boiler` <- df_ph_so2_impacts$`Gas Boiler` * ph_nox_IF_public
      df_ph_so2_impacts$`Gas CHP` <- df_ph_so2_impacts$`Gas CHP` * ph_nox_IF_public
      df_ph_so2_impacts$`District Heating (Hydrogen)` <- df_ph_so2_impacts$`District Heating (Hydrogen)` * ph_nox_IF_public
      df_ph_so2_impacts$`Gas Boiler - H2-NG Blend` <- df_ph_so2_impacts$`Gas Boiler - H2-NG Blend` * ph_nox_IF_public
      df_ph_so2_impacts$`Gas CHP - H2-NG Blend` <- df_ph_so2_impacts$`Gas CHP - H2-NG Blend` * ph_nox_IF_public
      df_ph_so2_impacts$`ASHP + Hydrogen Boiler (Hydrogen)` <- df_ph_so2_impacts$`ASHP + Hydrogen Boiler (Hydrogen)` * ph_nox_IF_public
      df_ph_so2_impacts$`Hydrogen Boiler` <- df_ph_so2_impacts$`Hydrogen Boiler` * ph_nox_IF_public
      df_ph_so2_impacts$`Oil Boiler` <- df_ph_so2_impacts$`Oil Boiler` * ph_nox_IF_public
      df_ph_so2_impacts$`Community Heating` <- df_ph_so2_impacts$`Community Heating` * ph_nox_IF_public
      df_ph_so2_impacts$`Total Impact` <- rowSums(df_ph_so2_impacts[, 2:17], na.rm = TRUE)
      
      return(df_ph_so2_impacts)

    
  })
  
  ###################################################################################################################################################
  
  # Public Heating NH3 Emissions and Impacts  
  
  df_ph_nh3_emissions <- reactive({
    
    # Both perfect data and energy vector now in same format (treated prior in ph_data), no need for looping of code
    req(ph_data())
    
    df_ph_nh3_emissions <- ph_data()[, 1:17]
    
    df_ph_nh3_emissions$`Biofuel Boiler` <- df_ph_nh3_emissions$`Biofuel Boiler` * ph_nh3_EF_fueloil_boiler
    df_ph_nh3_emissions$`ASHP + Biofuel Boiler (Biofuel)` <- df_ph_nh3_emissions$`ASHP + Biofuel Boiler (Biofuel)` * ph_nh3_EF_fueloil_boiler
    df_ph_nh3_emissions$`Biomass Boiler` <- df_ph_nh3_emissions$`Biomass Boiler` * ph_nh3_EF_biomass_boiler
    df_ph_nh3_emissions$`Biomass CHP` <- df_ph_nh3_emissions$`Biomass CHP` * ph_nh3_EF_biomass_boiler
    df_ph_nh3_emissions$`District Heating (Biomass)` <- df_ph_nh3_emissions$`District Heating (Biomass)` * ph_nh3_EF_biomass_boiler
    df_ph_nh3_emissions$`District Heating (Biomethane)` <- df_ph_nh3_emissions$`District Heating (Biomethane)` * ph_nh3_EF_gas_boiler
    df_ph_nh3_emissions$`District Heating (Gas)` <- df_ph_nh3_emissions$`District Heating (Gas)` * ph_nh3_EF_gas_boiler
    df_ph_nh3_emissions$`Gas Boiler` <- df_ph_nh3_emissions$`Gas Boiler` * ph_nh3_EF_gas_boiler
    df_ph_nh3_emissions$`Gas CHP` <- df_ph_nh3_emissions$`Gas CHP` * ph_nh3_EF_gas_boiler
    df_ph_nh3_emissions$`District Heating (Hydrogen)` <- df_ph_nh3_emissions$`District Heating (Hydrogen)` * ph_nh3_EF_hydrogen_boiler
    df_ph_nh3_emissions$`Gas Boiler - H2-NG Blend` <- df_ph_nh3_emissions$`Gas Boiler - H2-NG Blend` * ph_nh3_EF_hydrogen_natgas_boiler
    df_ph_nh3_emissions$`Gas CHP - H2-NG Blend` <- df_ph_nh3_emissions$`Gas CHP - H2-NG Blend` * ph_nh3_EF_hydrogen_natgas_boiler
    df_ph_nh3_emissions$`ASHP + Hydrogen Boiler (Hydrogen)` <- df_ph_nh3_emissions$`ASHP + Hydrogen Boiler (Hydrogen)` * ph_nh3_EF_hydrogen_boiler
    df_ph_nh3_emissions$`Hydrogen Boiler` <- df_ph_nh3_emissions$`Hydrogen Boiler` * ph_nh3_EF_hydrogen_boiler
    df_ph_nh3_emissions$`Oil Boiler` <- df_ph_nh3_emissions$`Oil Boiler` * ph_nh3_EF_fueloil_boiler
    df_ph_nh3_emissions$`Community Heating` <- df_ph_nh3_emissions$`Community Heating` * ph_nh3_EF_fueloil_boiler
    df_ph_nh3_emissions$`Total Emissions` <- rowSums(df_ph_nh3_emissions[, 2:17], na.rm = TRUE)
    
    return(df_ph_nh3_emissions)
    
    
  })
  
  
  df_ph_nh3_impacts <- reactive({
    
    req(df_ph_nh3_emissions())
    
    df_ph_nh3_impacts <- df_ph_nh3_emissions()[, 1:17]
    
    # Absolute PM2.5 Impacts
    
      df_ph_nh3_impacts$`Biofuel Boiler` <- df_ph_nh3_impacts$`Biofuel Boiler` * ph_nox_IF_public
      df_ph_nh3_impacts$`ASHP + Biofuel Boiler (Biofuel)` <- df_ph_nh3_impacts$`ASHP + Biofuel Boiler (Biofuel)` * ph_nox_IF_public
      df_ph_nh3_impacts$`Biomass Boiler` <- df_ph_nh3_impacts$`Biomass Boiler` * ph_nox_IF_public
      df_ph_nh3_impacts$`Biomass CHP` <- df_ph_nh3_impacts$`Biomass CHP` * ph_nox_IF_public
      df_ph_nh3_impacts$`District Heating (Biomass)` <- df_ph_nh3_impacts$`District Heating (Biomass)` * ph_nox_IF_public
      df_ph_nh3_impacts$`District Heating (Biomethane)` <- df_ph_nh3_impacts$`District Heating (Biomethane)` * ph_nox_IF_public
      df_ph_nh3_impacts$`District Heating (Gas)` <- df_ph_nh3_impacts$`District Heating (Gas)` * ph_nox_IF_public
      df_ph_nh3_impacts$`Gas Boiler` <- df_ph_nh3_impacts$`Gas Boiler` * ph_nox_IF_public
      df_ph_nh3_impacts$`Gas CHP` <- df_ph_nh3_impacts$`Gas CHP` * ph_nox_IF_public
      df_ph_nh3_impacts$`District Heating (Hydrogen)` <- df_ph_nh3_impacts$`District Heating (Hydrogen)` * ph_nox_IF_public
      df_ph_nh3_impacts$`Gas Boiler - H2-NG Blend` <- df_ph_nh3_impacts$`Gas Boiler - H2-NG Blend` * ph_nox_IF_public
      df_ph_nh3_impacts$`Gas CHP - H2-NG Blend` <- df_ph_nh3_impacts$`Gas CHP - H2-NG Blend` * ph_nox_IF_public
      df_ph_nh3_impacts$`ASHP + Hydrogen Boiler (Hydrogen)` <- df_ph_nh3_impacts$`ASHP + Hydrogen Boiler (Hydrogen)` * ph_nox_IF_public
      df_ph_nh3_impacts$`Hydrogen Boiler` <- df_ph_nh3_impacts$`Hydrogen Boiler` * ph_nox_IF_public
      df_ph_nh3_impacts$`Oil Boiler` <- df_ph_nh3_impacts$`Oil Boiler` * ph_nox_IF_public
      df_ph_nh3_impacts$`Community Heating` <- df_ph_nh3_impacts$`Community Heating` * ph_nox_IF_public
      df_ph_nh3_impacts$`Total Impact` <- rowSums(df_ph_nh3_impacts[, 2:17], na.rm = TRUE)
      
      return(df_ph_nh3_impacts)
      
  })
  
  ###################################################################################################################################################
  
  # Secondary PM2.5 Impacts - summing impacts of NOx, SO2, and NH3 on SIA (later to be added to total PM2.5)
  
  df_ph_sia_impacts <- reactive({
    
    req(df_ph_nh3_impacts())
    req(df_ph_snox_impacts())
    req(df_ph_so2_impacts())
    
    
    # Set to a pre-existing table so rowSums can still work - may not need but good for safeguarding
    
    df_ph_sia_impacts <- df_ph_nh3_impacts()[, 1:17]
    
    # Absolute PM2.5 Impacts
    
      df_ph_sia_impacts$`Biofuel Boiler` <- df_ph_nh3_impacts()$`Biofuel Boiler` + df_ph_so2_impacts()$`Biofuel Boiler` + df_ph_snox_impacts()$`Biofuel Boiler`
      df_ph_sia_impacts$`ASHP + Biofuel Boiler (Biofuel)` <- df_ph_nh3_impacts()$`ASHP + Biofuel Boiler (Biofuel)` + df_ph_so2_impacts()$`ASHP + Biofuel Boiler (Biofuel)` + df_ph_snox_impacts()$`ASHP + Biofuel Boiler (Biofuel)`
      df_ph_sia_impacts$`Biomass Boiler` <- df_ph_nh3_impacts()$`Biomass Boiler` + df_ph_so2_impacts()$`Biomass Boiler` + df_ph_snox_impacts()$`Biomass Boiler`
      df_ph_sia_impacts$`Biomass CHP` <- df_ph_nh3_impacts()$`Biomass CHP` + df_ph_so2_impacts()$`Biomass CHP` + df_ph_snox_impacts()$`Biomass CHP`
      df_ph_sia_impacts$`District Heating (Biomass)` <- df_ph_nh3_impacts()$`District Heating (Biomass)` + df_ph_so2_impacts()$`District Heating (Biomass)` + df_ph_snox_impacts()$`District Heating (Biomass)`
      df_ph_sia_impacts$`District Heating (Biomethane)` <- df_ph_nh3_impacts()$`District Heating (Biomethane)` + df_ph_so2_impacts()$`District Heating (Biomethane)` + df_ph_snox_impacts()$`District Heating (Biomethane)`
      df_ph_sia_impacts$`District Heating (Gas)` <- df_ph_nh3_impacts()$`District Heating (Gas)` + df_ph_so2_impacts()$`District Heating (Gas)` + df_ph_snox_impacts()$`District Heating (Gas)`
      df_ph_sia_impacts$`Gas Boiler` <- df_ph_nh3_impacts()$`Gas Boiler` + df_ph_so2_impacts()$`Gas Boiler` + df_ph_snox_impacts()$`Gas Boiler`
      df_ph_sia_impacts$`Gas CHP` <- df_ph_nh3_impacts()$`Gas CHP` + df_ph_so2_impacts()$`Gas CHP` + df_ph_snox_impacts()$`Gas CHP`
      df_ph_sia_impacts$`District Heating (Hydrogen)` <- df_ph_nh3_impacts()$`District Heating (Hydrogen)` + df_ph_so2_impacts()$`District Heating (Hydrogen)` + df_ph_snox_impacts()$`District Heating (Hydrogen)`
      df_ph_sia_impacts$`Gas Boiler - H2-NG Blend` <- df_ph_nh3_impacts()$`Gas Boiler - H2-NG Blend` + df_ph_so2_impacts()$`Gas Boiler - H2-NG Blend` + df_ph_snox_impacts()$`Gas Boiler - H2-NG Blend`
      df_ph_sia_impacts$`Gas CHP - H2-NG Blend` <- df_ph_nh3_impacts()$`Gas CHP - H2-NG Blend` + df_ph_so2_impacts()$`Gas CHP - H2-NG Blend` + df_ph_snox_impacts()$`Gas CHP - H2-NG Blend`
      df_ph_sia_impacts$`ASHP + Hydrogen Boiler (Hydrogen)` <- df_ph_nh3_impacts()$`ASHP + Hydrogen Boiler (Hydrogen)` + df_ph_so2_impacts()$`ASHP + Hydrogen Boiler (Hydrogen)` + df_ph_snox_impacts()$`ASHP + Hydrogen Boiler (Hydrogen)`
      df_ph_sia_impacts$`Hydrogen Boiler` <- df_ph_nh3_impacts()$`Hydrogen Boiler` + df_ph_so2_impacts()$`Hydrogen Boiler` + df_ph_snox_impacts()$`Hydrogen Boiler`
      df_ph_sia_impacts$`Oil Boiler` <- df_ph_nh3_impacts()$`Oil Boiler` + df_ph_so2_impacts()$`Oil Boiler` + df_ph_snox_impacts()$`Oil Boiler`
      df_ph_sia_impacts$`Community Heating` <- df_ph_nh3_impacts()$`Community Heating` + df_ph_so2_impacts()$`Community Heating` + df_ph_snox_impacts()$`Community Heating`
      df_ph_sia_impacts$`Total Impact` <- rowSums(df_ph_sia_impacts[, 2:17], na.rm = TRUE)
      
      return(df_ph_sia_impacts)
    

  })
  
  ###################################################################################################################################################
  
  # Total Domestic Heating PM2.5 Impacts - Adding Primary PM2.5 to SIA
  
  df_ph_tpm25_impacts <- reactive({
    
    req(df_ph_sia_impacts())
    req(df_ph_pm25_impacts())
    
    # Set to a pre-existing table so rowSums can still work - may not need but good for safeguarding
    
    df_ph_tpm25_impacts <- df_ph_sia_impacts()[, 1:17]
    
    # Absolute PM2.5 Impacts
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      df_ph_tpm25_impacts$`Biofuel Boiler` <- df_ph_pm25_impacts()$`Biofuel Boiler` + df_ph_sia_impacts()$`Biofuel Boiler`
      df_ph_tpm25_impacts$`ASHP + Biofuel Boiler (Biofuel)` <- df_ph_pm25_impacts()$`ASHP + Biofuel Boiler (Biofuel)` + df_ph_sia_impacts()$`ASHP + Biofuel Boiler (Biofuel)`
      df_ph_tpm25_impacts$`Biomass Boiler` <- df_ph_pm25_impacts()$`Biomass Boiler` + df_ph_sia_impacts()$`Biomass Boiler`
      df_ph_tpm25_impacts$`Biomass CHP` <- df_ph_pm25_impacts()$`Biomass CHP` + df_ph_sia_impacts()$`Biomass CHP`
      df_ph_tpm25_impacts$`District Heating (Biomass)` <- df_ph_pm25_impacts()$`District Heating (Biomass)` + df_ph_sia_impacts()$`District Heating (Biomass)`
      df_ph_tpm25_impacts$`District Heating (Biomethane)` <- df_ph_pm25_impacts()$`District Heating (Biomethane)` + df_ph_sia_impacts()$`District Heating (Biomethane)`
      df_ph_tpm25_impacts$`District Heating (Gas)` <- df_ph_pm25_impacts()$`District Heating (Gas)` + df_ph_sia_impacts()$`District Heating (Gas)`
      df_ph_tpm25_impacts$`Gas Boiler` <- df_ph_pm25_impacts()$`Gas Boiler` + df_ph_sia_impacts()$`Gas Boiler`
      df_ph_tpm25_impacts$`Gas CHP` <- df_ph_pm25_impacts()$`Gas CHP` + df_ph_sia_impacts()$`Gas CHP`
      df_ph_tpm25_impacts$`District Heating (Hydrogen)` <- df_ph_pm25_impacts()$`District Heating (Hydrogen)` + df_ph_sia_impacts()$`District Heating (Hydrogen)`
      df_ph_tpm25_impacts$`Gas Boiler - H2-NG Blend` <- df_ph_pm25_impacts()$`Gas Boiler - H2-NG Blend` + df_ph_sia_impacts()$`Gas Boiler - H2-NG Blend`
      df_ph_tpm25_impacts$`Gas CHP - H2-NG Blend` <- df_ph_pm25_impacts()$`Gas CHP - H2-NG Blend` + df_ph_sia_impacts()$`Gas CHP - H2-NG Blend`
      df_ph_tpm25_impacts$`ASHP + Hydrogen Boiler (Hydrogen)` <- df_ph_pm25_impacts()$`ASHP + Hydrogen Boiler (Hydrogen)` + df_ph_sia_impacts()$`ASHP + Hydrogen Boiler (Hydrogen)`
      df_ph_tpm25_impacts$`Hydrogen Boiler` <- df_ph_pm25_impacts()$`Hydrogen Boiler` + df_ph_sia_impacts()$`Hydrogen Boiler`
      df_ph_tpm25_impacts$`Oil Boiler` <- df_ph_pm25_impacts()$`Oil Boiler` + df_ph_sia_impacts()$`Oil Boiler`
      df_ph_tpm25_impacts$`Community Heating` <- df_ph_pm25_impacts()$`Community Heating` + df_ph_sia_impacts()$`Community Heating`
      df_ph_tpm25_impacts$`Total Impact` <- rowSums(df_ph_tpm25_impacts[, 2:17], na.rm = TRUE)
      
      return(df_ph_tpm25_impacts)
      
    }
    
    else {
      
      df_ph_tpm25_impacts$`Biofuel Boiler` <- (df_ph_pm25_impacts()$`Biofuel Boiler` + df_ph_sia_impacts()$`Biofuel Boiler`)/ph_data_sum()
      df_ph_tpm25_impacts$`ASHP + Biofuel Boiler (Biofuel)` <- (df_ph_pm25_impacts()$`ASHP + Biofuel Boiler (Biofuel)` + df_ph_sia_impacts()$`ASHP + Biofuel Boiler (Biofuel)`)/ph_data_sum()
      df_ph_tpm25_impacts$`Biomass Boiler` <- (df_ph_pm25_impacts()$`Biomass Boiler` + df_ph_sia_impacts()$`Biomass Boiler`)/ph_data_sum()
      df_ph_tpm25_impacts$`Biomass CHP` <- (df_ph_pm25_impacts()$`Biomass CHP` + df_ph_sia_impacts()$`Biomass CHP`)/ph_data_sum()
      df_ph_tpm25_impacts$`District Heating (Biomass)` <- (df_ph_pm25_impacts()$`District Heating (Biomass)` + df_ph_sia_impacts()$`District Heating (Biomass)`)/ph_data_sum()
      df_ph_tpm25_impacts$`District Heating (Biomethane)` <- (df_ph_pm25_impacts()$`District Heating (Biomethane)` + df_ph_sia_impacts()$`District Heating (Biomethane)`)/ph_data_sum()
      df_ph_tpm25_impacts$`District Heating (Gas)` <- (df_ph_pm25_impacts()$`District Heating (Gas)` + df_ph_sia_impacts()$`District Heating (Gas)`)/ph_data_sum()
      df_ph_tpm25_impacts$`Gas Boiler` <- (df_ph_pm25_impacts()$`Gas Boiler` + df_ph_sia_impacts()$`Gas Boiler`)/ph_data_sum()
      df_ph_tpm25_impacts$`Gas CHP` <- (df_ph_pm25_impacts()$`Gas CHP` + df_ph_sia_impacts()$`Gas CHP`)/ph_data_sum()
      df_ph_tpm25_impacts$`District Heating (Hydrogen)` <- (df_ph_pm25_impacts()$`District Heating (Hydrogen)` + df_ph_sia_impacts()$`District Heating (Hydrogen)`)/ph_data_sum()
      df_ph_tpm25_impacts$`Gas Boiler - H2-NG Blend` <- (df_ph_pm25_impacts()$`Gas Boiler - H2-NG Blend` + df_ph_sia_impacts()$`Gas Boiler - H2-NG Blend`)/ph_data_sum()
      df_ph_tpm25_impacts$`Gas CHP - H2-NG Blend` <- (df_ph_pm25_impacts()$`Gas CHP - H2-NG Blend` + df_ph_sia_impacts()$`Gas CHP - H2-NG Blend`)/ph_data_sum()
      df_ph_tpm25_impacts$`ASHP + Hydrogen Boiler (Hydrogen)` <- (df_ph_pm25_impacts()$`ASHP + Hydrogen Boiler (Hydrogen)` + df_ph_sia_impacts()$`ASHP + Hydrogen Boiler (Hydrogen)`)/ph_data_sum()
      df_ph_tpm25_impacts$`Hydrogen Boiler` <- (df_ph_pm25_impacts()$`Hydrogen Boiler` + df_ph_sia_impacts()$`Hydrogen Boiler`)/ph_data_sum()
      df_ph_tpm25_impacts$`Oil Boiler` <- (df_ph_pm25_impacts()$`Oil Boiler` + df_ph_sia_impacts()$`Oil Boiler`)/ph_data_sum()
      df_ph_tpm25_impacts$`Community Heating` <- (df_ph_pm25_impacts()$`Community Heating` + df_ph_sia_impacts()$`Community Heating`)/ph_data_sum()
      df_ph_tpm25_impacts$`Total Impact per TWh` <- rowSums(df_ph_tpm25_impacts[, 2:17], na.rm = TRUE)
      
      return(df_ph_tpm25_impacts)
      
    }
    
  })
  
  
  
  
  # Plot output for total PM2.5 Impacts
  
  output$ph_tpm25 <- renderPlotly({
    
    req(df_ph_tpm25_impacts())
    
    long_df_ph_tpm25_impacts <- melt(df_ph_tpm25_impacts()[, 1:17], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
    
    p <- ggplot(long_df_ph_tpm25_impacts, aes(Year, Impacts, col = Source)) +
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
  
  #####################################################################################################################
  
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
    
      ironsteel_pm25_impacts$`Iron and steel - Natural Gas` <- ironsteel_pm25_impacts$`Iron and steel - Natural Gas` * ironsteel_pm25_IF
      ironsteel_pm25_impacts$`Iron and steel - Hydrogen` <- ironsteel_pm25_impacts$`Iron and steel - Hydrogen` * ironsteel_pm25_IF
      ironsteel_pm25_impacts$`Iron and steel - Oil/Petroleum` <- ironsteel_pm25_impacts$`Iron and steel - Oil/Petroleum` * ironsteel_pm25_IF
      ironsteel_pm25_impacts$`Iron and steel - Bioenergy/Other` <- ironsteel_pm25_impacts$`Iron and steel - Bioenergy/Other` * ironsteel_pm25_IF
      ironsteel_pm25_impacts$`Iron and steel - Gas CCS` <- ironsteel_pm25_impacts$`Iron and steel - Gas CCS` * ironsteel_pm25_IF
      ironsteel_pm25_impacts$`Iron and steel - BECCS` <- ironsteel_pm25_impacts$`Iron and steel - BECCS` * ironsteel_pm25_IF
      ironsteel_pm25_impacts$`Total Impact` <- rowSums(ironsteel_pm25_impacts[ , 2:7], na.rm = TRUE)
      
      return(ironsteel_pm25_impacts)
    
  })
  
  ############################################################################################################################################################
  
  # Iron and Steel sNOx Impacts - already have NOx emissions
  
  ironsteel_snox_impacts <- reactive({
    
    req(ironsteel_nox_emissions())
    
    ironsteel_snox_impacts <- ironsteel_nox_emissions()[, 1:7] # setting Nox emissions to impacts - then multiplying by sNOx impact factor to get ACTUAL sNOx impacts
    
    ironsteel_snox_impacts$`Iron and steel - Natural Gas` <- ironsteel_snox_impacts$`Iron and steel - Natural Gas` * ironsteel_snox_IF
    ironsteel_snox_impacts$`Iron and steel - Hydrogen` <- ironsteel_snox_impacts$`Iron and steel - Hydrogen` * ironsteel_snox_IF
    ironsteel_snox_impacts$`Iron and steel - Oil/Petroleum` <- ironsteel_snox_impacts$`Iron and steel - Oil/Petroleum` * ironsteel_snox_IF
    ironsteel_snox_impacts$`Iron and steel - Bioenergy/Other` <- ironsteel_snox_impacts$`Iron and steel - Bioenergy/Other` * ironsteel_snox_IF
    ironsteel_snox_impacts$`Iron and steel - Gas CCS` <- ironsteel_snox_impacts$`Iron and steel - Gas CCS` * ironsteel_snox_IF
    ironsteel_snox_impacts$`Iron and steel - BECCS` <- ironsteel_snox_impacts$`Iron and steel - BECCS` * ironsteel_snox_IF
    ironsteel_snox_impacts$`Total Impact` <- rowSums(ironsteel_snox_impacts[ , 2:7], na.rm = TRUE)
    
    return(ironsteel_snox_impacts)
    
  })
  
  ############################################################################################################################################################
  
  # SO2 Impacts - Iron and Steel
  
  ironsteel_so2_emissions <- reactive({
    
    req(ironsteel_data())
    
    ironsteel_so2_emissions <- ironsteel_data()[, c(1,3:8)]
    
    ironsteel_so2_emissions$`Iron and steel - Natural Gas` <- ironsteel_so2_emissions$`Iron and steel - Natural Gas` * ironsteel_so2_EF_gas
    ironsteel_so2_emissions$`Iron and steel - Hydrogen` <- ironsteel_so2_emissions$`Iron and steel - Hydrogen` * ironsteel_so2_EF_hydrogen
    ironsteel_so2_emissions$`Iron and steel - Oil/Petroleum` <- ironsteel_so2_emissions$`Iron and steel - Oil/Petroleum` * ironsteel_so2_EF_fueloil
    ironsteel_so2_emissions$`Iron and steel - Bioenergy/Other` <- ironsteel_so2_emissions$`Iron and steel - Bioenergy/Other` * ironsteel_so2_EF_biomass
    ironsteel_so2_emissions$`Iron and steel - Gas CCS` <- ironsteel_so2_emissions$`Iron and steel - Gas CCS` * ironsteel_so2_EF_gasccs
    ironsteel_so2_emissions$`Iron and steel - BECCS` <- ironsteel_so2_emissions$`Iron and steel - BECCS` * ironsteel_so2_EF_beccs
    ironsteel_so2_emissions$`Total Emissions` <- rowSums(ironsteel_so2_emissions[ , 2:7], na.rm = TRUE)
    
    return(ironsteel_so2_emissions)
    
  })
  
  ironsteel_so2_impacts <- reactive({
    
    req(ironsteel_so2_emissions())
    
    ironsteel_so2_impacts <- ironsteel_so2_emissions()[, 1:7]
    
    ironsteel_so2_impacts$`Iron and steel - Natural Gas` <- ironsteel_so2_impacts$`Iron and steel - Natural Gas` * ironsteel_so2_IF
    ironsteel_so2_impacts$`Iron and steel - Hydrogen` <- ironsteel_so2_impacts$`Iron and steel - Hydrogen` * ironsteel_so2_IF
    ironsteel_so2_impacts$`Iron and steel - Oil/Petroleum` <- ironsteel_so2_impacts$`Iron and steel - Oil/Petroleum` * ironsteel_so2_IF
    ironsteel_so2_impacts$`Iron and steel - Bioenergy/Other` <- ironsteel_so2_impacts$`Iron and steel - Bioenergy/Other` * ironsteel_so2_IF
    ironsteel_so2_impacts$`Iron and steel - Gas CCS` <- ironsteel_so2_impacts$`Iron and steel - Gas CCS` * ironsteel_so2_IF
    ironsteel_so2_impacts$`Iron and steel - BECCS` <- ironsteel_so2_impacts$`Iron and steel - BECCS` * ironsteel_so2_IF
    ironsteel_so2_impacts$`Total Impact` <- rowSums(ironsteel_so2_impacts[ , 2:7], na.rm = TRUE)
    
    return(ironsteel_so2_impacts)
    
  })
  
  ############################################################################################################################################################
  
  # NH3 Impacts - Iron and Steel
  
  ironsteel_nh3_emissions <- reactive({
    
    req(ironsteel_data())
    
    ironsteel_nh3_emissions <- ironsteel_data()[, c(1,3:8)]
    
    ironsteel_nh3_emissions$`Iron and steel - Natural Gas` <- ironsteel_nh3_emissions$`Iron and steel - Natural Gas` * ironsteel_nh3_EF_gas
    ironsteel_nh3_emissions$`Iron and steel - Hydrogen` <- ironsteel_nh3_emissions$`Iron and steel - Hydrogen` * ironsteel_nh3_EF_hydrogen
    ironsteel_nh3_emissions$`Iron and steel - Oil/Petroleum` <- ironsteel_nh3_emissions$`Iron and steel - Oil/Petroleum` * ironsteel_nh3_EF_fueloil
    ironsteel_nh3_emissions$`Iron and steel - Bioenergy/Other` <- ironsteel_nh3_emissions$`Iron and steel - Bioenergy/Other` * ironsteel_nh3_EF_biomass
    ironsteel_nh3_emissions$`Iron and steel - Gas CCS` <- ironsteel_nh3_emissions$`Iron and steel - Gas CCS` * ironsteel_nh3_EF_gasccs
    ironsteel_nh3_emissions$`Iron and steel - BECCS` <- ironsteel_nh3_emissions$`Iron and steel - BECCS` * ironsteel_nh3_EF_beccs
    ironsteel_nh3_emissions$`Total Emissions` <- rowSums(ironsteel_nh3_emissions[ , 2:7], na.rm = TRUE)
    
    return(ironsteel_nh3_emissions)
    
  })
  
  ironsteel_nh3_impacts <- reactive({
    
    req(ironsteel_nh3_emissions())
    
    ironsteel_nh3_impacts <- ironsteel_nh3_emissions()[, 1:7]
    
    ironsteel_nh3_impacts$`Iron and steel - Natural Gas` <- ironsteel_nh3_impacts$`Iron and steel - Natural Gas` * ironsteel_nh3_IF
    ironsteel_nh3_impacts$`Iron and steel - Hydrogen` <- ironsteel_nh3_impacts$`Iron and steel - Hydrogen` * ironsteel_nh3_IF
    ironsteel_nh3_impacts$`Iron and steel - Oil/Petroleum` <- ironsteel_nh3_impacts$`Iron and steel - Oil/Petroleum` * ironsteel_nh3_IF
    ironsteel_nh3_impacts$`Iron and steel - Bioenergy/Other` <- ironsteel_nh3_impacts$`Iron and steel - Bioenergy/Other` * ironsteel_nh3_IF
    ironsteel_nh3_impacts$`Iron and steel - Gas CCS` <- ironsteel_nh3_impacts$`Iron and steel - Gas CCS` * ironsteel_nh3_IF
    ironsteel_nh3_impacts$`Iron and steel - BECCS` <- ironsteel_nh3_impacts$`Iron and steel - BECCS` * ironsteel_nh3_IF
    ironsteel_nh3_impacts$`Total Impact` <- rowSums(ironsteel_nh3_impacts[ , 2:7], na.rm = TRUE)
    
    return(ironsteel_nh3_impacts)
    
  })
  
  ############################################################################################################################################################
  
  # SIA Impacts - Iron and Steel
  
  ironsteel_sia_impacts <- reactive({
    
    req(ironsteel_snox_impacts())
    req(ironsteel_nh3_impacts())
    req(ironsteel_so2_impacts())
    
    ironsteel_sia_impacts <- ironsteel_snox_impacts()[, 1:7]
    
    ironsteel_sia_impacts$`Iron and steel - Natural Gas` <- ironsteel_snox_impacts()$`Iron and steel - Natural Gas` + ironsteel_so2_impacts()$`Iron and steel - Natural Gas` + ironsteel_nh3_impacts()$`Iron and steel - Natural Gas`
    ironsteel_sia_impacts$`Iron and steel - Hydrogen` <- ironsteel_snox_impacts()$`Iron and steel - Hydrogen` + ironsteel_so2_impacts()$`Iron and steel - Hydrogen` + ironsteel_nh3_impacts()$`Iron and steel - Hydrogen`
    ironsteel_sia_impacts$`Iron and steel - Oil/Petroleum` <- ironsteel_snox_impacts()$`Iron and steel - Oil/Petroleum` + ironsteel_so2_impacts()$`Iron and steel - Oil/Petroleum` + ironsteel_nh3_impacts()$`Iron and steel - Oil/Petroleum`
    ironsteel_sia_impacts$`Iron and steel - Bioenergy/Other` <- ironsteel_snox_impacts()$`Iron and steel - Bioenergy/Other` + ironsteel_so2_impacts()$`Iron and steel - Bioenergy/Other` + ironsteel_nh3_impacts()$`Iron and steel - Bioenergy/Other`
    ironsteel_sia_impacts$`Iron and steel - Gas CCS` <- ironsteel_snox_impacts()$`Iron and steel - Gas CCS` + ironsteel_so2_impacts()$`Iron and steel - Gas CCS` + ironsteel_nh3_impacts()$`Iron and steel - Gas CCS`
    ironsteel_sia_impacts$`Iron and steel - BECCS` <- ironsteel_snox_impacts()$`Iron and steel - BECCS` + ironsteel_so2_impacts()$`Iron and steel - BECCS` + ironsteel_nh3_impacts()$`Iron and steel - BECCS`
    ironsteel_sia_impacts$`Total Impact` <- rowSums(ironsteel_sia_impacts[ , 2:7], na.rm = TRUE)
    
    return(ironsteel_sia_impacts)
    
  })
  
  ############################################################################################################################################################
  
  # Total PM2.5 Impacts - Iron and Steel - only time with per TWh division to prevent double division
  
  ironsteel_tpm25_impacts <- reactive({
    
    req(ironsteel_pm25_impacts())
    req(ironsteel_sia_impacts())
    
    ironsteel_tpm25_impacts <- ironsteel_sia_impacts()[, 1:7]
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
    
    ironsteel_tpm25_impacts$`Iron and steel - Natural Gas` <- ironsteel_pm25_impacts()$`Iron and steel - Natural Gas` + ironsteel_sia_impacts()$`Iron and steel - Natural Gas`
    ironsteel_tpm25_impacts$`Iron and steel - Hydrogen` <- ironsteel_pm25_impacts()$`Iron and steel - Hydrogen` + ironsteel_sia_impacts()$`Iron and steel - Hydrogen`
    ironsteel_tpm25_impacts$`Iron and steel - Oil/Petroleum` <- ironsteel_pm25_impacts()$`Iron and steel - Oil/Petroleum` + ironsteel_sia_impacts()$`Iron and steel - Oil/Petroleum`
    ironsteel_tpm25_impacts$`Iron and steel - Bioenergy/Other` <- ironsteel_pm25_impacts()$`Iron and steel - Bioenergy/Other` + ironsteel_sia_impacts()$`Iron and steel - Bioenergy/Other`
    ironsteel_tpm25_impacts$`Iron and steel - Gas CCS` <- ironsteel_pm25_impacts()$`Iron and steel - Gas CCS` + ironsteel_sia_impacts()$`Iron and steel - Gas CCS`
    ironsteel_tpm25_impacts$`Iron and steel - BECCS` <- ironsteel_pm25_impacts()$`Iron and steel - BECCS` + ironsteel_sia_impacts()$`Iron and steel - BECCS`
    ironsteel_tpm25_impacts$`Total Impact` <- rowSums(ironsteel_tpm25_impacts[ , 2:7], na.rm = TRUE)
    
    return(ironsteel_tpm25_impacts)
    
    }
    
    else {
      
      ironsteel_tpm25_impacts$`Iron and steel - Natural Gas` <- (ironsteel_pm25_impacts()$`Iron and steel - Natural Gas` + ironsteel_sia_impacts()$`Iron and steel - Natural Gas`)/ironsteel_data_sum()
      ironsteel_tpm25_impacts$`Iron and steel - Hydrogen` <- (ironsteel_pm25_impacts()$`Iron and steel - Hydrogen` + ironsteel_sia_impacts()$`Iron and steel - Hydrogen`)/ironsteel_data_sum()
      ironsteel_tpm25_impacts$`Iron and steel - Oil/Petroleum` <- (ironsteel_pm25_impacts()$`Iron and steel - Oil/Petroleum` + ironsteel_sia_impacts()$`Iron and steel - Oil/Petroleum`)/ironsteel_data_sum()
      ironsteel_tpm25_impacts$`Iron and steel - Bioenergy/Other` <- (ironsteel_pm25_impacts()$`Iron and steel - Bioenergy/Other` + ironsteel_sia_impacts()$`Iron and steel - Bioenergy/Other`)/ironsteel_data_sum()
      ironsteel_tpm25_impacts$`Iron and steel - Gas CCS` <- (ironsteel_pm25_impacts()$`Iron and steel - Gas CCS` + ironsteel_sia_impacts()$`Iron and steel - Gas CCS`)/ironsteel_data_sum()
      ironsteel_tpm25_impacts$`Iron and steel - BECCS` <- (ironsteel_pm25_impacts()$`Iron and steel - BECCS` + ironsteel_sia_impacts()$`Iron and steel - BECCS`)/ironsteel_data_sum()
      ironsteel_tpm25_impacts$`Total Impact per TWh` <- rowSums(ironsteel_tpm25_impacts[ , 2:7], na.rm = TRUE)
      
      return(ironsteel_tpm25_impacts)
      
    }
    
  })
  
  output$ironsteel_tpm25 <- renderPlotly({
    
   req(ironsteel_tpm25_impacts())
      
      long_ironsteel_tpm25_impacts <- melt(ironsteel_tpm25_impacts()[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_ironsteel_tpm25_impacts, aes(Year, Impacts, col = Source)) +
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
  
  #########################################################################################################################################################
  
  #########################################################################################################################################################
  
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
  
  ################################################################################################################################################
  
  # Hydrogen Production NOx Impacts
  
   hyd_nox_emissions <- reactive({
    
    req(input_hyd_file())
    
    hyd_nox_emissions <- input_hyd_file()[ , 1:4]
    
      hyd_nox_emissions$`Methane Reformation with CCUS (Blue)` <- hyd_nox_emissions$`Methane Reformation with CCUS (Blue)` * hyd_prod_nox_EF_blue
      hyd_nox_emissions$`Biomass Gasification` <- hyd_nox_emissions$`Biomass Gasification` * hyd_prod_nox_EF_biomass_gasification
      hyd_nox_emissions$`Methane Reformation (Grey)` <- hyd_nox_emissions$`Methane Reformation (Grey)` * hyd_prod_nox_EF_grey
      hyd_nox_emissions$`Total Impact` <- rowSums(hyd_nox_emissions[ , 2:4], na.rm = TRUE)
      
      return(hyd_nox_emissions)
   
    })
  
  
  hyd_nox_impacts <- reactive({
    
    req(input_hyd_file())
    
    hyd_nox_impacts <- hyd_nox_emissions()[ , 1:4]
    
    # Absolute NOx Impact
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      hyd_nox_impacts$`Methane Reformation with CCUS (Blue)` <- hyd_nox_impacts$`Methane Reformation with CCUS (Blue)` * hyd_prod_nox_IF_Gas
      hyd_nox_impacts$`Biomass Gasification` <- hyd_nox_impacts$`Biomass Gasification` * hyd_prod_nox_IF_Gas
      hyd_nox_impacts$`Methane Reformation (Grey)` <- hyd_nox_impacts$`Methane Reformation (Grey)` * hyd_prod_nox_IF_Gas
      hyd_nox_impacts$`Total Impact` <- rowSums(hyd_nox_impacts[ , 2:4], na.rm = TRUE)
      
      return(hyd_nox_impacts)
    }
    
    # per TWh NOx Impact
    
    else {
      
      hyd_nox_impacts$`Methane Reformation with CCUS (Blue)` <- (hyd_nox_impacts$`Methane Reformation with CCUS (Blue)` * hyd_prod_nox_IF_Gas)/hyd_data_sum()
      hyd_nox_impacts$`Biomass Gasification` <- (hyd_nox_impacts$`Biomass Gasification` * hyd_prod_nox_IF_Gas)/hyd_data_sum()
      hyd_nox_impacts$`Methane Reformation (Grey)` <- (hyd_nox_impacts$`Methane Reformation (Grey)` * hyd_prod_nox_IF_Gas)/hyd_data_sum()
      hyd_nox_impacts$`Total Impact per TWh` <- rowSums(hyd_nox_impacts[ , 2:4], na.rm = TRUE)
      return(hyd_nox_impacts)
    }
    
  })
  
  
  # Plot output - not changed from before
  
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
  
  # Hydrogen Production Primary PM2.5 Impacts - not with per TWh to stop double division
  
  hyd_pm25_emissions <- reactive({
    
    req(input_hyd_file())
    
    hyd_pm25_emissions <- input_hyd_file()[ , 1:4]
    
    # Absolute pm25 Impact
    
    hyd_pm25_emissions$`Methane Reformation with CCUS (Blue)` <- hyd_pm25_emissions$`Methane Reformation with CCUS (Blue)` * hyd_prod_pm25_EF_blue
    hyd_pm25_emissions$`Biomass Gasification` <- hyd_pm25_emissions$`Biomass Gasification` * hyd_prod_pm25_EF_biomass_gasification
    hyd_pm25_emissions$`Methane Reformation (Grey)` <- hyd_pm25_emissions$`Methane Reformation (Grey)` * hyd_prod_pm25_EF_grey
    hyd_pm25_emissions$`Total Impact` <- rowSums(hyd_pm25_emissions[ , 2:4], na.rm = TRUE)
    
    return(hyd_pm25_emissions)
    
  })
  
  
  hyd_pm25_impacts <- reactive({
    
    req(hyd_pm25_emissions())
    
    hyd_pm25_impacts <- hyd_pm25_emissions()[ , 1:4]
    
    # Absolute PM2.5 Impact
    
      hyd_pm25_impacts$`Methane Reformation with CCUS (Blue)` <- hyd_pm25_impacts$`Methane Reformation with CCUS (Blue)` * hyd_prod_pm25_IF_Gas
      hyd_pm25_impacts$`Biomass Gasification` <- hyd_pm25_impacts$`Biomass Gasification` * hyd_prod_pm25_IF_Gas
      hyd_pm25_impacts$`Methane Reformation (Grey)` <- hyd_pm25_impacts$`Methane Reformation (Grey)` * hyd_prod_pm25_IF_Gas
      hyd_pm25_impacts$`Total Impact` <- rowSums(hyd_pm25_impacts[ , 2:4], na.rm = TRUE)
      
      return(hyd_pm25_impacts)
    
  })
  
  
  ##############################################################################################################################################################
  
  # Hydrogen production sNOx impacts
  
  hyd_snox_impacts <- reactive({
    
    # require NOx emissions from other reactive expression alone
    
    req(hyd_nox_emissions()) 
    
    hyd_snox_impacts <- hyd_nox_emissions()[ , 1:4]
    
    # Absolute NOx Impact
    
      hyd_snox_impacts$`Methane Reformation with CCUS (Blue)` <- hyd_snox_impacts$`Methane Reformation with CCUS (Blue)` * hyd_prod_snox_IF_Gas
      hyd_snox_impacts$`Biomass Gasification` <- hyd_snox_impacts$`Biomass Gasification` * hyd_prod_snox_IF_Gas
      hyd_snox_impacts$`Methane Reformation (Grey)` <- hyd_snox_impacts$`Methane Reformation (Grey)` * hyd_prod_snox_IF_Gas
      hyd_snox_impacts$`Total Impact` <- rowSums(hyd_snox_impacts[ , 2:4], na.rm = TRUE)
      
      return(hyd_snox_impacts)
    
    })
  
  
  ###############################################################################################################################################################
  
  # Hydrogen production SO2 impacts
  
  hyd_so2_emissions <- reactive({
    
    req(input_hyd_file())
    
    hyd_so2_emissions <- input_hyd_file()[ , 1:4]
    
    # Absolute so2 Impact
    
    hyd_so2_emissions$`Methane Reformation with CCUS (Blue)` <- hyd_so2_emissions$`Methane Reformation with CCUS (Blue)` * hyd_prod_so2_EF_blue
    hyd_so2_emissions$`Biomass Gasification` <- hyd_so2_emissions$`Biomass Gasification` * hyd_prod_so2_EF_biomass_gasification
    hyd_so2_emissions$`Methane Reformation (Grey)` <- hyd_so2_emissions$`Methane Reformation (Grey)` * hyd_prod_so2_EF_grey
    hyd_so2_emissions$`Total Impact` <- rowSums(hyd_so2_emissions[ , 2:4], na.rm = TRUE)
    
    return(hyd_so2_emissions)
    
  })
  
  
  hyd_so2_impacts <- reactive({
    
    req(hyd_so2_emissions())
    
    hyd_so2_impacts <- hyd_so2_emissions()[ , 1:4]
    
    # Absolute PM2.5 Impact
    
    hyd_so2_impacts$`Methane Reformation with CCUS (Blue)` <- hyd_so2_impacts$`Methane Reformation with CCUS (Blue)` * hyd_prod_so2_IF_Gas
    hyd_so2_impacts$`Biomass Gasification` <- hyd_so2_impacts$`Biomass Gasification` * hyd_prod_so2_IF_Gas
    hyd_so2_impacts$`Methane Reformation (Grey)` <- hyd_so2_impacts$`Methane Reformation (Grey)` * hyd_prod_so2_IF_Gas
    hyd_so2_impacts$`Total Impact` <- rowSums(hyd_so2_impacts[ , 2:4], na.rm = TRUE)
    
    return(hyd_so2_impacts)
    
  })
  
  
  ###############################################################################################################################################################

  # Hydrogen production NH3 impacts
  
  hyd_nh3_emissions <- reactive({
    
    req(input_hyd_file())
    
    hyd_nh3_emissions <- input_hyd_file()[ , 1:4]
    
    # Absolute nh3 Impact
    
    hyd_nh3_emissions$`Methane Reformation with CCUS (Blue)` <- hyd_nh3_emissions$`Methane Reformation with CCUS (Blue)` * hyd_prod_nh3_EF_blue
    hyd_nh3_emissions$`Biomass Gasification` <- hyd_nh3_emissions$`Biomass Gasification` * hyd_prod_nh3_EF_biomass_gasification
    hyd_nh3_emissions$`Methane Reformation (Grey)` <- hyd_nh3_emissions$`Methane Reformation (Grey)` * hyd_prod_nh3_EF_grey
    hyd_nh3_emissions$`Total Impact` <- rowSums(hyd_nh3_emissions[ , 2:4], na.rm = TRUE)
    
    return(hyd_nh3_emissions)
    
  })
  
  
  hyd_nh3_impacts <- reactive({
    
    req(hyd_nh3_emissions())
    
    hyd_nh3_impacts <- hyd_nh3_emissions()[ , 1:4]
    
    # Absolute PM2.5 Impact
    
    hyd_nh3_impacts$`Methane Reformation with CCUS (Blue)` <- hyd_nh3_impacts$`Methane Reformation with CCUS (Blue)` * hyd_prod_nh3_IF_Gas
    hyd_nh3_impacts$`Biomass Gasification` <- hyd_nh3_impacts$`Biomass Gasification` * hyd_prod_nh3_IF_Gas
    hyd_nh3_impacts$`Methane Reformation (Grey)` <- hyd_nh3_impacts$`Methane Reformation (Grey)` * hyd_prod_nh3_IF_Gas
    hyd_nh3_impacts$`Total Impact` <- rowSums(hyd_nh3_impacts[ , 2:4], na.rm = TRUE)
    
    return(hyd_nh3_impacts)
    
  })
  
  ###############################################################################################################################################################
  
  # Hydrogen production SIA impacts - sum of sNOx, SO2 and NH3 impacts
  
  hyd_sia_impacts <- reactive({
    
    req(hyd_snox_impacts())
    req(hyd_so2_impacts())
    req(hyd_nh3_impacts())
    
    hyd_sia_impacts <- hyd_snox_impacts()[ , 1:4]
    
    # Absolute NOx Impact
    
    hyd_sia_impacts$`Methane Reformation with CCUS (Blue)` <- hyd_snox_impacts()$`Methane Reformation with CCUS (Blue)` + hyd_so2_impacts()$`Methane Reformation with CCUS (Blue)` + hyd_nh3_impacts()$`Methane Reformation with CCUS (Blue)`
    hyd_sia_impacts$`Biomass Gasification` <- hyd_snox_impacts()$`Biomass Gasification` + hyd_so2_impacts()$`Biomass Gasification` + hyd_nh3_impacts()$`Biomass Gasification`
    hyd_sia_impacts$`Methane Reformation (Grey)` <- hyd_snox_impacts()$`Methane Reformation (Grey)` + hyd_so2_impacts()$`Methane Reformation (Grey)` + hyd_nh3_impacts()$`Methane Reformation (Grey)`
    hyd_sia_impacts$`Total Impact` <- rowSums(hyd_sia_impacts[ , 2:4], na.rm = TRUE)
    
    return(hyd_sia_impacts)
    
  })
  
  ###############################################################################################################################################################
  
  # Total PM2.5 impacts - only time with per TWh - sum of pPM2.5 and sNOx
  
  hyd_tpm25_impacts <- reactive({
    
    req(hyd_pm25_impacts())
    req(hyd_sia_impacts())

    hyd_tpm25_impacts <- hyd_sia_impacts()[ , 1:4]
    
    # Absolute Total PM2.5 Impact
    
    if (input$absolute_or_perUnit == "Absolute emissions/impacts") {
    
      hyd_tpm25_impacts$`Methane Reformation with CCUS (Blue)` <- hyd_pm25_impacts()$`Methane Reformation with CCUS (Blue)` + hyd_sia_impacts()$`Methane Reformation with CCUS (Blue)`
      hyd_tpm25_impacts$`Biomass Gasification` <- hyd_pm25_impacts()$`Biomass Gasification` + hyd_sia_impacts()$`Biomass Gasification`
      hyd_tpm25_impacts$`Methane Reformation (Grey)` <- hyd_pm25_impacts()$`Methane Reformation (Grey)` + hyd_sia_impacts()$`Methane Reformation (Grey)`
      hyd_tpm25_impacts$`Total Impact` <- rowSums(hyd_tpm25_impacts[ , 2:4], na.rm = TRUE)
    
      return(hyd_tpm25_impacts)
    
    }
    
    # per TWh Total PM2.5 Impact
    
    else {
      
      hyd_tpm25_impacts$`Methane Reformation with CCUS (Blue)` <- (hyd_pm25_impacts()$`Methane Reformation with CCUS (Blue)` + hyd_sia_impacts()$`Methane Reformation with CCUS (Blue)`)/hyd_data_sum()
      hyd_tpm25_impacts$`Biomass Gasification` <- (hyd_pm25_impacts()$`Biomass Gasification` + hyd_sia_impacts()$`Biomass Gasification`)/hyd_data_sum()
      hyd_tpm25_impacts$`Methane Reformation (Grey)` <- (hyd_pm25_impacts()$`Methane Reformation (Grey)` + hyd_sia_impacts()$`Methane Reformation (Grey)`)/hyd_data_sum()
      hyd_tpm25_impacts$`Total Impact per TWh` <- rowSums(hyd_tpm25_impacts[ , 2:4], na.rm = TRUE)
      
      return(hyd_tpm25_impacts)
      
    }
    
  })
  
  
  
  # Plot output
  
  output$hydrogen_tpm25 <- renderPlotly({
    
      req(hyd_tpm25_impacts())
      
      long_hyd_tpm25_impacts <- melt(hyd_tpm25_impacts()[ , 1:4], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
      
      p <- ggplot(long_hyd_tpm25_impacts, aes(Year, Impacts, col = Source)) +
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
      nfm_nox_impacts$`Total Impact per TWh` <- rowSums(nfm_nox_impacts[ , 2:7], na.rm = TRUE)
      
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
    
      nfm_pm25_impacts$`Non-ferrous metals - Natural Gas` <- nfm_pm25_impacts$`Non-ferrous metals - Natural Gas` * nfm_pm25_IF
      nfm_pm25_impacts$`Non-ferrous metals - Hydrogen` <- nfm_pm25_impacts$`Non-ferrous metals - Hydrogen` * nfm_pm25_IF
      nfm_pm25_impacts$`Non-ferrous metals - Oil/Petroleum` <- nfm_pm25_impacts$`Non-ferrous metals - Oil/Petroleum` * nfm_pm25_IF
      nfm_pm25_impacts$`Non-ferrous metals - Bioenergy/Other` <- nfm_pm25_impacts$`Non-ferrous metals - Bioenergy/Other` * nfm_pm25_IF
      nfm_pm25_impacts$`Non-ferrous metals - Gas CCS` <- nfm_pm25_impacts$`Non-ferrous metals - Gas CCS` * nfm_pm25_IF
      nfm_pm25_impacts$`Non-ferrous metals - BECCS` <- nfm_pm25_impacts$`Non-ferrous metals - BECCS` * nfm_pm25_IF
      nfm_pm25_impacts$`Total Impact` <- rowSums(nfm_pm25_impacts[ , 2:7], na.rm = TRUE)
      
      return(nfm_pm25_impacts)
      
    
  })
  
  ###############################################################################################################################################
  
  # Non-ferrous Metals sNOx Impacts - already have NOx emissions
  
  nfm_snox_impacts <- reactive({
    
    req(nfm_nox_emissions())
    
    nfm_snox_impacts <- nfm_nox_emissions()[, 1:7] # setting Nox emissions to impacts - then multiplying by sNOx impact factor to get ACTUAL sNOx impacts
    
    nfm_snox_impacts$`Non-ferrous metals - Natural Gas` <- nfm_snox_impacts$`Non-ferrous metals - Natural Gas` * nfm_snox_IF
    nfm_snox_impacts$`Non-ferrous metals - Hydrogen` <- nfm_snox_impacts$`Non-ferrous metals - Hydrogen` * nfm_snox_IF
    nfm_snox_impacts$`Non-ferrous metals - Oil/Petroleum` <- nfm_snox_impacts$`Non-ferrous metals - Oil/Petroleum` * nfm_snox_IF
    nfm_snox_impacts$`Non-ferrous metals - Bioenergy/Other` <- nfm_snox_impacts$`Non-ferrous metals - Bioenergy/Other` * nfm_snox_IF
    nfm_snox_impacts$`Non-ferrous metals - Gas CCS` <- nfm_snox_impacts$`Non-ferrous metals - Gas CCS` * nfm_snox_IF
    nfm_snox_impacts$`Non-ferrous metals - BECCS` <- nfm_snox_impacts$`Non-ferrous metals - BECCS` * nfm_snox_IF
    nfm_snox_impacts$`Total Impact` <- rowSums(nfm_snox_impacts[ , 2:7], na.rm = TRUE)
    
    return(nfm_snox_impacts)
    
  })
  
  ############################################################################################################################################################
  
  # SO2 Impacts - Non-ferrous Metals
  
  nfm_so2_emissions <- reactive({
    
    req(nfm_data())
    
    nfm_so2_emissions <- nfm_data()[, c(1,3:8)]
    
    nfm_so2_emissions$`Non-ferrous metals - Natural Gas` <- nfm_so2_emissions$`Non-ferrous metals - Natural Gas` * nfm_so2_EF_gas
    nfm_so2_emissions$`Non-ferrous metals - Hydrogen` <- nfm_so2_emissions$`Non-ferrous metals - Hydrogen` * nfm_so2_EF_hydrogen
    nfm_so2_emissions$`Non-ferrous metals - Oil/Petroleum` <- nfm_so2_emissions$`Non-ferrous metals - Oil/Petroleum` * nfm_so2_EF_fueloil
    nfm_so2_emissions$`Non-ferrous metals - Bioenergy/Other` <- nfm_so2_emissions$`Non-ferrous metals - Bioenergy/Other` * nfm_so2_EF_biomass
    nfm_so2_emissions$`Non-ferrous metals - Gas CCS` <- nfm_so2_emissions$`Non-ferrous metals - Gas CCS` * nfm_so2_EF_gasccs
    nfm_so2_emissions$`Non-ferrous metals - BECCS` <- nfm_so2_emissions$`Non-ferrous metals - BECCS` * nfm_so2_EF_beccs
    nfm_so2_emissions$`Total Emissions` <- rowSums(nfm_so2_emissions[ , 2:7], na.rm = TRUE)
    
    return(nfm_so2_emissions)
    
  })
  
  nfm_so2_impacts <- reactive({
    
    req(nfm_so2_emissions())
    
    nfm_so2_impacts <- nfm_so2_emissions()[, 1:7]
    
    nfm_so2_impacts$`Non-ferrous metals - Natural Gas` <- nfm_so2_impacts$`Non-ferrous metals - Natural Gas` * nfm_so2_IF
    nfm_so2_impacts$`Non-ferrous metals - Hydrogen` <- nfm_so2_impacts$`Non-ferrous metals - Hydrogen` * nfm_so2_IF
    nfm_so2_impacts$`Non-ferrous metals - Oil/Petroleum` <- nfm_so2_impacts$`Non-ferrous metals - Oil/Petroleum` * nfm_so2_IF
    nfm_so2_impacts$`Non-ferrous metals - Bioenergy/Other` <- nfm_so2_impacts$`Non-ferrous metals - Bioenergy/Other` * nfm_so2_IF
    nfm_so2_impacts$`Non-ferrous metals - Gas CCS` <- nfm_so2_impacts$`Non-ferrous metals - Gas CCS` * nfm_so2_IF
    nfm_so2_impacts$`Non-ferrous metals - BECCS` <- nfm_so2_impacts$`Non-ferrous metals - BECCS` * nfm_so2_IF
    nfm_so2_impacts$`Total Impact` <- rowSums(nfm_so2_impacts[ , 2:7], na.rm = TRUE)
    
    return(nfm_so2_impacts)
    
  })
  
  ############################################################################################################################################################
  
  # NH3 Impacts - Non-ferrous Metals
  
  nfm_nh3_emissions <- reactive({
    
    req(nfm_data())
    
    nfm_nh3_emissions <- nfm_data()[, c(1,3:8)]
    
    nfm_nh3_emissions$`Non-ferrous metals - Natural Gas` <- nfm_nh3_emissions$`Non-ferrous metals - Natural Gas` * nfm_nh3_EF_gas
    nfm_nh3_emissions$`Non-ferrous metals - Hydrogen` <- nfm_nh3_emissions$`Non-ferrous metals - Hydrogen` * nfm_nh3_EF_hydrogen
    nfm_nh3_emissions$`Non-ferrous metals - Oil/Petroleum` <- nfm_nh3_emissions$`Non-ferrous metals - Oil/Petroleum` * nfm_nh3_EF_fueloil
    nfm_nh3_emissions$`Non-ferrous metals - Bioenergy/Other` <- nfm_nh3_emissions$`Non-ferrous metals - Bioenergy/Other` * nfm_nh3_EF_biomass
    nfm_nh3_emissions$`Non-ferrous metals - Gas CCS` <- nfm_nh3_emissions$`Non-ferrous metals - Gas CCS` * nfm_nh3_EF_gasccs
    nfm_nh3_emissions$`Non-ferrous metals - BECCS` <- nfm_nh3_emissions$`Non-ferrous metals - BECCS` * nfm_nh3_EF_beccs
    nfm_nh3_emissions$`Total Emissions` <- rowSums(nfm_nh3_emissions[ , 2:7], na.rm = TRUE)
    
    return(nfm_nh3_emissions)
    
  })
  
  nfm_nh3_impacts <- reactive({
    
    req(nfm_nh3_emissions())
    
    nfm_nh3_impacts <- nfm_nh3_emissions()[, 1:7]
    
    nfm_nh3_impacts$`Non-ferrous metals - Natural Gas` <- nfm_nh3_impacts$`Non-ferrous metals - Natural Gas` * nfm_nh3_IF
    nfm_nh3_impacts$`Non-ferrous metals - Hydrogen` <- nfm_nh3_impacts$`Non-ferrous metals - Hydrogen` * nfm_nh3_IF
    nfm_nh3_impacts$`Non-ferrous metals - Oil/Petroleum` <- nfm_nh3_impacts$`Non-ferrous metals - Oil/Petroleum` * nfm_nh3_IF
    nfm_nh3_impacts$`Non-ferrous metals - Bioenergy/Other` <- nfm_nh3_impacts$`Non-ferrous metals - Bioenergy/Other` * nfm_nh3_IF
    nfm_nh3_impacts$`Non-ferrous metals - Gas CCS` <- nfm_nh3_impacts$`Non-ferrous metals - Gas CCS` * nfm_nh3_IF
    nfm_nh3_impacts$`Non-ferrous metals - BECCS` <- nfm_nh3_impacts$`Non-ferrous metals - BECCS` * nfm_nh3_IF
    nfm_nh3_impacts$`Total Impact` <- rowSums(nfm_nh3_impacts[ , 2:7], na.rm = TRUE)
    
    return(nfm_nh3_impacts)
    
  })
  
  ############################################################################################################################################################
  
  # SIA Impacts - Non-ferrous Metals
  
  nfm_sia_impacts <- reactive({
    
    req(nfm_snox_impacts())
    req(nfm_nh3_impacts())
    req(nfm_so2_impacts())
    
    nfm_sia_impacts <- nfm_snox_impacts()[, 1:7]
    
    nfm_sia_impacts$`Non-ferrous metals - Natural Gas` <- nfm_snox_impacts()$`Non-ferrous metals - Natural Gas` + nfm_so2_impacts()$`Non-ferrous metals - Natural Gas` + nfm_nh3_impacts()$`Non-ferrous metals - Natural Gas`
    nfm_sia_impacts$`Non-ferrous metals - Hydrogen` <- nfm_snox_impacts()$`Non-ferrous metals - Hydrogen` + nfm_so2_impacts()$`Non-ferrous metals - Hydrogen` + nfm_nh3_impacts()$`Non-ferrous metals - Hydrogen`
    nfm_sia_impacts$`Non-ferrous metals - Oil/Petroleum` <- nfm_snox_impacts()$`Non-ferrous metals - Oil/Petroleum` + nfm_so2_impacts()$`Non-ferrous metals - Oil/Petroleum` + nfm_nh3_impacts()$`Non-ferrous metals - Oil/Petroleum`
    nfm_sia_impacts$`Non-ferrous metals - Bioenergy/Other` <- nfm_snox_impacts()$`Non-ferrous metals - Bioenergy/Other` + nfm_so2_impacts()$`Non-ferrous metals - Bioenergy/Other` + nfm_nh3_impacts()$`Non-ferrous metals - Bioenergy/Other`
    nfm_sia_impacts$`Non-ferrous metals - Gas CCS` <- nfm_snox_impacts()$`Non-ferrous metals - Gas CCS` + nfm_so2_impacts()$`Non-ferrous metals - Gas CCS` + nfm_nh3_impacts()$`Non-ferrous metals - Gas CCS`
    nfm_sia_impacts$`Non-ferrous metals - BECCS` <- nfm_snox_impacts()$`Non-ferrous metals - BECCS` + nfm_so2_impacts()$`Non-ferrous metals - BECCS` + nfm_nh3_impacts()$`Non-ferrous metals - BECCS`
    nfm_sia_impacts$`Total Impact` <- rowSums(nfm_sia_impacts[ , 2:7], na.rm = TRUE)
    
    return(nfm_sia_impacts)
    
  })
  
  ############################################################################################################################################################
  
  # Total PM2.5 Impacts - Non-ferrous Metals - only time with per TWh division to prevent double division
  
  nfm_tpm25_impacts <- reactive({
    
    req(nfm_pm25_impacts())
    req(nfm_sia_impacts())
    
    nfm_tpm25_impacts <- nfm_sia_impacts()[, 1:7]
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      nfm_tpm25_impacts$`Non-ferrous metals - Natural Gas` <- nfm_pm25_impacts()$`Non-ferrous metals - Natural Gas` + nfm_sia_impacts()$`Non-ferrous metals - Natural Gas`
      nfm_tpm25_impacts$`Non-ferrous metals - Hydrogen` <- nfm_pm25_impacts()$`Non-ferrous metals - Hydrogen` + nfm_sia_impacts()$`Non-ferrous metals - Hydrogen`
      nfm_tpm25_impacts$`Non-ferrous metals - Oil/Petroleum` <- nfm_pm25_impacts()$`Non-ferrous metals - Oil/Petroleum` + nfm_sia_impacts()$`Non-ferrous metals - Oil/Petroleum`
      nfm_tpm25_impacts$`Non-ferrous metals - Bioenergy/Other` <- nfm_pm25_impacts()$`Non-ferrous metals - Bioenergy/Other` + nfm_sia_impacts()$`Non-ferrous metals - Bioenergy/Other`
      nfm_tpm25_impacts$`Non-ferrous metals - Gas CCS` <- nfm_pm25_impacts()$`Non-ferrous metals - Gas CCS` + nfm_sia_impacts()$`Non-ferrous metals - Gas CCS`
      nfm_tpm25_impacts$`Non-ferrous metals - BECCS` <- nfm_pm25_impacts()$`Non-ferrous metals - BECCS` + nfm_sia_impacts()$`Non-ferrous metals - BECCS`
      nfm_tpm25_impacts$`Total Impact` <- rowSums(nfm_tpm25_impacts[ , 2:7], na.rm = TRUE)
      
      return(nfm_tpm25_impacts)
      
    }
    
    else {
      
      nfm_tpm25_impacts$`Non-ferrous metals - Natural Gas` <- (nfm_pm25_impacts()$`Non-ferrous metals - Natural Gas` + nfm_sia_impacts()$`Non-ferrous metals - Natural Gas`)/nfm_data_sum()
      nfm_tpm25_impacts$`Non-ferrous metals - Hydrogen` <- (nfm_pm25_impacts()$`Non-ferrous metals - Hydrogen` + nfm_sia_impacts()$`Non-ferrous metals - Hydrogen`)/nfm_data_sum()
      nfm_tpm25_impacts$`Non-ferrous metals - Oil/Petroleum` <- (nfm_pm25_impacts()$`Non-ferrous metals - Oil/Petroleum` + nfm_sia_impacts()$`Non-ferrous metals - Oil/Petroleum`)/nfm_data_sum()
      nfm_tpm25_impacts$`Non-ferrous metals - Bioenergy/Other` <- (nfm_pm25_impacts()$`Non-ferrous metals - Bioenergy/Other` + nfm_sia_impacts()$`Non-ferrous metals - Bioenergy/Other`)/nfm_data_sum()
      nfm_tpm25_impacts$`Non-ferrous metals - Gas CCS` <- (nfm_pm25_impacts()$`Non-ferrous metals - Gas CCS` + nfm_sia_impacts()$`Non-ferrous metals - Gas CCS`)/nfm_data_sum()
      nfm_tpm25_impacts$`Non-ferrous metals - BECCS` <- (nfm_pm25_impacts()$`Non-ferrous metals - BECCS` + nfm_sia_impacts()$`Non-ferrous metals - BECCS`)/nfm_data_sum()
      nfm_tpm25_impacts$`Total Impact per TWh` <- rowSums(nfm_tpm25_impacts[ , 2:7], na.rm = TRUE)
      
      return(nfm_tpm25_impacts)
      
    }
    
  })
  
  output$nfm_tpm25 <- renderPlotly({
    
    req(nfm_tpm25_impacts())
    
    long_nfm_tpm25_impacts <- melt(nfm_tpm25_impacts()[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
    
    p <- ggplot(long_nfm_tpm25_impacts, aes(Year, Impacts, col = Source)) +
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
    
      chem_pm25_impacts$`Chemicals - Natural Gas` <- chem_pm25_impacts$`Chemicals - Natural Gas` * chem_pm25_IF
      chem_pm25_impacts$`Chemicals - Hydrogen` <- chem_pm25_impacts$`Chemicals - Hydrogen` * chem_pm25_IF
      chem_pm25_impacts$`Chemicals - Oil/Petroleum` <- chem_pm25_impacts$`Chemicals - Oil/Petroleum` * chem_pm25_IF
      chem_pm25_impacts$`Chemicals - Bioenergy/Other` <- chem_pm25_impacts$`Chemicals - Bioenergy/Other` * chem_pm25_IF
      chem_pm25_impacts$`Chemicals - Gas CCS` <- chem_pm25_impacts$`Chemicals - Gas CCS` * chem_pm25_IF
      chem_pm25_impacts$`Chemicals - BECCS` <- chem_pm25_impacts$`Chemicals - BECCS` * chem_pm25_IF
      chem_pm25_impacts$`Total Impact` <- rowSums(chem_pm25_impacts[ , 2:7], na.rm = TRUE)
      
      return(chem_pm25_impacts)
    
  })
  
  
  ################################################################################################################################################
  
  # Chemicals sNOx Impacts - already have NOx emissions
  
  chem_snox_impacts <- reactive({
    
    req(chem_nox_emissions())
    
    chem_snox_impacts <- chem_nox_emissions()[, 1:7] # setting Nox emissions to impacts - then multiplying by sNOx impact factor to get ACTUAL sNOx impacts
    
    chem_snox_impacts$`Chemicals - Natural Gas` <- chem_snox_impacts$`Chemicals - Natural Gas` * chem_snox_IF
    chem_snox_impacts$`Chemicals - Hydrogen` <- chem_snox_impacts$`Chemicals - Hydrogen` * chem_snox_IF
    chem_snox_impacts$`Chemicals - Oil/Petroleum` <- chem_snox_impacts$`Chemicals - Oil/Petroleum` * chem_snox_IF
    chem_snox_impacts$`Chemicals - Bioenergy/Other` <- chem_snox_impacts$`Chemicals - Bioenergy/Other` * chem_snox_IF
    chem_snox_impacts$`Chemicals - Gas CCS` <- chem_snox_impacts$`Chemicals - Gas CCS` * chem_snox_IF
    chem_snox_impacts$`Chemicals - BECCS` <- chem_snox_impacts$`Chemicals - BECCS` * chem_snox_IF
    chem_snox_impacts$`Total Impact` <- rowSums(chem_snox_impacts[ , 2:7], na.rm = TRUE)
    
    return(chem_snox_impacts)
    
  })
  
  ############################################################################################################################################################
  
  # SO2 Impacts - Chemicals
  
  chem_so2_emissions <- reactive({
    
    req(chem_data())
    
    chem_so2_emissions <- chem_data()[, c(1,3:8)]
    
    chem_so2_emissions$`Chemicals - Natural Gas` <- chem_so2_emissions$`Chemicals - Natural Gas` * chem_so2_EF_gas
    chem_so2_emissions$`Chemicals - Hydrogen` <- chem_so2_emissions$`Chemicals - Hydrogen` * chem_so2_EF_hydrogen
    chem_so2_emissions$`Chemicals - Oil/Petroleum` <- chem_so2_emissions$`Chemicals - Oil/Petroleum` * chem_so2_EF_fueloil
    chem_so2_emissions$`Chemicals - Bioenergy/Other` <- chem_so2_emissions$`Chemicals - Bioenergy/Other` * chem_so2_EF_biomass
    chem_so2_emissions$`Chemicals - Gas CCS` <- chem_so2_emissions$`Chemicals - Gas CCS` * chem_so2_EF_gasccs
    chem_so2_emissions$`Chemicals - BECCS` <- chem_so2_emissions$`Chemicals - BECCS` * chem_so2_EF_beccs
    chem_so2_emissions$`Total Emissions` <- rowSums(chem_so2_emissions[ , 2:7], na.rm = TRUE)
    
    return(chem_so2_emissions)
    
  })
  
  chem_so2_impacts <- reactive({
    
    req(chem_so2_emissions())
    
    chem_so2_impacts <- chem_so2_emissions()[, 1:7]
    
    chem_so2_impacts$`Chemicals - Natural Gas` <- chem_so2_impacts$`Chemicals - Natural Gas` * chem_so2_IF
    chem_so2_impacts$`Chemicals - Hydrogen` <- chem_so2_impacts$`Chemicals - Hydrogen` * chem_so2_IF
    chem_so2_impacts$`Chemicals - Oil/Petroleum` <- chem_so2_impacts$`Chemicals - Oil/Petroleum` * chem_so2_IF
    chem_so2_impacts$`Chemicals - Bioenergy/Other` <- chem_so2_impacts$`Chemicals - Bioenergy/Other` * chem_so2_IF
    chem_so2_impacts$`Chemicals - Gas CCS` <- chem_so2_impacts$`Chemicals - Gas CCS` * chem_so2_IF
    chem_so2_impacts$`Chemicals - BECCS` <- chem_so2_impacts$`Chemicals - BECCS` * chem_so2_IF
    chem_so2_impacts$`Total Impact` <- rowSums(chem_so2_impacts[ , 2:7], na.rm = TRUE)
    
    return(chem_so2_impacts)
    
  })
  
  ############################################################################################################################################################
  
  # NH3 Impacts - Chemicals
  
  chem_nh3_emissions <- reactive({
    
    req(chem_data())
    
    chem_nh3_emissions <- chem_data()[, c(1,3:8)]
    
    chem_nh3_emissions$`Chemicals - Natural Gas` <- chem_nh3_emissions$`Chemicals - Natural Gas` * chem_nh3_EF_gas
    chem_nh3_emissions$`Chemicals - Hydrogen` <- chem_nh3_emissions$`Chemicals - Hydrogen` * chem_nh3_EF_hydrogen
    chem_nh3_emissions$`Chemicals - Oil/Petroleum` <- chem_nh3_emissions$`Chemicals - Oil/Petroleum` * chem_nh3_EF_fueloil
    chem_nh3_emissions$`Chemicals - Bioenergy/Other` <- chem_nh3_emissions$`Chemicals - Bioenergy/Other` * chem_nh3_EF_biomass
    chem_nh3_emissions$`Chemicals - Gas CCS` <- chem_nh3_emissions$`Chemicals - Gas CCS` * chem_nh3_EF_gasccs
    chem_nh3_emissions$`Chemicals - BECCS` <- chem_nh3_emissions$`Chemicals - BECCS` * chem_nh3_EF_beccs
    chem_nh3_emissions$`Total Emissions` <- rowSums(chem_nh3_emissions[ , 2:7], na.rm = TRUE)
    
    return(chem_nh3_emissions)
    
  })
  
  chem_nh3_impacts <- reactive({
    
    req(chem_nh3_emissions())
    
    chem_nh3_impacts <- chem_nh3_emissions()[, 1:7]
    
    chem_nh3_impacts$`Chemicals - Natural Gas` <- chem_nh3_impacts$`Chemicals - Natural Gas` * chem_nh3_IF
    chem_nh3_impacts$`Chemicals - Hydrogen` <- chem_nh3_impacts$`Chemicals - Hydrogen` * chem_nh3_IF
    chem_nh3_impacts$`Chemicals - Oil/Petroleum` <- chem_nh3_impacts$`Chemicals - Oil/Petroleum` * chem_nh3_IF
    chem_nh3_impacts$`Chemicals - Bioenergy/Other` <- chem_nh3_impacts$`Chemicals - Bioenergy/Other` * chem_nh3_IF
    chem_nh3_impacts$`Chemicals - Gas CCS` <- chem_nh3_impacts$`Chemicals - Gas CCS` * chem_nh3_IF
    chem_nh3_impacts$`Chemicals - BECCS` <- chem_nh3_impacts$`Chemicals - BECCS` * chem_nh3_IF
    chem_nh3_impacts$`Total Impact` <- rowSums(chem_nh3_impacts[ , 2:7], na.rm = TRUE)
    
    return(chem_nh3_impacts)
    
  })
  
  ############################################################################################################################################################
  
  # SIA Impacts - Chemicals
  
  chem_sia_impacts <- reactive({
    
    req(chem_snox_impacts())
    req(chem_nh3_impacts())
    req(chem_so2_impacts())
    
    chem_sia_impacts <- chem_snox_impacts()[, 1:7]
    
    chem_sia_impacts$`Chemicals - Natural Gas` <- chem_snox_impacts()$`Chemicals - Natural Gas` + chem_so2_impacts()$`Chemicals - Natural Gas` + chem_nh3_impacts()$`Chemicals - Natural Gas`
    chem_sia_impacts$`Chemicals - Hydrogen` <- chem_snox_impacts()$`Chemicals - Hydrogen` + chem_so2_impacts()$`Chemicals - Hydrogen` + chem_nh3_impacts()$`Chemicals - Hydrogen`
    chem_sia_impacts$`Chemicals - Oil/Petroleum` <- chem_snox_impacts()$`Chemicals - Oil/Petroleum` + chem_so2_impacts()$`Chemicals - Oil/Petroleum` + chem_nh3_impacts()$`Chemicals - Oil/Petroleum`
    chem_sia_impacts$`Chemicals - Bioenergy/Other` <- chem_snox_impacts()$`Chemicals - Bioenergy/Other` + chem_so2_impacts()$`Chemicals - Bioenergy/Other` + chem_nh3_impacts()$`Chemicals - Bioenergy/Other`
    chem_sia_impacts$`Chemicals - Gas CCS` <- chem_snox_impacts()$`Chemicals - Gas CCS` + chem_so2_impacts()$`Chemicals - Gas CCS` + chem_nh3_impacts()$`Chemicals - Gas CCS`
    chem_sia_impacts$`Chemicals - BECCS` <- chem_snox_impacts()$`Chemicals - BECCS` + chem_so2_impacts()$`Chemicals - BECCS` + chem_nh3_impacts()$`Chemicals - BECCS`
    chem_sia_impacts$`Total Impact` <- rowSums(chem_sia_impacts[ , 2:7], na.rm = TRUE)
    
    return(chem_sia_impacts)
    
  })
  
  ############################################################################################################################################################
  
  # Total PM2.5 Impacts - Chemicals - only time with per TWh division to prevent double division
  
  chem_tpm25_impacts <- reactive({
    
    req(chem_pm25_impacts())
    req(chem_sia_impacts())
    
    chem_tpm25_impacts <- chem_sia_impacts()[, 1:7]
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      chem_tpm25_impacts$`Chemicals - Natural Gas` <- chem_pm25_impacts()$`Chemicals - Natural Gas` + chem_sia_impacts()$`Chemicals - Natural Gas`
      chem_tpm25_impacts$`Chemicals - Hydrogen` <- chem_pm25_impacts()$`Chemicals - Hydrogen` + chem_sia_impacts()$`Chemicals - Hydrogen`
      chem_tpm25_impacts$`Chemicals - Oil/Petroleum` <- chem_pm25_impacts()$`Chemicals - Oil/Petroleum` + chem_sia_impacts()$`Chemicals - Oil/Petroleum`
      chem_tpm25_impacts$`Chemicals - Bioenergy/Other` <- chem_pm25_impacts()$`Chemicals - Bioenergy/Other` + chem_sia_impacts()$`Chemicals - Bioenergy/Other`
      chem_tpm25_impacts$`Chemicals - Gas CCS` <- chem_pm25_impacts()$`Chemicals - Gas CCS` + chem_sia_impacts()$`Chemicals - Gas CCS`
      chem_tpm25_impacts$`Chemicals - BECCS` <- chem_pm25_impacts()$`Chemicals - BECCS` + chem_sia_impacts()$`Chemicals - BECCS`
      chem_tpm25_impacts$`Total Impact` <- rowSums(chem_tpm25_impacts[ , 2:7], na.rm = TRUE)
      
      return(chem_tpm25_impacts)
      
    }
    
    else {
      
      chem_tpm25_impacts$`Chemicals - Natural Gas` <- (chem_pm25_impacts()$`Chemicals - Natural Gas` + chem_sia_impacts()$`Chemicals - Natural Gas`)/chem_data_sum()
      chem_tpm25_impacts$`Chemicals - Hydrogen` <- (chem_pm25_impacts()$`Chemicals - Hydrogen` + chem_sia_impacts()$`Chemicals - Hydrogen`)/chem_data_sum()
      chem_tpm25_impacts$`Chemicals - Oil/Petroleum` <- (chem_pm25_impacts()$`Chemicals - Oil/Petroleum` + chem_sia_impacts()$`Chemicals - Oil/Petroleum`)/chem_data_sum()
      chem_tpm25_impacts$`Chemicals - Bioenergy/Other` <- (chem_pm25_impacts()$`Chemicals - Bioenergy/Other` + chem_sia_impacts()$`Chemicals - Bioenergy/Other`)/chem_data_sum()
      chem_tpm25_impacts$`Chemicals - Gas CCS` <- (chem_pm25_impacts()$`Chemicals - Gas CCS` + chem_sia_impacts()$`Chemicals - Gas CCS`)/chem_data_sum()
      chem_tpm25_impacts$`Chemicals - BECCS` <- (chem_pm25_impacts()$`Chemicals - BECCS` + chem_sia_impacts()$`Chemicals - BECCS`)/chem_data_sum()
      chem_tpm25_impacts$`Total Impact per TWh` <- rowSums(chem_tpm25_impacts[ , 2:7], na.rm = TRUE)
      
      return(chem_tpm25_impacts)
      
    }
    
  })
  
  output$chem_tpm25 <- renderPlotly({
    
    req(chem_tpm25_impacts())
    
    long_chem_tpm25_impacts <- melt(chem_tpm25_impacts()[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
    
    p <- ggplot(long_chem_tpm25_impacts, aes(Year, Impacts, col = Source)) +
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
      pap_nox_impacts$`Total Impact per TWh` <- rowSums(pap_nox_impacts[ , 2:7], na.rm = TRUE)
      
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
    
      pap_pm25_impacts$`Paper and Pulp - Natural Gas` <- pap_pm25_impacts$`Paper and Pulp - Natural Gas` * pap_pm25_IF
      pap_pm25_impacts$`Paper and Pulp - Hydrogen` <- pap_pm25_impacts$`Paper and Pulp - Hydrogen` * pap_pm25_IF
      pap_pm25_impacts$`Paper and Pulp - Oil/Petroleum` <- pap_pm25_impacts$`Paper and Pulp - Oil/Petroleum` * pap_pm25_IF
      pap_pm25_impacts$`Paper and Pulp - Bioenergy/Other` <- pap_pm25_impacts$`Paper and Pulp - Bioenergy/Other` * pap_pm25_IF
      pap_pm25_impacts$`Paper and Pulp - Gas CCS` <- pap_pm25_impacts$`Paper and Pulp - Gas CCS` * pap_pm25_IF
      pap_pm25_impacts$`Paper and Pulp - BECCS` <- pap_pm25_impacts$`Paper and Pulp - BECCS` * pap_pm25_IF
      pap_pm25_impacts$`Total Impact` <- rowSums(pap_pm25_impacts[ , 2:7], na.rm = TRUE)
      
      return(pap_pm25_impacts)
    
  })
  
  ###############################################################################################################################################
  
  # Paper and Pulp sNOx Impacts - already have NOx emissions
  
  pap_snox_impacts <- reactive({
    
    req(pap_nox_emissions())
    
    pap_snox_impacts <- pap_nox_emissions()[, 1:7] # setting Nox emissions to impacts - then multiplying by sNOx impact factor to get ACTUAL sNOx impacts
    
    pap_snox_impacts$`Paper and Pulp - Natural Gas` <- pap_snox_impacts$`Paper and Pulp - Natural Gas` * pap_snox_IF
    pap_snox_impacts$`Paper and Pulp - Hydrogen` <- pap_snox_impacts$`Paper and Pulp - Hydrogen` * pap_snox_IF
    pap_snox_impacts$`Paper and Pulp - Oil/Petroleum` <- pap_snox_impacts$`Paper and Pulp - Oil/Petroleum` * pap_snox_IF
    pap_snox_impacts$`Paper and Pulp - Bioenergy/Other` <- pap_snox_impacts$`Paper and Pulp - Bioenergy/Other` * pap_snox_IF
    pap_snox_impacts$`Paper and Pulp - Gas CCS` <- pap_snox_impacts$`Paper and Pulp - Gas CCS` * pap_snox_IF
    pap_snox_impacts$`Paper and Pulp - BECCS` <- pap_snox_impacts$`Paper and Pulp - BECCS` * pap_snox_IF
    pap_snox_impacts$`Total Impact` <- rowSums(pap_snox_impacts[ , 2:7], na.rm = TRUE)
    
    return(pap_snox_impacts)
    
  })
  
  ############################################################################################################################################################
  
  # SO2 Impacts - Paper and Pulp
  
  pap_so2_emissions <- reactive({
    
    req(pap_data())
    
    pap_so2_emissions <- pap_data()[, c(1,3:8)]
    
    pap_so2_emissions$`Paper and Pulp - Natural Gas` <- pap_so2_emissions$`Paper and Pulp - Natural Gas` * pap_so2_EF_gas
    pap_so2_emissions$`Paper and Pulp - Hydrogen` <- pap_so2_emissions$`Paper and Pulp - Hydrogen` * pap_so2_EF_hydrogen
    pap_so2_emissions$`Paper and Pulp - Oil/Petroleum` <- pap_so2_emissions$`Paper and Pulp - Oil/Petroleum` * pap_so2_EF_fueloil
    pap_so2_emissions$`Paper and Pulp - Bioenergy/Other` <- pap_so2_emissions$`Paper and Pulp - Bioenergy/Other` * pap_so2_EF_biomass
    pap_so2_emissions$`Paper and Pulp - Gas CCS` <- pap_so2_emissions$`Paper and Pulp - Gas CCS` * pap_so2_EF_gasccs
    pap_so2_emissions$`Paper and Pulp - BECCS` <- pap_so2_emissions$`Paper and Pulp - BECCS` * pap_so2_EF_beccs
    pap_so2_emissions$`Total Emissions` <- rowSums(pap_so2_emissions[ , 2:7], na.rm = TRUE)
    
    return(pap_so2_emissions)
    
  })
  
  pap_so2_impacts <- reactive({
    
    req(pap_so2_emissions())
    
    pap_so2_impacts <- pap_so2_emissions()[, 1:7]
    
    pap_so2_impacts$`Paper and Pulp - Natural Gas` <- pap_so2_impacts$`Paper and Pulp - Natural Gas` * pap_so2_IF
    pap_so2_impacts$`Paper and Pulp - Hydrogen` <- pap_so2_impacts$`Paper and Pulp - Hydrogen` * pap_so2_IF
    pap_so2_impacts$`Paper and Pulp - Oil/Petroleum` <- pap_so2_impacts$`Paper and Pulp - Oil/Petroleum` * pap_so2_IF
    pap_so2_impacts$`Paper and Pulp - Bioenergy/Other` <- pap_so2_impacts$`Paper and Pulp - Bioenergy/Other` * pap_so2_IF
    pap_so2_impacts$`Paper and Pulp - Gas CCS` <- pap_so2_impacts$`Paper and Pulp - Gas CCS` * pap_so2_IF
    pap_so2_impacts$`Paper and Pulp - BECCS` <- pap_so2_impacts$`Paper and Pulp - BECCS` * pap_so2_IF
    pap_so2_impacts$`Total Impact` <- rowSums(pap_so2_impacts[ , 2:7], na.rm = TRUE)
    
    return(pap_so2_impacts)
    
  })
  
  ############################################################################################################################################################
  
  # NH3 Impacts - Paper and Pulp
  
  pap_nh3_emissions <- reactive({
    
    req(pap_data())
    
    pap_nh3_emissions <- pap_data()[, c(1,3:8)]
    
    pap_nh3_emissions$`Paper and Pulp - Natural Gas` <- pap_nh3_emissions$`Paper and Pulp - Natural Gas` * pap_nh3_EF_gas
    pap_nh3_emissions$`Paper and Pulp - Hydrogen` <- pap_nh3_emissions$`Paper and Pulp - Hydrogen` * pap_nh3_EF_hydrogen
    pap_nh3_emissions$`Paper and Pulp - Oil/Petroleum` <- pap_nh3_emissions$`Paper and Pulp - Oil/Petroleum` * pap_nh3_EF_fueloil
    pap_nh3_emissions$`Paper and Pulp - Bioenergy/Other` <- pap_nh3_emissions$`Paper and Pulp - Bioenergy/Other` * pap_nh3_EF_biomass
    pap_nh3_emissions$`Paper and Pulp - Gas CCS` <- pap_nh3_emissions$`Paper and Pulp - Gas CCS` * pap_nh3_EF_gasccs
    pap_nh3_emissions$`Paper and Pulp - BECCS` <- pap_nh3_emissions$`Paper and Pulp - BECCS` * pap_nh3_EF_beccs
    pap_nh3_emissions$`Total Emissions` <- rowSums(pap_nh3_emissions[ , 2:7], na.rm = TRUE)
    
    return(pap_nh3_emissions)
    
  })
  
  pap_nh3_impacts <- reactive({
    
    req(pap_nh3_emissions())
    
    pap_nh3_impacts <- pap_nh3_emissions()[, 1:7]
    
    pap_nh3_impacts$`Paper and Pulp - Natural Gas` <- pap_nh3_impacts$`Paper and Pulp - Natural Gas` * pap_nh3_IF
    pap_nh3_impacts$`Paper and Pulp - Hydrogen` <- pap_nh3_impacts$`Paper and Pulp - Hydrogen` * pap_nh3_IF
    pap_nh3_impacts$`Paper and Pulp - Oil/Petroleum` <- pap_nh3_impacts$`Paper and Pulp - Oil/Petroleum` * pap_nh3_IF
    pap_nh3_impacts$`Paper and Pulp - Bioenergy/Other` <- pap_nh3_impacts$`Paper and Pulp - Bioenergy/Other` * pap_nh3_IF
    pap_nh3_impacts$`Paper and Pulp - Gas CCS` <- pap_nh3_impacts$`Paper and Pulp - Gas CCS` * pap_nh3_IF
    pap_nh3_impacts$`Paper and Pulp - BECCS` <- pap_nh3_impacts$`Paper and Pulp - BECCS` * pap_nh3_IF
    pap_nh3_impacts$`Total Impact` <- rowSums(pap_nh3_impacts[ , 2:7], na.rm = TRUE)
    
    return(pap_nh3_impacts)
    
  })
  
  ############################################################################################################################################################
  
  # SIA Impacts - Paper and Pulp
  
  pap_sia_impacts <- reactive({
    
    req(pap_snox_impacts())
    req(pap_nh3_impacts())
    req(pap_so2_impacts())
    
    pap_sia_impacts <- pap_snox_impacts()[, 1:7]
    
    pap_sia_impacts$`Paper and Pulp - Natural Gas` <- pap_snox_impacts()$`Paper and Pulp - Natural Gas` + pap_so2_impacts()$`Paper and Pulp - Natural Gas` + pap_nh3_impacts()$`Paper and Pulp - Natural Gas`
    pap_sia_impacts$`Paper and Pulp - Hydrogen` <- pap_snox_impacts()$`Paper and Pulp - Hydrogen` + pap_so2_impacts()$`Paper and Pulp - Hydrogen` + pap_nh3_impacts()$`Paper and Pulp - Hydrogen`
    pap_sia_impacts$`Paper and Pulp - Oil/Petroleum` <- pap_snox_impacts()$`Paper and Pulp - Oil/Petroleum` + pap_so2_impacts()$`Paper and Pulp - Oil/Petroleum` + pap_nh3_impacts()$`Paper and Pulp - Oil/Petroleum`
    pap_sia_impacts$`Paper and Pulp - Bioenergy/Other` <- pap_snox_impacts()$`Paper and Pulp - Bioenergy/Other` + pap_so2_impacts()$`Paper and Pulp - Bioenergy/Other` + pap_nh3_impacts()$`Paper and Pulp - Bioenergy/Other`
    pap_sia_impacts$`Paper and Pulp - Gas CCS` <- pap_snox_impacts()$`Paper and Pulp - Gas CCS` + pap_so2_impacts()$`Paper and Pulp - Gas CCS` + pap_nh3_impacts()$`Paper and Pulp - Gas CCS`
    pap_sia_impacts$`Paper and Pulp - BECCS` <- pap_snox_impacts()$`Paper and Pulp - BECCS` + pap_so2_impacts()$`Paper and Pulp - BECCS` + pap_nh3_impacts()$`Paper and Pulp - BECCS`
    pap_sia_impacts$`Total Impact` <- rowSums(pap_sia_impacts[ , 2:7], na.rm = TRUE)
    
    return(pap_sia_impacts)
    
  })
  
  ############################################################################################################################################################
  
  # Total PM2.5 Impacts - Paper and Pulp - only time with per TWh division to prevent double division
  
  pap_tpm25_impacts <- reactive({
    
    req(pap_pm25_impacts())
    req(pap_sia_impacts())
    
    pap_tpm25_impacts <- pap_sia_impacts()[, 1:7]
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      pap_tpm25_impacts$`Paper and Pulp - Natural Gas` <- pap_pm25_impacts()$`Paper and Pulp - Natural Gas` + pap_sia_impacts()$`Paper and Pulp - Natural Gas`
      pap_tpm25_impacts$`Paper and Pulp - Hydrogen` <- pap_pm25_impacts()$`Paper and Pulp - Hydrogen` + pap_sia_impacts()$`Paper and Pulp - Hydrogen`
      pap_tpm25_impacts$`Paper and Pulp - Oil/Petroleum` <- pap_pm25_impacts()$`Paper and Pulp - Oil/Petroleum` + pap_sia_impacts()$`Paper and Pulp - Oil/Petroleum`
      pap_tpm25_impacts$`Paper and Pulp - Bioenergy/Other` <- pap_pm25_impacts()$`Paper and Pulp - Bioenergy/Other` + pap_sia_impacts()$`Paper and Pulp - Bioenergy/Other`
      pap_tpm25_impacts$`Paper and Pulp - Gas CCS` <- pap_pm25_impacts()$`Paper and Pulp - Gas CCS` + pap_sia_impacts()$`Paper and Pulp - Gas CCS`
      pap_tpm25_impacts$`Paper and Pulp - BECCS` <- pap_pm25_impacts()$`Paper and Pulp - BECCS` + pap_sia_impacts()$`Paper and Pulp - BECCS`
      pap_tpm25_impacts$`Total Impact` <- rowSums(pap_tpm25_impacts[ , 2:7], na.rm = TRUE)
      
      return(pap_tpm25_impacts)
      
    }
    
    else {
      
      pap_tpm25_impacts$`Paper and Pulp - Natural Gas` <- (pap_pm25_impacts()$`Paper and Pulp - Natural Gas` + pap_sia_impacts()$`Paper and Pulp - Natural Gas`)/pap_data_sum()
      pap_tpm25_impacts$`Paper and Pulp - Hydrogen` <- (pap_pm25_impacts()$`Paper and Pulp - Hydrogen` + pap_sia_impacts()$`Paper and Pulp - Hydrogen`)/pap_data_sum()
      pap_tpm25_impacts$`Paper and Pulp - Oil/Petroleum` <- (pap_pm25_impacts()$`Paper and Pulp - Oil/Petroleum` + pap_sia_impacts()$`Paper and Pulp - Oil/Petroleum`)/pap_data_sum()
      pap_tpm25_impacts$`Paper and Pulp - Bioenergy/Other` <- (pap_pm25_impacts()$`Paper and Pulp - Bioenergy/Other` + pap_sia_impacts()$`Paper and Pulp - Bioenergy/Other`)/pap_data_sum()
      pap_tpm25_impacts$`Paper and Pulp - Gas CCS` <- (pap_pm25_impacts()$`Paper and Pulp - Gas CCS` + pap_sia_impacts()$`Paper and Pulp - Gas CCS`)/pap_data_sum()
      pap_tpm25_impacts$`Paper and Pulp - BECCS` <- (pap_pm25_impacts()$`Paper and Pulp - BECCS` + pap_sia_impacts()$`Paper and Pulp - BECCS`)/pap_data_sum()
      pap_tpm25_impacts$`Total Impact per TWh` <- rowSums(pap_tpm25_impacts[ , 2:7], na.rm = TRUE)
      
      return(pap_tpm25_impacts)
      
    }
    
  })
  
  output$pap_tpm25 <- renderPlotly({
    
    req(pap_tpm25_impacts())
    
    long_pap_tpm25_impacts <- melt(pap_tpm25_impacts()[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
    
    p <- ggplot(long_pap_tpm25_impacts, aes(Year, Impacts, col = Source)) +
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
      food_nox_impacts$`Total Impact per TWh` <- rowSums(food_nox_impacts[ , 2:7], na.rm = TRUE)
      
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
    
      food_pm25_impacts$`Food and Beverages - Natural Gas` <- food_pm25_impacts$`Food and Beverages - Natural Gas` * food_pm25_IF
      food_pm25_impacts$`Food and Beverages - Hydrogen` <- food_pm25_impacts$`Food and Beverages - Hydrogen` * food_pm25_IF
      food_pm25_impacts$`Food and Beverages - Oil/Petroleum` <- food_pm25_impacts$`Food and Beverages - Oil/Petroleum` * food_pm25_IF
      food_pm25_impacts$`Food and Beverages - Bioenergy/Other` <- food_pm25_impacts$`Food and Beverages - Bioenergy/Other` * food_pm25_IF
      food_pm25_impacts$`Food and Beverages - Gas CCS` <- food_pm25_impacts$`Food and Beverages - Gas CCS` * food_pm25_IF
      food_pm25_impacts$`Food and Beverages - BECCS` <- food_pm25_impacts$`Food and Beverages - BECCS` * food_pm25_IF
      food_pm25_impacts$`Total Impact` <- rowSums(food_pm25_impacts[ , 2:7], na.rm = TRUE)
      
      return(food_pm25_impacts)
    
      })

  ##########################################################################################################################################
    
  # Food and Beverages sNOx Impacts - already have NOx emissions
  
  food_snox_impacts <- reactive({
    
    req(food_nox_emissions())
    
    food_snox_impacts <- food_nox_emissions()[, 1:7] # setting Nox emissions to impacts - then multiplying by sNOx impact factor to get ACTUAL sNOx impacts
    
    food_snox_impacts$`Food and Beverages - Natural Gas` <- food_snox_impacts$`Food and Beverages - Natural Gas` * food_snox_IF
    food_snox_impacts$`Food and Beverages - Hydrogen` <- food_snox_impacts$`Food and Beverages - Hydrogen` * food_snox_IF
    food_snox_impacts$`Food and Beverages - Oil/Petroleum` <- food_snox_impacts$`Food and Beverages - Oil/Petroleum` * food_snox_IF
    food_snox_impacts$`Food and Beverages - Bioenergy/Other` <- food_snox_impacts$`Food and Beverages - Bioenergy/Other` * food_snox_IF
    food_snox_impacts$`Food and Beverages - Gas CCS` <- food_snox_impacts$`Food and Beverages - Gas CCS` * food_snox_IF
    food_snox_impacts$`Food and Beverages - BECCS` <- food_snox_impacts$`Food and Beverages - BECCS` * food_snox_IF
    food_snox_impacts$`Total Impact` <- rowSums(food_snox_impacts[ , 2:7], na.rm = TRUE)
    
    return(food_snox_impacts)
    
  })
  
  ############################################################################################################################################################
  
  # SO2 Impacts - Food and Beverages
  
  food_so2_emissions <- reactive({
    
    req(food_data())
    
    food_so2_emissions <- food_data()[, c(1,3:8)]
    
    food_so2_emissions$`Food and Beverages - Natural Gas` <- food_so2_emissions$`Food and Beverages - Natural Gas` * food_so2_EF_gas
    food_so2_emissions$`Food and Beverages - Hydrogen` <- food_so2_emissions$`Food and Beverages - Hydrogen` * food_so2_EF_hydrogen
    food_so2_emissions$`Food and Beverages - Oil/Petroleum` <- food_so2_emissions$`Food and Beverages - Oil/Petroleum` * food_so2_EF_fueloil
    food_so2_emissions$`Food and Beverages - Bioenergy/Other` <- food_so2_emissions$`Food and Beverages - Bioenergy/Other` * food_so2_EF_biomass
    food_so2_emissions$`Food and Beverages - Gas CCS` <- food_so2_emissions$`Food and Beverages - Gas CCS` * food_so2_EF_gasccs
    food_so2_emissions$`Food and Beverages - BECCS` <- food_so2_emissions$`Food and Beverages - BECCS` * food_so2_EF_beccs
    food_so2_emissions$`Total Emissions` <- rowSums(food_so2_emissions[ , 2:7], na.rm = TRUE)
    
    return(food_so2_emissions)
    
  })
  
  food_so2_impacts <- reactive({
    
    req(food_so2_emissions())
    
    food_so2_impacts <- food_so2_emissions()[, 1:7]
    
    food_so2_impacts$`Food and Beverages - Natural Gas` <- food_so2_impacts$`Food and Beverages - Natural Gas` * food_so2_IF
    food_so2_impacts$`Food and Beverages - Hydrogen` <- food_so2_impacts$`Food and Beverages - Hydrogen` * food_so2_IF
    food_so2_impacts$`Food and Beverages - Oil/Petroleum` <- food_so2_impacts$`Food and Beverages - Oil/Petroleum` * food_so2_IF
    food_so2_impacts$`Food and Beverages - Bioenergy/Other` <- food_so2_impacts$`Food and Beverages - Bioenergy/Other` * food_so2_IF
    food_so2_impacts$`Food and Beverages - Gas CCS` <- food_so2_impacts$`Food and Beverages - Gas CCS` * food_so2_IF
    food_so2_impacts$`Food and Beverages - BECCS` <- food_so2_impacts$`Food and Beverages - BECCS` * food_so2_IF
    food_so2_impacts$`Total Impact` <- rowSums(food_so2_impacts[ , 2:7], na.rm = TRUE)
    
    return(food_so2_impacts)
    
  })
  
  ############################################################################################################################################################
  
  # NH3 Impacts - Food and Beverages
  
  food_nh3_emissions <- reactive({
    
    req(food_data())
    
    food_nh3_emissions <- food_data()[, c(1,3:8)]
    
    food_nh3_emissions$`Food and Beverages - Natural Gas` <- food_nh3_emissions$`Food and Beverages - Natural Gas` * food_nh3_EF_gas
    food_nh3_emissions$`Food and Beverages - Hydrogen` <- food_nh3_emissions$`Food and Beverages - Hydrogen` * food_nh3_EF_hydrogen
    food_nh3_emissions$`Food and Beverages - Oil/Petroleum` <- food_nh3_emissions$`Food and Beverages - Oil/Petroleum` * food_nh3_EF_fueloil
    food_nh3_emissions$`Food and Beverages - Bioenergy/Other` <- food_nh3_emissions$`Food and Beverages - Bioenergy/Other` * food_nh3_EF_biomass
    food_nh3_emissions$`Food and Beverages - Gas CCS` <- food_nh3_emissions$`Food and Beverages - Gas CCS` * food_nh3_EF_gasccs
    food_nh3_emissions$`Food and Beverages - BECCS` <- food_nh3_emissions$`Food and Beverages - BECCS` * food_nh3_EF_beccs
    food_nh3_emissions$`Total Emissions` <- rowSums(food_nh3_emissions[ , 2:7], na.rm = TRUE)
    
    return(food_nh3_emissions)
    
  })
  
  food_nh3_impacts <- reactive({
    
    req(food_nh3_emissions())
    
    food_nh3_impacts <- food_nh3_emissions()[, 1:7]
    
    food_nh3_impacts$`Food and Beverages - Natural Gas` <- food_nh3_impacts$`Food and Beverages - Natural Gas` * food_nh3_IF
    food_nh3_impacts$`Food and Beverages - Hydrogen` <- food_nh3_impacts$`Food and Beverages - Hydrogen` * food_nh3_IF
    food_nh3_impacts$`Food and Beverages - Oil/Petroleum` <- food_nh3_impacts$`Food and Beverages - Oil/Petroleum` * food_nh3_IF
    food_nh3_impacts$`Food and Beverages - Bioenergy/Other` <- food_nh3_impacts$`Food and Beverages - Bioenergy/Other` * food_nh3_IF
    food_nh3_impacts$`Food and Beverages - Gas CCS` <- food_nh3_impacts$`Food and Beverages - Gas CCS` * food_nh3_IF
    food_nh3_impacts$`Food and Beverages - BECCS` <- food_nh3_impacts$`Food and Beverages - BECCS` * food_nh3_IF
    food_nh3_impacts$`Total Impact` <- rowSums(food_nh3_impacts[ , 2:7], na.rm = TRUE)
    
    return(food_nh3_impacts)
    
  })
  
  ############################################################################################################################################################
  
  # SIA Impacts - Food and Beverages
  
  food_sia_impacts <- reactive({
    
    req(food_snox_impacts())
    req(food_nh3_impacts())
    req(food_so2_impacts())
    
    food_sia_impacts <- food_snox_impacts()[, 1:7]
    
    food_sia_impacts$`Food and Beverages - Natural Gas` <- food_snox_impacts()$`Food and Beverages - Natural Gas` + food_so2_impacts()$`Food and Beverages - Natural Gas` + food_nh3_impacts()$`Food and Beverages - Natural Gas`
    food_sia_impacts$`Food and Beverages - Hydrogen` <- food_snox_impacts()$`Food and Beverages - Hydrogen` + food_so2_impacts()$`Food and Beverages - Hydrogen` + food_nh3_impacts()$`Food and Beverages - Hydrogen`
    food_sia_impacts$`Food and Beverages - Oil/Petroleum` <- food_snox_impacts()$`Food and Beverages - Oil/Petroleum` + food_so2_impacts()$`Food and Beverages - Oil/Petroleum` + food_nh3_impacts()$`Food and Beverages - Oil/Petroleum`
    food_sia_impacts$`Food and Beverages - Bioenergy/Other` <- food_snox_impacts()$`Food and Beverages - Bioenergy/Other` + food_so2_impacts()$`Food and Beverages - Bioenergy/Other` + food_nh3_impacts()$`Food and Beverages - Bioenergy/Other`
    food_sia_impacts$`Food and Beverages - Gas CCS` <- food_snox_impacts()$`Food and Beverages - Gas CCS` + food_so2_impacts()$`Food and Beverages - Gas CCS` + food_nh3_impacts()$`Food and Beverages - Gas CCS`
    food_sia_impacts$`Food and Beverages - BECCS` <- food_snox_impacts()$`Food and Beverages - BECCS` + food_so2_impacts()$`Food and Beverages - BECCS` + food_nh3_impacts()$`Food and Beverages - BECCS`
    food_sia_impacts$`Total Impact` <- rowSums(food_sia_impacts[ , 2:7], na.rm = TRUE)
    
    return(food_sia_impacts)
    
  })
  
  ############################################################################################################################################################
  
  # Total PM2.5 Impacts - Food and Beverages - only time with per TWh division to prevent double division
  
  food_tpm25_impacts <- reactive({
    
    req(food_pm25_impacts())
    req(food_sia_impacts())
    
    food_tpm25_impacts <- food_sia_impacts()[, 1:7]
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      food_tpm25_impacts$`Food and Beverages - Natural Gas` <- food_pm25_impacts()$`Food and Beverages - Natural Gas` + food_sia_impacts()$`Food and Beverages - Natural Gas`
      food_tpm25_impacts$`Food and Beverages - Hydrogen` <- food_pm25_impacts()$`Food and Beverages - Hydrogen` + food_sia_impacts()$`Food and Beverages - Hydrogen`
      food_tpm25_impacts$`Food and Beverages - Oil/Petroleum` <- food_pm25_impacts()$`Food and Beverages - Oil/Petroleum` + food_sia_impacts()$`Food and Beverages - Oil/Petroleum`
      food_tpm25_impacts$`Food and Beverages - Bioenergy/Other` <- food_pm25_impacts()$`Food and Beverages - Bioenergy/Other` + food_sia_impacts()$`Food and Beverages - Bioenergy/Other`
      food_tpm25_impacts$`Food and Beverages - Gas CCS` <- food_pm25_impacts()$`Food and Beverages - Gas CCS` + food_sia_impacts()$`Food and Beverages - Gas CCS`
      food_tpm25_impacts$`Food and Beverages - BECCS` <- food_pm25_impacts()$`Food and Beverages - BECCS` + food_sia_impacts()$`Food and Beverages - BECCS`
      food_tpm25_impacts$`Total Impact` <- rowSums(food_tpm25_impacts[ , 2:7], na.rm = TRUE)
      
      return(food_tpm25_impacts)
      
    }
    
    else {
      
      food_tpm25_impacts$`Food and Beverages - Natural Gas` <- (food_pm25_impacts()$`Food and Beverages - Natural Gas` + food_sia_impacts()$`Food and Beverages - Natural Gas`)/food_data_sum()
      food_tpm25_impacts$`Food and Beverages - Hydrogen` <- (food_pm25_impacts()$`Food and Beverages - Hydrogen` + food_sia_impacts()$`Food and Beverages - Hydrogen`)/food_data_sum()
      food_tpm25_impacts$`Food and Beverages - Oil/Petroleum` <- (food_pm25_impacts()$`Food and Beverages - Oil/Petroleum` + food_sia_impacts()$`Food and Beverages - Oil/Petroleum`)/food_data_sum()
      food_tpm25_impacts$`Food and Beverages - Bioenergy/Other` <- (food_pm25_impacts()$`Food and Beverages - Bioenergy/Other` + food_sia_impacts()$`Food and Beverages - Bioenergy/Other`)/food_data_sum()
      food_tpm25_impacts$`Food and Beverages - Gas CCS` <- (food_pm25_impacts()$`Food and Beverages - Gas CCS` + food_sia_impacts()$`Food and Beverages - Gas CCS`)/food_data_sum()
      food_tpm25_impacts$`Food and Beverages - BECCS` <- (food_pm25_impacts()$`Food and Beverages - BECCS` + food_sia_impacts()$`Food and Beverages - BECCS`)/food_data_sum()
      food_tpm25_impacts$`Total Impact per TWh` <- rowSums(food_tpm25_impacts[ , 2:7], na.rm = TRUE)
      
      return(food_tpm25_impacts)
      
    }
    
  })
  
  output$food_tpm25 <- renderPlotly({
    
    req(food_tpm25_impacts())
    
    long_food_tpm25_impacts <- melt(food_tpm25_impacts()[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
    
    p <- ggplot(long_food_tpm25_impacts, aes(Year, Impacts, col = Source)) +
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
      min_nox_impacts$`Total Impact per TWh` <- rowSums(min_nox_impacts[ , 2:7], na.rm = TRUE)
      
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
    
      min_pm25_impacts$`Mineral Products - Natural Gas` <- min_pm25_impacts$`Mineral Products - Natural Gas` * min_pm25_IF
      min_pm25_impacts$`Mineral Products - Hydrogen` <- min_pm25_impacts$`Mineral Products - Hydrogen` * min_pm25_IF
      min_pm25_impacts$`Mineral Products - Oil/Petroleum` <- min_pm25_impacts$`Mineral Products - Oil/Petroleum` * min_pm25_IF
      min_pm25_impacts$`Mineral Products - Bioenergy/Other` <- min_pm25_impacts$`Mineral Products - Bioenergy/Other` * min_pm25_IF
      min_pm25_impacts$`Mineral Products - Gas CCS` <- min_pm25_impacts$`Mineral Products - Gas CCS` * min_pm25_IF
      min_pm25_impacts$`Mineral Products - BECCS` <- min_pm25_impacts$`Mineral Products - BECCS` * min_pm25_IF
      min_pm25_impacts$`Total Impact` <- rowSums(min_pm25_impacts[ , 2:7], na.rm = TRUE)
      
      return(min_pm25_impacts)
  
  })
  
  ############################################################################################################################################
  
  # Mineral Products sNOx Impacts - already have NOx emissions
  
  min_snox_impacts <- reactive({
    
    req(min_nox_emissions())
    
    min_snox_impacts <- min_nox_emissions()[, 1:7] # setting Nox emissions to impacts - then multiplying by sNOx impact factor to get ACTUAL sNOx impacts
    
    min_snox_impacts$`Mineral Products - Natural Gas` <- min_snox_impacts$`Mineral Products - Natural Gas` * min_snox_IF
    min_snox_impacts$`Mineral Products - Hydrogen` <- min_snox_impacts$`Mineral Products - Hydrogen` * min_snox_IF
    min_snox_impacts$`Mineral Products - Oil/Petroleum` <- min_snox_impacts$`Mineral Products - Oil/Petroleum` * min_snox_IF
    min_snox_impacts$`Mineral Products - Bioenergy/Other` <- min_snox_impacts$`Mineral Products - Bioenergy/Other` * min_snox_IF
    min_snox_impacts$`Mineral Products - Gas CCS` <- min_snox_impacts$`Mineral Products - Gas CCS` * min_snox_IF
    min_snox_impacts$`Mineral Products - BECCS` <- min_snox_impacts$`Mineral Products - BECCS` * min_snox_IF
    min_snox_impacts$`Total Impact` <- rowSums(min_snox_impacts[ , 2:7], na.rm = TRUE)
    
    return(min_snox_impacts)
    
  })
  
  ############################################################################################################################################################
  
  # SO2 Impacts - Mineral Products
  
  min_so2_emissions <- reactive({
    
    req(min_data())
    
    min_so2_emissions <- min_data()[, c(1,3:8)]
    
    min_so2_emissions$`Mineral Products - Natural Gas` <- min_so2_emissions$`Mineral Products - Natural Gas` * min_so2_EF_gas
    min_so2_emissions$`Mineral Products - Hydrogen` <- min_so2_emissions$`Mineral Products - Hydrogen` * min_so2_EF_hydrogen
    min_so2_emissions$`Mineral Products - Oil/Petroleum` <- min_so2_emissions$`Mineral Products - Oil/Petroleum` * min_so2_EF_fueloil
    min_so2_emissions$`Mineral Products - Bioenergy/Other` <- min_so2_emissions$`Mineral Products - Bioenergy/Other` * min_so2_EF_biomass
    min_so2_emissions$`Mineral Products - Gas CCS` <- min_so2_emissions$`Mineral Products - Gas CCS` * min_so2_EF_gasccs
    min_so2_emissions$`Mineral Products - BECCS` <- min_so2_emissions$`Mineral Products - BECCS` * min_so2_EF_beccs
    min_so2_emissions$`Total Emissions` <- rowSums(min_so2_emissions[ , 2:7], na.rm = TRUE)
    
    return(min_so2_emissions)
    
  })
  
  min_so2_impacts <- reactive({
    
    req(min_so2_emissions())
    
    min_so2_impacts <- min_so2_emissions()[, 1:7]
    
    min_so2_impacts$`Mineral Products - Natural Gas` <- min_so2_impacts$`Mineral Products - Natural Gas` * min_so2_IF
    min_so2_impacts$`Mineral Products - Hydrogen` <- min_so2_impacts$`Mineral Products - Hydrogen` * min_so2_IF
    min_so2_impacts$`Mineral Products - Oil/Petroleum` <- min_so2_impacts$`Mineral Products - Oil/Petroleum` * min_so2_IF
    min_so2_impacts$`Mineral Products - Bioenergy/Other` <- min_so2_impacts$`Mineral Products - Bioenergy/Other` * min_so2_IF
    min_so2_impacts$`Mineral Products - Gas CCS` <- min_so2_impacts$`Mineral Products - Gas CCS` * min_so2_IF
    min_so2_impacts$`Mineral Products - BECCS` <- min_so2_impacts$`Mineral Products - BECCS` * min_so2_IF
    min_so2_impacts$`Total Impact` <- rowSums(min_so2_impacts[ , 2:7], na.rm = TRUE)
    
    return(min_so2_impacts)
    
  })
  
  ############################################################################################################################################################
  
  # NH3 Impacts - Mineral Products
  
  min_nh3_emissions <- reactive({
    
    req(min_data())
    
    min_nh3_emissions <- min_data()[, c(1,3:8)]
    
    min_nh3_emissions$`Mineral Products - Natural Gas` <- min_nh3_emissions$`Mineral Products - Natural Gas` * min_nh3_EF_gas
    min_nh3_emissions$`Mineral Products - Hydrogen` <- min_nh3_emissions$`Mineral Products - Hydrogen` * min_nh3_EF_hydrogen
    min_nh3_emissions$`Mineral Products - Oil/Petroleum` <- min_nh3_emissions$`Mineral Products - Oil/Petroleum` * min_nh3_EF_fueloil
    min_nh3_emissions$`Mineral Products - Bioenergy/Other` <- min_nh3_emissions$`Mineral Products - Bioenergy/Other` * min_nh3_EF_biomass
    min_nh3_emissions$`Mineral Products - Gas CCS` <- min_nh3_emissions$`Mineral Products - Gas CCS` * min_nh3_EF_gasccs
    min_nh3_emissions$`Mineral Products - BECCS` <- min_nh3_emissions$`Mineral Products - BECCS` * min_nh3_EF_beccs
    min_nh3_emissions$`Total Emissions` <- rowSums(min_nh3_emissions[ , 2:7], na.rm = TRUE)
    
    return(min_nh3_emissions)
    
  })
  
  min_nh3_impacts <- reactive({
    
    req(min_nh3_emissions())
    
    min_nh3_impacts <- min_nh3_emissions()[, 1:7]
    
    min_nh3_impacts$`Mineral Products - Natural Gas` <- min_nh3_impacts$`Mineral Products - Natural Gas` * min_nh3_IF
    min_nh3_impacts$`Mineral Products - Hydrogen` <- min_nh3_impacts$`Mineral Products - Hydrogen` * min_nh3_IF
    min_nh3_impacts$`Mineral Products - Oil/Petroleum` <- min_nh3_impacts$`Mineral Products - Oil/Petroleum` * min_nh3_IF
    min_nh3_impacts$`Mineral Products - Bioenergy/Other` <- min_nh3_impacts$`Mineral Products - Bioenergy/Other` * min_nh3_IF
    min_nh3_impacts$`Mineral Products - Gas CCS` <- min_nh3_impacts$`Mineral Products - Gas CCS` * min_nh3_IF
    min_nh3_impacts$`Mineral Products - BECCS` <- min_nh3_impacts$`Mineral Products - BECCS` * min_nh3_IF
    min_nh3_impacts$`Total Impact` <- rowSums(min_nh3_impacts[ , 2:7], na.rm = TRUE)
    
    return(min_nh3_impacts)
    
  })
  
  ############################################################################################################################################################
  
  # SIA Impacts - Mineral Products
  
  min_sia_impacts <- reactive({
    
    req(min_snox_impacts())
    req(min_nh3_impacts())
    req(min_so2_impacts())
    
    min_sia_impacts <- min_snox_impacts()[, 1:7]
    
    min_sia_impacts$`Mineral Products - Natural Gas` <- min_snox_impacts()$`Mineral Products - Natural Gas` + min_so2_impacts()$`Mineral Products - Natural Gas` + min_nh3_impacts()$`Mineral Products - Natural Gas`
    min_sia_impacts$`Mineral Products - Hydrogen` <- min_snox_impacts()$`Mineral Products - Hydrogen` + min_so2_impacts()$`Mineral Products - Hydrogen` + min_nh3_impacts()$`Mineral Products - Hydrogen`
    min_sia_impacts$`Mineral Products - Oil/Petroleum` <- min_snox_impacts()$`Mineral Products - Oil/Petroleum` + min_so2_impacts()$`Mineral Products - Oil/Petroleum` + min_nh3_impacts()$`Mineral Products - Oil/Petroleum`
    min_sia_impacts$`Mineral Products - Bioenergy/Other` <- min_snox_impacts()$`Mineral Products - Bioenergy/Other` + min_so2_impacts()$`Mineral Products - Bioenergy/Other` + min_nh3_impacts()$`Mineral Products - Bioenergy/Other`
    min_sia_impacts$`Mineral Products - Gas CCS` <- min_snox_impacts()$`Mineral Products - Gas CCS` + min_so2_impacts()$`Mineral Products - Gas CCS` + min_nh3_impacts()$`Mineral Products - Gas CCS`
    min_sia_impacts$`Mineral Products - BECCS` <- min_snox_impacts()$`Mineral Products - BECCS` + min_so2_impacts()$`Mineral Products - BECCS` + min_nh3_impacts()$`Mineral Products - BECCS`
    min_sia_impacts$`Total Impact` <- rowSums(min_sia_impacts[ , 2:7], na.rm = TRUE)
    
    return(min_sia_impacts)
    
  })
  
  ############################################################################################################################################################
  
  # Total PM2.5 Impacts - Mineral Products - only time with per TWh division to prevent double division
  
  min_tpm25_impacts <- reactive({
    
    req(min_pm25_impacts())
    req(min_sia_impacts())
    
    min_tpm25_impacts <- min_sia_impacts()[, 1:7]
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      min_tpm25_impacts$`Mineral Products - Natural Gas` <- min_pm25_impacts()$`Mineral Products - Natural Gas` + min_sia_impacts()$`Mineral Products - Natural Gas`
      min_tpm25_impacts$`Mineral Products - Hydrogen` <- min_pm25_impacts()$`Mineral Products - Hydrogen` + min_sia_impacts()$`Mineral Products - Hydrogen`
      min_tpm25_impacts$`Mineral Products - Oil/Petroleum` <- min_pm25_impacts()$`Mineral Products - Oil/Petroleum` + min_sia_impacts()$`Mineral Products - Oil/Petroleum`
      min_tpm25_impacts$`Mineral Products - Bioenergy/Other` <- min_pm25_impacts()$`Mineral Products - Bioenergy/Other` + min_sia_impacts()$`Mineral Products - Bioenergy/Other`
      min_tpm25_impacts$`Mineral Products - Gas CCS` <- min_pm25_impacts()$`Mineral Products - Gas CCS` + min_sia_impacts()$`Mineral Products - Gas CCS`
      min_tpm25_impacts$`Mineral Products - BECCS` <- min_pm25_impacts()$`Mineral Products - BECCS` + min_sia_impacts()$`Mineral Products - BECCS`
      min_tpm25_impacts$`Total Impact` <- rowSums(min_tpm25_impacts[ , 2:7], na.rm = TRUE)
      
      return(min_tpm25_impacts)
      
    }
    
    else {
      
      min_tpm25_impacts$`Mineral Products - Natural Gas` <- (min_pm25_impacts()$`Mineral Products - Natural Gas` + min_sia_impacts()$`Mineral Products - Natural Gas`)/min_data_sum()
      min_tpm25_impacts$`Mineral Products - Hydrogen` <- (min_pm25_impacts()$`Mineral Products - Hydrogen` + min_sia_impacts()$`Mineral Products - Hydrogen`)/min_data_sum()
      min_tpm25_impacts$`Mineral Products - Oil/Petroleum` <- (min_pm25_impacts()$`Mineral Products - Oil/Petroleum` + min_sia_impacts()$`Mineral Products - Oil/Petroleum`)/min_data_sum()
      min_tpm25_impacts$`Mineral Products - Bioenergy/Other` <- (min_pm25_impacts()$`Mineral Products - Bioenergy/Other` + min_sia_impacts()$`Mineral Products - Bioenergy/Other`)/min_data_sum()
      min_tpm25_impacts$`Mineral Products - Gas CCS` <- (min_pm25_impacts()$`Mineral Products - Gas CCS` + min_sia_impacts()$`Mineral Products - Gas CCS`)/min_data_sum()
      min_tpm25_impacts$`Mineral Products - BECCS` <- (min_pm25_impacts()$`Mineral Products - BECCS` + min_sia_impacts()$`Mineral Products - BECCS`)/min_data_sum()
      min_tpm25_impacts$`Total Impact per TWh` <- rowSums(min_tpm25_impacts[ , 2:7], na.rm = TRUE)
      
      return(min_tpm25_impacts)
      
    }
    
  })
  
  output$min_tpm25 <- renderPlotly({
    
    req(min_tpm25_impacts())
    
    long_min_tpm25_impacts <- melt(min_tpm25_impacts()[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
    
    p <- ggplot(long_min_tpm25_impacts, aes(Year, Impacts, col = Source)) +
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
      text_nox_impacts$`Total Impact per TWh` <- rowSums(text_nox_impacts[ , 2:7], na.rm = TRUE)
      
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
    
      text_pm25_impacts$`Textiles and Leather - Natural Gas` <- text_pm25_impacts$`Textiles and Leather - Natural Gas` * text_pm25_IF
      text_pm25_impacts$`Textiles and Leather - Hydrogen` <- text_pm25_impacts$`Textiles and Leather - Hydrogen` * text_pm25_IF
      text_pm25_impacts$`Textiles and Leather - Oil/Petroleum` <- text_pm25_impacts$`Textiles and Leather - Oil/Petroleum` * text_pm25_IF
      text_pm25_impacts$`Textiles and Leather - Bioenergy/Other` <- text_pm25_impacts$`Textiles and Leather - Bioenergy/Other` * text_pm25_IF
      text_pm25_impacts$`Textiles and Leather - Gas CCS` <- text_pm25_impacts$`Textiles and Leather - Gas CCS` * text_pm25_IF
      text_pm25_impacts$`Textiles and Leather - BECCS` <- text_pm25_impacts$`Textiles and Leather - BECCS` * text_pm25_IF
      text_pm25_impacts$`Total Impact` <- rowSums(text_pm25_impacts[ , 2:7], na.rm = TRUE)
      
      return(text_pm25_impacts)

  })
  
  ###############################################################################################################################################
  
  # Textiles and Leather sNOx Impacts - already have NOx emissions
  
  text_snox_impacts <- reactive({
    
    req(text_nox_emissions())
    
    text_snox_impacts <- text_nox_emissions()[, 1:7] # setting Nox emissions to impacts - then multiplying by sNOx impact factor to get ACTUAL sNOx impacts
    
    text_snox_impacts$`Textiles and Leather - Natural Gas` <- text_snox_impacts$`Textiles and Leather - Natural Gas` * text_snox_IF
    text_snox_impacts$`Textiles and Leather - Hydrogen` <- text_snox_impacts$`Textiles and Leather - Hydrogen` * text_snox_IF
    text_snox_impacts$`Textiles and Leather - Oil/Petroleum` <- text_snox_impacts$`Textiles and Leather - Oil/Petroleum` * text_snox_IF
    text_snox_impacts$`Textiles and Leather - Bioenergy/Other` <- text_snox_impacts$`Textiles and Leather - Bioenergy/Other` * text_snox_IF
    text_snox_impacts$`Textiles and Leather - Gas CCS` <- text_snox_impacts$`Textiles and Leather - Gas CCS` * text_snox_IF
    text_snox_impacts$`Textiles and Leather - BECCS` <- text_snox_impacts$`Textiles and Leather - BECCS` * text_snox_IF
    text_snox_impacts$`Total Impact` <- rowSums(text_snox_impacts[ , 2:7], na.rm = TRUE)
    
    return(text_snox_impacts)
    
  })
  
  ############################################################################################################################################################
  
  # SO2 Impacts - Textiles and Leather
  
  text_so2_emissions <- reactive({
    
    req(text_data())
    
    text_so2_emissions <- text_data()[, c(1,3:8)]
    
    text_so2_emissions$`Textiles and Leather - Natural Gas` <- text_so2_emissions$`Textiles and Leather - Natural Gas` * text_so2_EF_gas
    text_so2_emissions$`Textiles and Leather - Hydrogen` <- text_so2_emissions$`Textiles and Leather - Hydrogen` * text_so2_EF_hydrogen
    text_so2_emissions$`Textiles and Leather - Oil/Petroleum` <- text_so2_emissions$`Textiles and Leather - Oil/Petroleum` * text_so2_EF_fueloil
    text_so2_emissions$`Textiles and Leather - Bioenergy/Other` <- text_so2_emissions$`Textiles and Leather - Bioenergy/Other` * text_so2_EF_biomass
    text_so2_emissions$`Textiles and Leather - Gas CCS` <- text_so2_emissions$`Textiles and Leather - Gas CCS` * text_so2_EF_gasccs
    text_so2_emissions$`Textiles and Leather - BECCS` <- text_so2_emissions$`Textiles and Leather - BECCS` * text_so2_EF_beccs
    text_so2_emissions$`Total Emissions` <- rowSums(text_so2_emissions[ , 2:7], na.rm = TRUE)
    
    return(text_so2_emissions)
    
  })
  
  text_so2_impacts <- reactive({
    
    req(text_so2_emissions())
    
    text_so2_impacts <- text_so2_emissions()[, 1:7]
    
    text_so2_impacts$`Textiles and Leather - Natural Gas` <- text_so2_impacts$`Textiles and Leather - Natural Gas` * text_so2_IF
    text_so2_impacts$`Textiles and Leather - Hydrogen` <- text_so2_impacts$`Textiles and Leather - Hydrogen` * text_so2_IF
    text_so2_impacts$`Textiles and Leather - Oil/Petroleum` <- text_so2_impacts$`Textiles and Leather - Oil/Petroleum` * text_so2_IF
    text_so2_impacts$`Textiles and Leather - Bioenergy/Other` <- text_so2_impacts$`Textiles and Leather - Bioenergy/Other` * text_so2_IF
    text_so2_impacts$`Textiles and Leather - Gas CCS` <- text_so2_impacts$`Textiles and Leather - Gas CCS` * text_so2_IF
    text_so2_impacts$`Textiles and Leather - BECCS` <- text_so2_impacts$`Textiles and Leather - BECCS` * text_so2_IF
    text_so2_impacts$`Total Impact` <- rowSums(text_so2_impacts[ , 2:7], na.rm = TRUE)
    
    return(text_so2_impacts)
    
  })
  
  ############################################################################################################################################################
  
  # NH3 Impacts - Textiles and Leather
  
  text_nh3_emissions <- reactive({
    
    req(text_data())
    
    text_nh3_emissions <- text_data()[, c(1,3:8)]
    
    text_nh3_emissions$`Textiles and Leather - Natural Gas` <- text_nh3_emissions$`Textiles and Leather - Natural Gas` * text_nh3_EF_gas
    text_nh3_emissions$`Textiles and Leather - Hydrogen` <- text_nh3_emissions$`Textiles and Leather - Hydrogen` * text_nh3_EF_hydrogen
    text_nh3_emissions$`Textiles and Leather - Oil/Petroleum` <- text_nh3_emissions$`Textiles and Leather - Oil/Petroleum` * text_nh3_EF_fueloil
    text_nh3_emissions$`Textiles and Leather - Bioenergy/Other` <- text_nh3_emissions$`Textiles and Leather - Bioenergy/Other` * text_nh3_EF_biomass
    text_nh3_emissions$`Textiles and Leather - Gas CCS` <- text_nh3_emissions$`Textiles and Leather - Gas CCS` * text_nh3_EF_gasccs
    text_nh3_emissions$`Textiles and Leather - BECCS` <- text_nh3_emissions$`Textiles and Leather - BECCS` * text_nh3_EF_beccs
    text_nh3_emissions$`Total Emissions` <- rowSums(text_nh3_emissions[ , 2:7], na.rm = TRUE)
    
    return(text_nh3_emissions)
    
  })
  
  text_nh3_impacts <- reactive({
    
    req(text_nh3_emissions())
    
    text_nh3_impacts <- text_nh3_emissions()[, 1:7]
    
    text_nh3_impacts$`Textiles and Leather - Natural Gas` <- text_nh3_impacts$`Textiles and Leather - Natural Gas` * text_nh3_IF
    text_nh3_impacts$`Textiles and Leather - Hydrogen` <- text_nh3_impacts$`Textiles and Leather - Hydrogen` * text_nh3_IF
    text_nh3_impacts$`Textiles and Leather - Oil/Petroleum` <- text_nh3_impacts$`Textiles and Leather - Oil/Petroleum` * text_nh3_IF
    text_nh3_impacts$`Textiles and Leather - Bioenergy/Other` <- text_nh3_impacts$`Textiles and Leather - Bioenergy/Other` * text_nh3_IF
    text_nh3_impacts$`Textiles and Leather - Gas CCS` <- text_nh3_impacts$`Textiles and Leather - Gas CCS` * text_nh3_IF
    text_nh3_impacts$`Textiles and Leather - BECCS` <- text_nh3_impacts$`Textiles and Leather - BECCS` * text_nh3_IF
    text_nh3_impacts$`Total Impact` <- rowSums(text_nh3_impacts[ , 2:7], na.rm = TRUE)
    
    return(text_nh3_impacts)
    
  })
  
  ############################################################################################################################################################
  
  # SIA Impacts - Textiles and Leather
  
  text_sia_impacts <- reactive({
    
    req(text_snox_impacts())
    req(text_nh3_impacts())
    req(text_so2_impacts())
    
    text_sia_impacts <- text_snox_impacts()[, 1:7]
    
    text_sia_impacts$`Textiles and Leather - Natural Gas` <- text_snox_impacts()$`Textiles and Leather - Natural Gas` + text_so2_impacts()$`Textiles and Leather - Natural Gas` + text_nh3_impacts()$`Textiles and Leather - Natural Gas`
    text_sia_impacts$`Textiles and Leather - Hydrogen` <- text_snox_impacts()$`Textiles and Leather - Hydrogen` + text_so2_impacts()$`Textiles and Leather - Hydrogen` + text_nh3_impacts()$`Textiles and Leather - Hydrogen`
    text_sia_impacts$`Textiles and Leather - Oil/Petroleum` <- text_snox_impacts()$`Textiles and Leather - Oil/Petroleum` + text_so2_impacts()$`Textiles and Leather - Oil/Petroleum` + text_nh3_impacts()$`Textiles and Leather - Oil/Petroleum`
    text_sia_impacts$`Textiles and Leather - Bioenergy/Other` <- text_snox_impacts()$`Textiles and Leather - Bioenergy/Other` + text_so2_impacts()$`Textiles and Leather - Bioenergy/Other` + text_nh3_impacts()$`Textiles and Leather - Bioenergy/Other`
    text_sia_impacts$`Textiles and Leather - Gas CCS` <- text_snox_impacts()$`Textiles and Leather - Gas CCS` + text_so2_impacts()$`Textiles and Leather - Gas CCS` + text_nh3_impacts()$`Textiles and Leather - Gas CCS`
    text_sia_impacts$`Textiles and Leather - BECCS` <- text_snox_impacts()$`Textiles and Leather - BECCS` + text_so2_impacts()$`Textiles and Leather - BECCS` + text_nh3_impacts()$`Textiles and Leather - BECCS`
    text_sia_impacts$`Total Impact` <- rowSums(text_sia_impacts[ , 2:7], na.rm = TRUE)
    
    return(text_sia_impacts)
    
  })
  
  ############################################################################################################################################################
  
  # Total PM2.5 Impacts - Textiles and Leather - only time with per TWh division to prevent double division
  
  text_tpm25_impacts <- reactive({
    
    req(text_pm25_impacts())
    req(text_sia_impacts())
    
    text_tpm25_impacts <- text_sia_impacts()[, 1:7]
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      text_tpm25_impacts$`Textiles and Leather - Natural Gas` <- text_pm25_impacts()$`Textiles and Leather - Natural Gas` + text_sia_impacts()$`Textiles and Leather - Natural Gas`
      text_tpm25_impacts$`Textiles and Leather - Hydrogen` <- text_pm25_impacts()$`Textiles and Leather - Hydrogen` + text_sia_impacts()$`Textiles and Leather - Hydrogen`
      text_tpm25_impacts$`Textiles and Leather - Oil/Petroleum` <- text_pm25_impacts()$`Textiles and Leather - Oil/Petroleum` + text_sia_impacts()$`Textiles and Leather - Oil/Petroleum`
      text_tpm25_impacts$`Textiles and Leather - Bioenergy/Other` <- text_pm25_impacts()$`Textiles and Leather - Bioenergy/Other` + text_sia_impacts()$`Textiles and Leather - Bioenergy/Other`
      text_tpm25_impacts$`Textiles and Leather - Gas CCS` <- text_pm25_impacts()$`Textiles and Leather - Gas CCS` + text_sia_impacts()$`Textiles and Leather - Gas CCS`
      text_tpm25_impacts$`Textiles and Leather - BECCS` <- text_pm25_impacts()$`Textiles and Leather - BECCS` + text_sia_impacts()$`Textiles and Leather - BECCS`
      text_tpm25_impacts$`Total Impact` <- rowSums(text_tpm25_impacts[ , 2:7], na.rm = TRUE)
      
      return(text_tpm25_impacts)
      
    }
    
    else {
      
      text_tpm25_impacts$`Textiles and Leather - Natural Gas` <- (text_pm25_impacts()$`Textiles and Leather - Natural Gas` + text_sia_impacts()$`Textiles and Leather - Natural Gas`)/text_data_sum()
      text_tpm25_impacts$`Textiles and Leather - Hydrogen` <- (text_pm25_impacts()$`Textiles and Leather - Hydrogen` + text_sia_impacts()$`Textiles and Leather - Hydrogen`)/text_data_sum()
      text_tpm25_impacts$`Textiles and Leather - Oil/Petroleum` <- (text_pm25_impacts()$`Textiles and Leather - Oil/Petroleum` + text_sia_impacts()$`Textiles and Leather - Oil/Petroleum`)/text_data_sum()
      text_tpm25_impacts$`Textiles and Leather - Bioenergy/Other` <- (text_pm25_impacts()$`Textiles and Leather - Bioenergy/Other` + text_sia_impacts()$`Textiles and Leather - Bioenergy/Other`)/text_data_sum()
      text_tpm25_impacts$`Textiles and Leather - Gas CCS` <- (text_pm25_impacts()$`Textiles and Leather - Gas CCS` + text_sia_impacts()$`Textiles and Leather - Gas CCS`)/text_data_sum()
      text_tpm25_impacts$`Textiles and Leather - BECCS` <- (text_pm25_impacts()$`Textiles and Leather - BECCS` + text_sia_impacts()$`Textiles and Leather - BECCS`)/text_data_sum()
      text_tpm25_impacts$`Total Impact per TWh` <- rowSums(text_tpm25_impacts[ , 2:7], na.rm = TRUE)
      
      return(text_tpm25_impacts)
      
    }
    
  })
  
  output$text_tpm25 <- renderPlotly({
    
    req(text_tpm25_impacts())
    
    long_text_tpm25_impacts <- melt(text_tpm25_impacts()[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
    
    p <- ggplot(long_text_tpm25_impacts, aes(Year, Impacts, col = Source)) +
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
      con_nox_impacts$`Total Impact per TWh` <- rowSums(con_nox_impacts[ , 2:7], na.rm = TRUE)
      
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
    
      con_pm25_impacts$`Construction - Natural Gas` <- con_pm25_impacts$`Construction - Natural Gas` * con_pm25_IF
      con_pm25_impacts$`Construction - Hydrogen` <- con_pm25_impacts$`Construction - Hydrogen` * con_pm25_IF
      con_pm25_impacts$`Construction - Oil/Petroleum` <- con_pm25_impacts$`Construction - Oil/Petroleum` * con_pm25_IF
      con_pm25_impacts$`Construction - Bioenergy/Other` <- con_pm25_impacts$`Construction - Bioenergy/Other` * con_pm25_IF
      con_pm25_impacts$`Construction - Gas CCS` <- con_pm25_impacts$`Construction - Gas CCS` * con_pm25_IF
      con_pm25_impacts$`Construction - BECCS` <- con_pm25_impacts$`Construction - BECCS` * con_pm25_IF
      con_pm25_impacts$`Total Impact` <- rowSums(con_pm25_impacts[ , 2:7], na.rm = TRUE)
      
      return(con_pm25_impacts)

  })
  
  ############################################################################################################################################
  
  # Construction sNOx Impacts - already have NOx emissions
  
  con_snox_impacts <- reactive({
    
    req(con_nox_emissions())
    
    con_snox_impacts <- con_nox_emissions()[, 1:7] # setting Nox emissions to impacts - then multiplying by sNOx impact factor to get ACTUAL sNOx impacts
    
    con_snox_impacts$`Construction - Natural Gas` <- con_snox_impacts$`Construction - Natural Gas` * con_snox_IF
    con_snox_impacts$`Construction - Hydrogen` <- con_snox_impacts$`Construction - Hydrogen` * con_snox_IF
    con_snox_impacts$`Construction - Oil/Petroleum` <- con_snox_impacts$`Construction - Oil/Petroleum` * con_snox_IF
    con_snox_impacts$`Construction - Bioenergy/Other` <- con_snox_impacts$`Construction - Bioenergy/Other` * con_snox_IF
    con_snox_impacts$`Construction - Gas CCS` <- con_snox_impacts$`Construction - Gas CCS` * con_snox_IF
    con_snox_impacts$`Construction - BECCS` <- con_snox_impacts$`Construction - BECCS` * con_snox_IF
    con_snox_impacts$`Total Impact` <- rowSums(con_snox_impacts[ , 2:7], na.rm = TRUE)
    
    return(con_snox_impacts)
    
  })
  
  ############################################################################################################################################################
  
  # SO2 Impacts - Construction
  
  con_so2_emissions <- reactive({
    
    req(con_data())
    
    con_so2_emissions <- con_data()[, c(1,3:8)]
    
    con_so2_emissions$`Construction - Natural Gas` <- con_so2_emissions$`Construction - Natural Gas` * con_so2_EF_gas
    con_so2_emissions$`Construction - Hydrogen` <- con_so2_emissions$`Construction - Hydrogen` * con_so2_EF_hydrogen
    con_so2_emissions$`Construction - Oil/Petroleum` <- con_so2_emissions$`Construction - Oil/Petroleum` * con_so2_EF_gasoil
    con_so2_emissions$`Construction - Bioenergy/Other` <- con_so2_emissions$`Construction - Bioenergy/Other` * con_so2_EF_biomass
    con_so2_emissions$`Construction - Gas CCS` <- con_so2_emissions$`Construction - Gas CCS` * con_so2_EF_gasccs
    con_so2_emissions$`Construction - BECCS` <- con_so2_emissions$`Construction - BECCS` * con_so2_EF_beccs
    con_so2_emissions$`Total Emissions` <- rowSums(con_so2_emissions[ , 2:7], na.rm = TRUE)
    
    return(con_so2_emissions)
    
  })
  
  con_so2_impacts <- reactive({
    
    req(con_so2_emissions())
    
    con_so2_impacts <- con_so2_emissions()[, 1:7]
    
    con_so2_impacts$`Construction - Natural Gas` <- con_so2_impacts$`Construction - Natural Gas` * con_so2_IF
    con_so2_impacts$`Construction - Hydrogen` <- con_so2_impacts$`Construction - Hydrogen` * con_so2_IF
    con_so2_impacts$`Construction - Oil/Petroleum` <- con_so2_impacts$`Construction - Oil/Petroleum` * con_so2_IF
    con_so2_impacts$`Construction - Bioenergy/Other` <- con_so2_impacts$`Construction - Bioenergy/Other` * con_so2_IF
    con_so2_impacts$`Construction - Gas CCS` <- con_so2_impacts$`Construction - Gas CCS` * con_so2_IF
    con_so2_impacts$`Construction - BECCS` <- con_so2_impacts$`Construction - BECCS` * con_so2_IF
    con_so2_impacts$`Total Impact` <- rowSums(con_so2_impacts[ , 2:7], na.rm = TRUE)
    
    return(con_so2_impacts)
    
  })
  
  ############################################################################################################################################################
  
  # NH3 Impacts - Construction
  
  con_nh3_emissions <- reactive({
    
    req(con_data())
    
    con_nh3_emissions <- con_data()[, c(1,3:8)]
    
    con_nh3_emissions$`Construction - Natural Gas` <- con_nh3_emissions$`Construction - Natural Gas` * con_nh3_EF_gas
    con_nh3_emissions$`Construction - Hydrogen` <- con_nh3_emissions$`Construction - Hydrogen` * con_nh3_EF_hydrogen
    con_nh3_emissions$`Construction - Oil/Petroleum` <- con_nh3_emissions$`Construction - Oil/Petroleum` * con_nh3_EF_gasoil
    con_nh3_emissions$`Construction - Bioenergy/Other` <- con_nh3_emissions$`Construction - Bioenergy/Other` * con_nh3_EF_biomass
    con_nh3_emissions$`Construction - Gas CCS` <- con_nh3_emissions$`Construction - Gas CCS` * con_nh3_EF_gasccs
    con_nh3_emissions$`Construction - BECCS` <- con_nh3_emissions$`Construction - BECCS` * con_nh3_EF_beccs
    con_nh3_emissions$`Total Emissions` <- rowSums(con_nh3_emissions[ , 2:7], na.rm = TRUE)
    
    return(con_nh3_emissions)
    
  })
  
  con_nh3_impacts <- reactive({
    
    req(con_nh3_emissions())
    
    con_nh3_impacts <- con_nh3_emissions()[, 1:7]
    
    con_nh3_impacts$`Construction - Natural Gas` <- con_nh3_impacts$`Construction - Natural Gas` * con_nh3_IF
    con_nh3_impacts$`Construction - Hydrogen` <- con_nh3_impacts$`Construction - Hydrogen` * con_nh3_IF
    con_nh3_impacts$`Construction - Oil/Petroleum` <- con_nh3_impacts$`Construction - Oil/Petroleum` * con_nh3_IF
    con_nh3_impacts$`Construction - Bioenergy/Other` <- con_nh3_impacts$`Construction - Bioenergy/Other` * con_nh3_IF
    con_nh3_impacts$`Construction - Gas CCS` <- con_nh3_impacts$`Construction - Gas CCS` * con_nh3_IF
    con_nh3_impacts$`Construction - BECCS` <- con_nh3_impacts$`Construction - BECCS` * con_nh3_IF
    con_nh3_impacts$`Total Impact` <- rowSums(con_nh3_impacts[ , 2:7], na.rm = TRUE)
    
    return(con_nh3_impacts)
    
  })
  
  ############################################################################################################################################################
  
  # SIA Impacts - Construction
  
  con_sia_impacts <- reactive({
    
    req(con_snox_impacts())
    req(con_nh3_impacts())
    req(con_so2_impacts())
    
    con_sia_impacts <- con_snox_impacts()[, 1:7]
    
    con_sia_impacts$`Construction - Natural Gas` <- con_snox_impacts()$`Construction - Natural Gas` + con_so2_impacts()$`Construction - Natural Gas` + con_nh3_impacts()$`Construction - Natural Gas`
    con_sia_impacts$`Construction - Hydrogen` <- con_snox_impacts()$`Construction - Hydrogen` + con_so2_impacts()$`Construction - Hydrogen` + con_nh3_impacts()$`Construction - Hydrogen`
    con_sia_impacts$`Construction - Oil/Petroleum` <- con_snox_impacts()$`Construction - Oil/Petroleum` + con_so2_impacts()$`Construction - Oil/Petroleum` + con_nh3_impacts()$`Construction - Oil/Petroleum`
    con_sia_impacts$`Construction - Bioenergy/Other` <- con_snox_impacts()$`Construction - Bioenergy/Other` + con_so2_impacts()$`Construction - Bioenergy/Other` + con_nh3_impacts()$`Construction - Bioenergy/Other`
    con_sia_impacts$`Construction - Gas CCS` <- con_snox_impacts()$`Construction - Gas CCS` + con_so2_impacts()$`Construction - Gas CCS` + con_nh3_impacts()$`Construction - Gas CCS`
    con_sia_impacts$`Construction - BECCS` <- con_snox_impacts()$`Construction - BECCS` + con_so2_impacts()$`Construction - BECCS` + con_nh3_impacts()$`Construction - BECCS`
    con_sia_impacts$`Total Impact` <- rowSums(con_sia_impacts[ , 2:7], na.rm = TRUE)
    
    return(con_sia_impacts)
    
  })
  
  ############################################################################################################################################################
  
  # Total PM2.5 Impacts - Construction - only time with per TWh division to prevent double division
  
  con_tpm25_impacts <- reactive({
    
    req(con_pm25_impacts())
    req(con_sia_impacts())
    
    con_tpm25_impacts <- con_sia_impacts()[, 1:7]
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      con_tpm25_impacts$`Construction - Natural Gas` <- con_pm25_impacts()$`Construction - Natural Gas` + con_sia_impacts()$`Construction - Natural Gas`
      con_tpm25_impacts$`Construction - Hydrogen` <- con_pm25_impacts()$`Construction - Hydrogen` + con_sia_impacts()$`Construction - Hydrogen`
      con_tpm25_impacts$`Construction - Oil/Petroleum` <- con_pm25_impacts()$`Construction - Oil/Petroleum` + con_sia_impacts()$`Construction - Oil/Petroleum`
      con_tpm25_impacts$`Construction - Bioenergy/Other` <- con_pm25_impacts()$`Construction - Bioenergy/Other` + con_sia_impacts()$`Construction - Bioenergy/Other`
      con_tpm25_impacts$`Construction - Gas CCS` <- con_pm25_impacts()$`Construction - Gas CCS` + con_sia_impacts()$`Construction - Gas CCS`
      con_tpm25_impacts$`Construction - BECCS` <- con_pm25_impacts()$`Construction - BECCS` + con_sia_impacts()$`Construction - BECCS`
      con_tpm25_impacts$`Total Impact` <- rowSums(con_tpm25_impacts[ , 2:7], na.rm = TRUE)
      
      return(con_tpm25_impacts)
      
    }
    
    else {
      
      con_tpm25_impacts$`Construction - Natural Gas` <- (con_pm25_impacts()$`Construction - Natural Gas` + con_sia_impacts()$`Construction - Natural Gas`)/con_data_sum()
      con_tpm25_impacts$`Construction - Hydrogen` <- (con_pm25_impacts()$`Construction - Hydrogen` + con_sia_impacts()$`Construction - Hydrogen`)/con_data_sum()
      con_tpm25_impacts$`Construction - Oil/Petroleum` <- (con_pm25_impacts()$`Construction - Oil/Petroleum` + con_sia_impacts()$`Construction - Oil/Petroleum`)/con_data_sum()
      con_tpm25_impacts$`Construction - Bioenergy/Other` <- (con_pm25_impacts()$`Construction - Bioenergy/Other` + con_sia_impacts()$`Construction - Bioenergy/Other`)/con_data_sum()
      con_tpm25_impacts$`Construction - Gas CCS` <- (con_pm25_impacts()$`Construction - Gas CCS` + con_sia_impacts()$`Construction - Gas CCS`)/con_data_sum()
      con_tpm25_impacts$`Construction - BECCS` <- (con_pm25_impacts()$`Construction - BECCS` + con_sia_impacts()$`Construction - BECCS`)/con_data_sum()
      con_tpm25_impacts$`Total Impact per TWh` <- rowSums(con_tpm25_impacts[ , 2:7], na.rm = TRUE)
      
      return(con_tpm25_impacts)
      
    }
    
  })
  
  # Plot Output
  
  output$con_tpm25 <- renderPlotly({
    
    req(con_tpm25_impacts())
    
    long_con_tpm25_impacts <- melt(con_tpm25_impacts()[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
    
    p <- ggplot(long_con_tpm25_impacts, aes(Year, Impacts, col = Source)) +
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
      other_nox_impacts$`Total Impact per TWh` <- rowSums(other_nox_impacts[ , 2:7], na.rm = TRUE)
      
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
    
      other_pm25_impacts$`Other Industries - Natural Gas` <- other_pm25_impacts$`Other Industries - Natural Gas` * other_pm25_IF
      other_pm25_impacts$`Other Industries - Hydrogen` <- other_pm25_impacts$`Other Industries - Hydrogen` * other_pm25_IF
      other_pm25_impacts$`Other Industries - Oil/Petroleum` <- other_pm25_impacts$`Other Industries - Oil/Petroleum` * other_pm25_IF
      other_pm25_impacts$`Other Industries - Bioenergy/Other` <- other_pm25_impacts$`Other Industries - Bioenergy/Other` * other_pm25_IF
      other_pm25_impacts$`Other Industries - Gas CCS` <- other_pm25_impacts$`Other Industries - Gas CCS` * other_pm25_IF
      other_pm25_impacts$`Other Industries - BECCS` <- other_pm25_impacts$`Other Industries - BECCS` * other_pm25_IF
      other_pm25_impacts$`Total Impact` <- rowSums(other_pm25_impacts[ , 2:7], na.rm = TRUE)
      
      return(other_pm25_impacts)
   
  })
  
  ###############################################################################################################################################
  
  # Other Industries sNOx Impacts - already have NOx emissions
  
  other_snox_impacts <- reactive({
    
    req(other_nox_emissions())
    
    other_snox_impacts <- other_nox_emissions()[, 1:7] # setting Nox emissions to impacts - then multiplying by sNOx impact factor to get ACTUAL sNOx impacts
    
    other_snox_impacts$`Other Industries - Natural Gas` <- other_snox_impacts$`Other Industries - Natural Gas` * other_snox_IF
    other_snox_impacts$`Other Industries - Hydrogen` <- other_snox_impacts$`Other Industries - Hydrogen` * other_snox_IF
    other_snox_impacts$`Other Industries - Oil/Petroleum` <- other_snox_impacts$`Other Industries - Oil/Petroleum` * other_snox_IF
    other_snox_impacts$`Other Industries - Bioenergy/Other` <- other_snox_impacts$`Other Industries - Bioenergy/Other` * other_snox_IF
    other_snox_impacts$`Other Industries - Gas CCS` <- other_snox_impacts$`Other Industries - Gas CCS` * other_snox_IF
    other_snox_impacts$`Other Industries - BECCS` <- other_snox_impacts$`Other Industries - BECCS` * other_snox_IF
    other_snox_impacts$`Total Impact` <- rowSums(other_snox_impacts[ , 2:7], na.rm = TRUE)
    
    return(other_snox_impacts)
    
  })
  
  ############################################################################################################################################################
  
  # SO2 Impacts - Other Industries
  
  other_so2_emissions <- reactive({
    
    req(other_data())
    
    other_so2_emissions <- other_data()[, c(1,3:8)]
    
    other_so2_emissions$`Other Industries - Natural Gas` <- other_so2_emissions$`Other Industries - Natural Gas` * other_so2_EF_gas
    other_so2_emissions$`Other Industries - Hydrogen` <- other_so2_emissions$`Other Industries - Hydrogen` * other_so2_EF_hydrogen
    other_so2_emissions$`Other Industries - Oil/Petroleum` <- other_so2_emissions$`Other Industries - Oil/Petroleum` * other_so2_EF_gasoil
    other_so2_emissions$`Other Industries - Bioenergy/Other` <- other_so2_emissions$`Other Industries - Bioenergy/Other` * other_so2_EF_biomass
    other_so2_emissions$`Other Industries - Gas CCS` <- other_so2_emissions$`Other Industries - Gas CCS` * other_so2_EF_gasccs
    other_so2_emissions$`Other Industries - BECCS` <- other_so2_emissions$`Other Industries - BECCS` * other_so2_EF_beccs
    other_so2_emissions$`Total Emissions` <- rowSums(other_so2_emissions[ , 2:7], na.rm = TRUE)
    
    return(other_so2_emissions)
    
  })
  
  other_so2_impacts <- reactive({
    
    req(other_so2_emissions())
    
    other_so2_impacts <- other_so2_emissions()[, 1:7]
    
    other_so2_impacts$`Other Industries - Natural Gas` <- other_so2_impacts$`Other Industries - Natural Gas` * other_so2_IF
    other_so2_impacts$`Other Industries - Hydrogen` <- other_so2_impacts$`Other Industries - Hydrogen` * other_so2_IF
    other_so2_impacts$`Other Industries - Oil/Petroleum` <- other_so2_impacts$`Other Industries - Oil/Petroleum` * other_so2_IF
    other_so2_impacts$`Other Industries - Bioenergy/Other` <- other_so2_impacts$`Other Industries - Bioenergy/Other` * other_so2_IF
    other_so2_impacts$`Other Industries - Gas CCS` <- other_so2_impacts$`Other Industries - Gas CCS` * other_so2_IF
    other_so2_impacts$`Other Industries - BECCS` <- other_so2_impacts$`Other Industries - BECCS` * other_so2_IF
    other_so2_impacts$`Total Impact` <- rowSums(other_so2_impacts[ , 2:7], na.rm = TRUE)
    
    return(other_so2_impacts)
    
  })
  
  ############################################################################################################################################################
  
  # NH3 Impacts - Other Industries
  
  other_nh3_emissions <- reactive({
    
    req(other_data())
    
    other_nh3_emissions <- other_data()[, c(1,3:8)]
    
    other_nh3_emissions$`Other Industries - Natural Gas` <- other_nh3_emissions$`Other Industries - Natural Gas` * other_nh3_EF_gas
    other_nh3_emissions$`Other Industries - Hydrogen` <- other_nh3_emissions$`Other Industries - Hydrogen` * other_nh3_EF_hydrogen
    other_nh3_emissions$`Other Industries - Oil/Petroleum` <- other_nh3_emissions$`Other Industries - Oil/Petroleum` * other_nh3_EF_gasoil
    other_nh3_emissions$`Other Industries - Bioenergy/Other` <- other_nh3_emissions$`Other Industries - Bioenergy/Other` * other_nh3_EF_biomass
    other_nh3_emissions$`Other Industries - Gas CCS` <- other_nh3_emissions$`Other Industries - Gas CCS` * other_nh3_EF_gasccs
    other_nh3_emissions$`Other Industries - BECCS` <- other_nh3_emissions$`Other Industries - BECCS` * other_nh3_EF_beccs
    other_nh3_emissions$`Total Emissions` <- rowSums(other_nh3_emissions[ , 2:7], na.rm = TRUE)
    
    return(other_nh3_emissions)
    
  })
  
  other_nh3_impacts <- reactive({
    
    req(other_nh3_emissions())
    
    other_nh3_impacts <- other_nh3_emissions()[, 1:7]
    
    other_nh3_impacts$`Other Industries - Natural Gas` <- other_nh3_impacts$`Other Industries - Natural Gas` * other_nh3_IF
    other_nh3_impacts$`Other Industries - Hydrogen` <- other_nh3_impacts$`Other Industries - Hydrogen` * other_nh3_IF
    other_nh3_impacts$`Other Industries - Oil/Petroleum` <- other_nh3_impacts$`Other Industries - Oil/Petroleum` * other_nh3_IF
    other_nh3_impacts$`Other Industries - Bioenergy/Other` <- other_nh3_impacts$`Other Industries - Bioenergy/Other` * other_nh3_IF
    other_nh3_impacts$`Other Industries - Gas CCS` <- other_nh3_impacts$`Other Industries - Gas CCS` * other_nh3_IF
    other_nh3_impacts$`Other Industries - BECCS` <- other_nh3_impacts$`Other Industries - BECCS` * other_nh3_IF
    other_nh3_impacts$`Total Impact` <- rowSums(other_nh3_impacts[ , 2:7], na.rm = TRUE)
    
    return(other_nh3_impacts)
    
  })
  
  ############################################################################################################################################################
  
  # SIA Impacts - Other Industries
  
  other_sia_impacts <- reactive({
    
    req(other_snox_impacts())
    req(other_nh3_impacts())
    req(other_so2_impacts())
    
    other_sia_impacts <- other_snox_impacts()[, 1:7]
    
    other_sia_impacts$`Other Industries - Natural Gas` <- other_snox_impacts()$`Other Industries - Natural Gas` + other_so2_impacts()$`Other Industries - Natural Gas` + other_nh3_impacts()$`Other Industries - Natural Gas`
    other_sia_impacts$`Other Industries - Hydrogen` <- other_snox_impacts()$`Other Industries - Hydrogen` + other_so2_impacts()$`Other Industries - Hydrogen` + other_nh3_impacts()$`Other Industries - Hydrogen`
    other_sia_impacts$`Other Industries - Oil/Petroleum` <- other_snox_impacts()$`Other Industries - Oil/Petroleum` + other_so2_impacts()$`Other Industries - Oil/Petroleum` + other_nh3_impacts()$`Other Industries - Oil/Petroleum`
    other_sia_impacts$`Other Industries - Bioenergy/Other` <- other_snox_impacts()$`Other Industries - Bioenergy/Other` + other_so2_impacts()$`Other Industries - Bioenergy/Other` + other_nh3_impacts()$`Other Industries - Bioenergy/Other`
    other_sia_impacts$`Other Industries - Gas CCS` <- other_snox_impacts()$`Other Industries - Gas CCS` + other_so2_impacts()$`Other Industries - Gas CCS` + other_nh3_impacts()$`Other Industries - Gas CCS`
    other_sia_impacts$`Other Industries - BECCS` <- other_snox_impacts()$`Other Industries - BECCS` + other_so2_impacts()$`Other Industries - BECCS` + other_nh3_impacts()$`Other Industries - BECCS`
    other_sia_impacts$`Total Impact` <- rowSums(other_sia_impacts[ , 2:7], na.rm = TRUE)
    
    return(other_sia_impacts)
    
  })
  
  ############################################################################################################################################################
  
  # Total PM2.5 Impacts - Other Industries - only time with per TWh division to prevent double division
  
  other_tpm25_impacts <- reactive({
    
    req(other_pm25_impacts())
    req(other_sia_impacts())
    
    other_tpm25_impacts <- other_sia_impacts()[, 1:7]
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      other_tpm25_impacts$`Other Industries - Natural Gas` <- other_pm25_impacts()$`Other Industries - Natural Gas` + other_sia_impacts()$`Other Industries - Natural Gas`
      other_tpm25_impacts$`Other Industries - Hydrogen` <- other_pm25_impacts()$`Other Industries - Hydrogen` + other_sia_impacts()$`Other Industries - Hydrogen`
      other_tpm25_impacts$`Other Industries - Oil/Petroleum` <- other_pm25_impacts()$`Other Industries - Oil/Petroleum` + other_sia_impacts()$`Other Industries - Oil/Petroleum`
      other_tpm25_impacts$`Other Industries - Bioenergy/Other` <- other_pm25_impacts()$`Other Industries - Bioenergy/Other` + other_sia_impacts()$`Other Industries - Bioenergy/Other`
      other_tpm25_impacts$`Other Industries - Gas CCS` <- other_pm25_impacts()$`Other Industries - Gas CCS` + other_sia_impacts()$`Other Industries - Gas CCS`
      other_tpm25_impacts$`Other Industries - BECCS` <- other_pm25_impacts()$`Other Industries - BECCS` + other_sia_impacts()$`Other Industries - BECCS`
      other_tpm25_impacts$`Total Impact` <- rowSums(other_tpm25_impacts[ , 2:7], na.rm = TRUE)
      
      return(other_tpm25_impacts)
      
    }
    
    else {
      
      other_tpm25_impacts$`Other Industries - Natural Gas` <- (other_pm25_impacts()$`Other Industries - Natural Gas` + other_sia_impacts()$`Other Industries - Natural Gas`)/other_data_sum()
      other_tpm25_impacts$`Other Industries - Hydrogen` <- (other_pm25_impacts()$`Other Industries - Hydrogen` + other_sia_impacts()$`Other Industries - Hydrogen`)/other_data_sum()
      other_tpm25_impacts$`Other Industries - Oil/Petroleum` <- (other_pm25_impacts()$`Other Industries - Oil/Petroleum` + other_sia_impacts()$`Other Industries - Oil/Petroleum`)/other_data_sum()
      other_tpm25_impacts$`Other Industries - Bioenergy/Other` <- (other_pm25_impacts()$`Other Industries - Bioenergy/Other` + other_sia_impacts()$`Other Industries - Bioenergy/Other`)/other_data_sum()
      other_tpm25_impacts$`Other Industries - Gas CCS` <- (other_pm25_impacts()$`Other Industries - Gas CCS` + other_sia_impacts()$`Other Industries - Gas CCS`)/other_data_sum()
      other_tpm25_impacts$`Other Industries - BECCS` <- (other_pm25_impacts()$`Other Industries - BECCS` + other_sia_impacts()$`Other Industries - BECCS`)/other_data_sum()
      other_tpm25_impacts$`Total Impact per TWh` <- rowSums(other_tpm25_impacts[ , 2:7], na.rm = TRUE)
      
      return(other_tpm25_impacts)
      
    }
    
  })
  
  # Plot Output
  
  output$other_tpm25 <- renderPlotly({
    
    req(other_tpm25_impacts())
    
    long_other_tpm25_impacts <- melt(other_tpm25_impacts()[ , 1:7], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
    
    p <- ggplot(long_other_tpm25_impacts, aes(Year, Impacts, col = Source)) +
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
  
###################################################################################################
   
  # Road Transport Emissions and Impacts
  
  # Road Transport CO2 Emissions - using g/km emission factors, convert to kt emissions by /1000000000 (1e9)
  
  road_co2_emissions <- reactive({
    
    req(road_data())
    
    road_co2_emissions <- road_data()[, 1:88]
    
    road_co2_emissions$`Car - Petrol - Euro 1` <- (road_co2_emissions$`Car - Petrol - Euro 1` * car_petrol_euro_1_co2)/1000000000
    road_co2_emissions$`Car - Petrol - Euro 2` <- (road_co2_emissions$`Car - Petrol - Euro 2` * car_petrol_euro_2_co2)/1000000000
    road_co2_emissions$`Car - Petrol - Euro 3` <- (road_co2_emissions$`Car - Petrol - Euro 3` * car_petrol_euro_3_co2)/1000000000
    road_co2_emissions$`Car - Petrol - Euro 4` <- (road_co2_emissions$`Car - Petrol - Euro 4` * car_petrol_euro_4_co2)/1000000000
    road_co2_emissions$`Car - Petrol - Euro 5a` <- (road_co2_emissions$`Car - Petrol - Euro 5a` * car_petrol_euro_5a_co2)/1000000000
    road_co2_emissions$`Car - Petrol - Euro 5b` <- (road_co2_emissions$`Car - Petrol - Euro 5b` * car_petrol_euro_5a_co2)/1000000000
    road_co2_emissions$`Car - Petrol - Euro 6b` <- (road_co2_emissions$`Car - Petrol - Euro 6b` * car_petrol_euro_6b_co2)/1000000000
    road_co2_emissions$`Car - Petrol - Euro 6c` <- (road_co2_emissions$`Car - Petrol - Euro 6c` * car_petrol_euro_6c_co2)/1000000000
    road_co2_emissions$`Car - Petrol - Euro 6d-Temp` <- (road_co2_emissions$`Car - Petrol - Euro 6d-Temp` * car_petrol_euro_6dTemp_co2)/1000000000
    road_co2_emissions$`Car - Petrol - Euro 6d` <- (road_co2_emissions$`Car - Petrol - Euro 6d` * car_petrol_euro_6d_co2)/1000000000
    road_co2_emissions$`Car - Petrol - Euro 7` <- (road_co2_emissions$`Car - Petrol - Euro 7` * car_petrol_euro_7_co2)/1000000000
    road_co2_emissions$`Car - Diesel - Euro 1` <- (road_co2_emissions$`Car - Diesel - Euro 1` * car_diesel_euro_1_co2)/1000000000
    road_co2_emissions$`Car - Diesel - Euro 2` <- (road_co2_emissions$`Car - Diesel - Euro 2` * car_diesel_euro_2_co2)/1000000000
    road_co2_emissions$`Car - Diesel - Euro 3` <- (road_co2_emissions$`Car - Diesel - Euro 3` * car_diesel_euro_3_co2)/1000000000
    road_co2_emissions$`Car - Diesel - Euro 4` <- (road_co2_emissions$`Car - Diesel - Euro 4` * car_diesel_euro_4_co2)/1000000000
    road_co2_emissions$`Car - Diesel - Euro 5a` <- (road_co2_emissions$`Car - Diesel - Euro 5a` * car_diesel_euro_5a_co2)/1000000000
    road_co2_emissions$`Car - Diesel - Euro 5b` <- (road_co2_emissions$`Car - Diesel - Euro 5b` * car_diesel_euro_5b_co2)/1000000000
    road_co2_emissions$`Car - Diesel - Euro 6b` <- (road_co2_emissions$`Car - Diesel - Euro 6b` * car_diesel_euro_6b_co2)/1000000000
    road_co2_emissions$`Car - Diesel - Euro 6c` <- road_co2_emissions$`Car - Diesel - Euro 6c` * car_diesel_euro_6c_co2/1000000000
    road_co2_emissions$`Car - Diesel - Euro 6d-Temp` <- (road_co2_emissions$`Car - Diesel - Euro 6d-Temp` * car_diesel_euro_6dTemp_co2)/1000000000
    road_co2_emissions$`Car - Diesel - Euro 6d` <- (road_co2_emissions$`Car - Diesel - Euro 6d` * car_diesel_euro_6d_co2)/1000000000
    road_co2_emissions$`Car - Diesel - Euro 7` <- (road_co2_emissions$`Car - Diesel - Euro 7` * car_diesel_euro_7_co2)/1000000000
    road_co2_emissions$`Car - PHEV (Petrol)` <- (road_co2_emissions$`Car - PHEV (Petrol)` * car_phev_petrol_co2 * car_petrol_phev_utilisation_factor)/1000000000
    road_co2_emissions$`Car - PHEV (Diesel)` <- (road_co2_emissions$`Car - PHEV (Diesel)` * car_phev_diesel_co2 * car_diesel_phev_utilisation_factor)/1000000000
    road_co2_emissions$`Car - Hydrogen Fuel Cell` <- (road_co2_emissions$`Car - Hydrogen Fuel Cell` * car_fuelcell_co2)/1000000000
    road_co2_emissions$`Car - BEV` <- (road_co2_emissions$`Car - BEV` * car_bev_co2)/1000000000
    road_co2_emissions$`LGV - Petrol - Euro 1` <- (road_co2_emissions$`LGV - Petrol - Euro 1` * lgv_petrol_euro_1_co2)/1000000000
    road_co2_emissions$`LGV - Petrol - Euro 2` <- (road_co2_emissions$`LGV - Petrol - Euro 2` * lgv_petrol_euro_2_co2)/1000000000
    road_co2_emissions$`LGV - Petrol - Euro 3` <- (road_co2_emissions$`LGV - Petrol - Euro 3` * lgv_petrol_euro_3_co2)/1000000000
    road_co2_emissions$`LGV - Petrol - Euro 4` <- (road_co2_emissions$`LGV - Petrol - Euro 4` * lgv_petrol_euro_4_co2)/1000000000
    road_co2_emissions$`LGV - Petrol - Euro 5a` <- (road_co2_emissions$`LGV - Petrol - Euro 5a` * lgv_petrol_euro_5a_co2)/1000000000
    road_co2_emissions$`LGV - Petrol - Euro 5b` <- (road_co2_emissions$`LGV - Petrol - Euro 5b` * lgv_petrol_euro_5a_co2)/1000000000
    road_co2_emissions$`LGV - Petrol - Euro 6b` <- (road_co2_emissions$`LGV - Petrol - Euro 6b` * lgv_petrol_euro_6b_co2)/1000000000
    road_co2_emissions$`LGV - Petrol - Euro 6c` <- (road_co2_emissions$`LGV - Petrol - Euro 6c` * lgv_petrol_euro_6c_co2)/1000000000
    road_co2_emissions$`LGV - Petrol - Euro 6d-Temp` <- (road_co2_emissions$`LGV - Petrol - Euro 6d-Temp` * lgv_petrol_euro_6dTemp_co2)/1000000000
    road_co2_emissions$`LGV - Petrol - Euro 6d` <- (road_co2_emissions$`LGV - Petrol - Euro 6d` * lgv_petrol_euro_6d_co2)/1000000000
    road_co2_emissions$`LGV - Petrol - Euro 7` <- (road_co2_emissions$`LGV - Petrol - Euro 7` * lgv_petrol_euro_7_co2)/1000000000
    road_co2_emissions$`LGV - Diesel - Euro 1` <- (road_co2_emissions$`LGV - Diesel - Euro 1` * lgv_diesel_euro_1_co2)/1000000000
    road_co2_emissions$`LGV - Diesel - Euro 2` <- (road_co2_emissions$`LGV - Diesel - Euro 2` * lgv_diesel_euro_2_co2)/1000000000
    road_co2_emissions$`LGV - Diesel - Euro 3` <- (road_co2_emissions$`LGV - Diesel - Euro 3` * lgv_diesel_euro_3_co2)/1000000000
    road_co2_emissions$`LGV - Diesel - Euro 4` <- (road_co2_emissions$`LGV - Diesel - Euro 4` * lgv_diesel_euro_4_co2)/1000000000
    road_co2_emissions$`LGV - Diesel - Euro 5a` <- (road_co2_emissions$`LGV - Diesel - Euro 5a` * lgv_diesel_euro_5a_co2)/1000000000
    road_co2_emissions$`LGV - Diesel - Euro 5b` <- (road_co2_emissions$`LGV - Diesel - Euro 5b` * lgv_diesel_euro_5b_co2)/1000000000
    road_co2_emissions$`LGV - Diesel - Euro 6b` <- (road_co2_emissions$`LGV - Diesel - Euro 6b` * lgv_diesel_euro_6b_co2)/1000000000
    road_co2_emissions$`LGV - Diesel - Euro 6c` <- road_co2_emissions$`LGV - Diesel - Euro 6c` * lgv_diesel_euro_6c_co2/1000000000
    road_co2_emissions$`LGV - Diesel - Euro 6d-Temp` <- (road_co2_emissions$`LGV - Diesel - Euro 6d-Temp` * lgv_diesel_euro_6dTemp_co2)/1000000000
    road_co2_emissions$`LGV - Diesel - Euro 6d` <- (road_co2_emissions$`LGV - Diesel - Euro 6d` * lgv_diesel_euro_6d_co2)/1000000000
    road_co2_emissions$`LGV - Diesel - Euro 7` <- (road_co2_emissions$`LGV - Diesel - Euro 7` * lgv_diesel_euro_7_co2)/1000000000
    road_co2_emissions$`LGV - PHEV (Petrol)` <- (road_co2_emissions$`LGV - PHEV (Petrol)` * lgv_phev_petrol_co2 * lgv_phev_utilisation_factor)/1000000000
    road_co2_emissions$`LGV - PHEV (Diesel)` <- (road_co2_emissions$`LGV - PHEV (Diesel)` * lgv_phev_diesel_co2 * lgv_phev_utilisation_factor)/1000000000
    road_co2_emissions$`LGV - Hydrogen Fuel Cell` <- (road_co2_emissions$`LGV - Hydrogen Fuel Cell` * lgv_fuelcell_co2)/1000000000
    road_co2_emissions$`LGV - BEV` <- (road_co2_emissions$`LGV - BEV` * lgv_bev_co2)/1000000000
    road_co2_emissions$`HGV - CNG - Euro 1` <- (road_co2_emissions$`HGV - CNG - Euro 1` * hgv_cng_euro_1_co2)/1000000000
    road_co2_emissions$`HGV - CNG - Euro 2` <- (road_co2_emissions$`HGV - CNG - Euro 2` * hgv_cng_euro_2_co2)/1000000000
    road_co2_emissions$`HGV - CNG - Euro 3` <- (road_co2_emissions$`HGV - CNG - Euro 3` * hgv_cng_euro_3_co2)/1000000000
    road_co2_emissions$`HGV - CNG - EEV` <- (road_co2_emissions$`HGV - CNG - EEV` * hgv_cng_eev_co2)/1000000000
    road_co2_emissions$`HGV - Diesel - Euro 1` <- (road_co2_emissions$`HGV - Diesel - Euro 1` * hgv_diesel_euro_1_co2)/1000000000
    road_co2_emissions$`HGV - Diesel - Euro 2` <- (road_co2_emissions$`HGV - Diesel - Euro 2` * hgv_diesel_euro_2_co2)/1000000000
    road_co2_emissions$`HGV - Diesel - Euro 3` <- (road_co2_emissions$`HGV - Diesel - Euro 3` * hgv_diesel_euro_3_co2)/1000000000
    road_co2_emissions$`HGV - Diesel - Euro 4` <- (road_co2_emissions$`HGV - Diesel - Euro 4` * hgv_diesel_euro_4_co2)/1000000000
    road_co2_emissions$`HGV - Diesel - Euro 5` <- (road_co2_emissions$`HGV - Diesel - Euro 5` * hgv_diesel_euro_5_co2)/1000000000
    road_co2_emissions$`HGV - Diesel - Euro 6` <- (road_co2_emissions$`HGV - Diesel - Euro 6` * hgv_diesel_euro_6_co2)/1000000000
    road_co2_emissions$`HGV - Diesel - Euro 7` <- (road_co2_emissions$`HGV - Diesel - Euro 7` * hgv_diesel_euro_7_co2)/1000000000
    road_co2_emissions$`HGV - PHEV (Diesel)` <- (road_co2_emissions$`HGV - PHEV (Diesel)` * hgv_phev_diesel_co2 * lgv_phev_utilisation_factor)/1000000000
    road_co2_emissions$`HGV - Hydrogen Fuel Cell` <- (road_co2_emissions$`HGV - Hydrogen Fuel Cell` * hgv_fuelcell_co2)/1000000000
    road_co2_emissions$`HGV - BEV` <- (road_co2_emissions$`HGV - BEV` * hgv_bev_co2)/1000000000
    road_co2_emissions$`Bus - CNG - Euro 1` <- (road_co2_emissions$`Bus - CNG - Euro 1` * bus_cng_euro_1_co2)/1000000000
    road_co2_emissions$`Bus - CNG - Euro 2` <- (road_co2_emissions$`Bus - CNG - Euro 2` * bus_cng_euro_2_co2)/1000000000
    road_co2_emissions$`Bus - CNG - Euro 3` <- (road_co2_emissions$`Bus - CNG - Euro 3` * bus_cng_euro_3_co2)/1000000000
    road_co2_emissions$`Bus - CNG - EEV` <- (road_co2_emissions$`Bus - CNG - EEV` * bus_cng_eev_co2)/1000000000
    road_co2_emissions$`Bus - Diesel - Euro 1` <- (road_co2_emissions$`Bus - Diesel - Euro 1` * bus_diesel_euro_1_co2)/1000000000
    road_co2_emissions$`Bus - Diesel - Euro 2` <- (road_co2_emissions$`Bus - Diesel - Euro 2` * bus_diesel_euro_2_co2)/1000000000
    road_co2_emissions$`Bus - Diesel - Euro 3` <- (road_co2_emissions$`Bus - Diesel - Euro 3` * bus_diesel_euro_3_co2)/1000000000
    road_co2_emissions$`Bus - Diesel - Euro 4` <- (road_co2_emissions$`Bus - Diesel - Euro 4` * bus_diesel_euro_4_co2)/1000000000
    road_co2_emissions$`Bus - Diesel - Euro 5` <- (road_co2_emissions$`Bus - Diesel - Euro 5` * bus_diesel_euro_5_co2)/1000000000
    road_co2_emissions$`Bus - Diesel - Euro 6` <- (road_co2_emissions$`Bus - Diesel - Euro 6` * bus_diesel_euro_6_co2)/1000000000
    road_co2_emissions$`Bus - Diesel - Euro 7` <- (road_co2_emissions$`Bus - Diesel - Euro 7` * bus_diesel_euro_7_co2)/1000000000
    road_co2_emissions$`Bus - PHEV (Diesel)` <- (road_co2_emissions$`Bus - PHEV (Diesel)` * bus_phev_diesel_co2 * lgv_phev_utilisation_factor)/1000000000
    road_co2_emissions$`Bus - Hydrogen Fuel Cell` <- (road_co2_emissions$`Bus - Hydrogen Fuel Cell` * bus_fuelcell_co2)/1000000000
    road_co2_emissions$`Bus - BEV` <- (road_co2_emissions$`Bus - BEV` * bus_bev_co2)/1000000000
    road_co2_emissions$`Motorcycle - Petrol - Euro 1` <- (road_co2_emissions$`Motorcycle - Petrol - Euro 1` * motorcycle_petrol_euro_1_co2)/1000000000
    road_co2_emissions$`Motorcycle - Petrol - Euro 2` <- (road_co2_emissions$`Motorcycle - Petrol - Euro 2` * motorcycle_petrol_euro_2_co2)/1000000000
    road_co2_emissions$`Motorcycle - Petrol - Euro 3` <- (road_co2_emissions$`Motorcycle - Petrol - Euro 3` * motorcycle_petrol_euro_3_co2)/1000000000
    road_co2_emissions$`Motorcycle - Petrol - Euro 4` <- (road_co2_emissions$`Motorcycle - Petrol - Euro 4` * motorcycle_petrol_euro_4_co2)/1000000000
    road_co2_emissions$`Motorcycle - Petrol - Euro 5` <- (road_co2_emissions$`Motorcycle - Petrol - Euro 5` * motorcycle_petrol_euro_5_co2)/1000000000
    road_co2_emissions$`Motorcycle - Hydrogen Fuel Cell` <- (road_co2_emissions$`Motorcycle - Hydrogen Fuel Cell` * motorcycle_fuelcell_co2)/1000000000
    road_co2_emissions$`Motorcycle - Electric` <- (road_co2_emissions$`Motorcycle - Electric` * motorcycle_electric_co2)/1000000000
    road_co2_emissions$`Total Emissions` <-  rowSums(road_co2_emissions[, 2:88], na.rm = TRUE)
    
    return(road_co2_emissions)
    
  })
  
  
  output$road_co2 <- renderPlotly({
    
    req(road_co2_emissions())
    
    long_road_co2_emissions <- melt(road_co2_emissions()[ , 1:89], id.vars = "Year", variable.name = "Source", value.name = "Emissions", na.rm = TRUE)
    
    p <- ggplot(long_road_co2_emissions, aes(Year, Emissions, col = Source)) +
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
  
  ##########################################################################################################################################################
  
  # Road Transport NOx Emissions and Impacts
  
  # Road Transport NOx Emissions - /1000000000 to get emissions in kt
  
  road_nox_emissions <- reactive({
    
    req(road_data())
    
    road_nox_emissions <- road_data()[, 1:88]
    
    road_nox_emissions$`Car - Petrol - Euro 1` <- (road_nox_emissions$`Car - Petrol - Euro 1` * car_petrol_euro_1_nox)/1000000000
    road_nox_emissions$`Car - Petrol - Euro 2` <- (road_nox_emissions$`Car - Petrol - Euro 2` * car_petrol_euro_2_nox)/1000000000
    road_nox_emissions$`Car - Petrol - Euro 3` <- (road_nox_emissions$`Car - Petrol - Euro 3` * car_petrol_euro_3_nox)/1000000000
    road_nox_emissions$`Car - Petrol - Euro 4` <- (road_nox_emissions$`Car - Petrol - Euro 4` * car_petrol_euro_4_nox)/1000000000
    road_nox_emissions$`Car - Petrol - Euro 5a` <- (road_nox_emissions$`Car - Petrol - Euro 5a` * car_petrol_euro_5a_nox)/1000000000
    road_nox_emissions$`Car - Petrol - Euro 5b` <- (road_nox_emissions$`Car - Petrol - Euro 5b` * car_petrol_euro_5a_nox)/1000000000
    road_nox_emissions$`Car - Petrol - Euro 6b` <- (road_nox_emissions$`Car - Petrol - Euro 6b` * car_petrol_euro_6b_nox)/1000000000
    road_nox_emissions$`Car - Petrol - Euro 6c` <- (road_nox_emissions$`Car - Petrol - Euro 6c` * car_petrol_euro_6c_nox)/1000000000
    road_nox_emissions$`Car - Petrol - Euro 6d-Temp` <- (road_nox_emissions$`Car - Petrol - Euro 6d-Temp` * car_petrol_euro_6dTemp_nox)/1000000000
    road_nox_emissions$`Car - Petrol - Euro 6d` <- (road_nox_emissions$`Car - Petrol - Euro 6d` * car_petrol_euro_6d_nox)/1000000000
    road_nox_emissions$`Car - Petrol - Euro 7` <- (road_nox_emissions$`Car - Petrol - Euro 7` * car_petrol_euro_7_nox)/1000000000
    road_nox_emissions$`Car - Diesel - Euro 1` <- (road_nox_emissions$`Car - Diesel - Euro 1` * car_diesel_euro_1_nox)/1000000000
    road_nox_emissions$`Car - Diesel - Euro 2` <- (road_nox_emissions$`Car - Diesel - Euro 2` * car_diesel_euro_2_nox)/1000000000
    road_nox_emissions$`Car - Diesel - Euro 3` <- (road_nox_emissions$`Car - Diesel - Euro 3` * car_diesel_euro_3_nox)/1000000000
    road_nox_emissions$`Car - Diesel - Euro 4` <- (road_nox_emissions$`Car - Diesel - Euro 4` * car_diesel_euro_4_nox)/1000000000
    road_nox_emissions$`Car - Diesel - Euro 5a` <- (road_nox_emissions$`Car - Diesel - Euro 5a` * car_diesel_euro_5a_nox)/1000000000
    road_nox_emissions$`Car - Diesel - Euro 5b` <- (road_nox_emissions$`Car - Diesel - Euro 5b` * car_diesel_euro_5b_nox)/1000000000
    road_nox_emissions$`Car - Diesel - Euro 6b` <- (road_nox_emissions$`Car - Diesel - Euro 6b` * car_diesel_euro_6b_nox)/1000000000
    road_nox_emissions$`Car - Diesel - Euro 6c` <- (road_nox_emissions$`Car - Diesel - Euro 6c` * car_diesel_euro_6c_nox)/1000000000
    road_nox_emissions$`Car - Diesel - Euro 6d-Temp` <- (road_nox_emissions$`Car - Diesel - Euro 6d-Temp` * car_diesel_euro_6dTemp_nox)/1000000000
    road_nox_emissions$`Car - Diesel - Euro 6d` <- (road_nox_emissions$`Car - Diesel - Euro 6d` * car_diesel_euro_6d_nox)/1000000000
    road_nox_emissions$`Car - Diesel - Euro 7` <- (road_nox_emissions$`Car - Diesel - Euro 7` * car_diesel_euro_7_nox)/1000000000
    road_nox_emissions$`Car - PHEV (Petrol)` <- (road_nox_emissions$`Car - PHEV (Petrol)` * car_phev_petrol_nox * car_petrol_phev_utilisation_factor)/1000000000
    road_nox_emissions$`Car - PHEV (Diesel)` <- (road_nox_emissions$`Car - PHEV (Diesel)` * car_phev_diesel_nox * car_diesel_phev_utilisation_factor)/1000000000
    road_nox_emissions$`Car - Hydrogen Fuel Cell` <- (road_nox_emissions$`Car - Hydrogen Fuel Cell` * car_fuelcell_nox)/1000000000
    road_nox_emissions$`Car - BEV` <- (road_nox_emissions$`Car - BEV` * car_bev_nox)/1000000000
    road_nox_emissions$`LGV - Petrol - Euro 1` <- (road_nox_emissions$`LGV - Petrol - Euro 1` * lgv_petrol_euro_1_nox)/1000000000
    road_nox_emissions$`LGV - Petrol - Euro 2` <- (road_nox_emissions$`LGV - Petrol - Euro 2` * lgv_petrol_euro_2_nox)/1000000000
    road_nox_emissions$`LGV - Petrol - Euro 3` <- (road_nox_emissions$`LGV - Petrol - Euro 3` * lgv_petrol_euro_3_nox)/1000000000
    road_nox_emissions$`LGV - Petrol - Euro 4` <- (road_nox_emissions$`LGV - Petrol - Euro 4` * lgv_petrol_euro_4_nox)/1000000000
    road_nox_emissions$`LGV - Petrol - Euro 5a` <- (road_nox_emissions$`LGV - Petrol - Euro 5a` * lgv_petrol_euro_5a_nox)/1000000000
    road_nox_emissions$`LGV - Petrol - Euro 5b` <- (road_nox_emissions$`LGV - Petrol - Euro 5b` * lgv_petrol_euro_5a_nox)/1000000000
    road_nox_emissions$`LGV - Petrol - Euro 6b` <- (road_nox_emissions$`LGV - Petrol - Euro 6b` * lgv_petrol_euro_6b_nox)/1000000000
    road_nox_emissions$`LGV - Petrol - Euro 6c` <- (road_nox_emissions$`LGV - Petrol - Euro 6c` * lgv_petrol_euro_6c_nox)/1000000000
    road_nox_emissions$`LGV - Petrol - Euro 6d-Temp` <- (road_nox_emissions$`LGV - Petrol - Euro 6d-Temp` * lgv_petrol_euro_6dTemp_nox)/1000000000
    road_nox_emissions$`LGV - Petrol - Euro 6d` <- (road_nox_emissions$`LGV - Petrol - Euro 6d` * lgv_petrol_euro_6d_nox)/1000000000
    road_nox_emissions$`LGV - Petrol - Euro 7` <- (road_nox_emissions$`LGV - Petrol - Euro 7` * lgv_petrol_euro_7_nox)/1000000000
    road_nox_emissions$`LGV - Diesel - Euro 1` <- (road_nox_emissions$`LGV - Diesel - Euro 1` * lgv_diesel_euro_1_nox)/1000000000
    road_nox_emissions$`LGV - Diesel - Euro 2` <- (road_nox_emissions$`LGV - Diesel - Euro 2` * lgv_diesel_euro_2_nox)/1000000000
    road_nox_emissions$`LGV - Diesel - Euro 3` <- (road_nox_emissions$`LGV - Diesel - Euro 3` * lgv_diesel_euro_3_nox)/1000000000
    road_nox_emissions$`LGV - Diesel - Euro 4` <- (road_nox_emissions$`LGV - Diesel - Euro 4` * lgv_diesel_euro_4_nox)/1000000000
    road_nox_emissions$`LGV - Diesel - Euro 5a` <- (road_nox_emissions$`LGV - Diesel - Euro 5a` * lgv_diesel_euro_5a_nox)/1000000000
    road_nox_emissions$`LGV - Diesel - Euro 5b` <- (road_nox_emissions$`LGV - Diesel - Euro 5b` * lgv_diesel_euro_5b_nox)/1000000000
    road_nox_emissions$`LGV - Diesel - Euro 6b` <- (road_nox_emissions$`LGV - Diesel - Euro 6b` * lgv_diesel_euro_6b_nox)/1000000000
    road_nox_emissions$`LGV - Diesel - Euro 6c` <- (road_nox_emissions$`LGV - Diesel - Euro 6c` * lgv_diesel_euro_6c_nox)/1000000000
    road_nox_emissions$`LGV - Diesel - Euro 6d-Temp` <- (road_nox_emissions$`LGV - Diesel - Euro 6d-Temp` * lgv_diesel_euro_6dTemp_nox)/1000000000
    road_nox_emissions$`LGV - Diesel - Euro 6d` <- (road_nox_emissions$`LGV - Diesel - Euro 6d` * lgv_diesel_euro_6d_nox)/1000000000
    road_nox_emissions$`LGV - Diesel - Euro 7` <- (road_nox_emissions$`LGV - Diesel - Euro 7` * lgv_diesel_euro_7_nox)/1000000000
    road_nox_emissions$`LGV - PHEV (Petrol)` <- (road_nox_emissions$`LGV - PHEV (Petrol)` * lgv_phev_petrol_nox * lgv_phev_utilisation_factor)/1000000000
    road_nox_emissions$`LGV - PHEV (Diesel)` <- (road_nox_emissions$`LGV - PHEV (Diesel)` * lgv_phev_diesel_nox * lgv_phev_utilisation_factor)/1000000000
    road_nox_emissions$`LGV - Hydrogen Fuel Cell` <- (road_nox_emissions$`LGV - Hydrogen Fuel Cell` * lgv_fuelcell_nox)/1000000000
    road_nox_emissions$`LGV - BEV` <- (road_nox_emissions$`LGV - BEV` * lgv_bev_nox)/1000000000
    road_nox_emissions$`HGV - CNG - Euro 1` <- (road_nox_emissions$`HGV - CNG - Euro 1` * hgv_cng_euro_1_nox)/1000000000
    road_nox_emissions$`HGV - CNG - Euro 2` <- (road_nox_emissions$`HGV - CNG - Euro 2` * hgv_cng_euro_2_nox)/1000000000
    road_nox_emissions$`HGV - CNG - Euro 3` <- (road_nox_emissions$`HGV - CNG - Euro 3` * hgv_cng_euro_3_nox)/1000000000
    road_nox_emissions$`HGV - CNG - EEV` <- (road_nox_emissions$`HGV - CNG - EEV` * hgv_cng_eev_nox)/1000000000
    road_nox_emissions$`HGV - Diesel - Euro 1` <- (road_nox_emissions$`HGV - Diesel - Euro 1` * hgv_diesel_euro_1_nox)/1000000000
    road_nox_emissions$`HGV - Diesel - Euro 2` <- (road_nox_emissions$`HGV - Diesel - Euro 2` * hgv_diesel_euro_2_nox)/1000000000
    road_nox_emissions$`HGV - Diesel - Euro 3` <- (road_nox_emissions$`HGV - Diesel - Euro 3` * hgv_diesel_euro_3_nox)/1000000000
    road_nox_emissions$`HGV - Diesel - Euro 4` <- (road_nox_emissions$`HGV - Diesel - Euro 4` * hgv_diesel_euro_4_nox)/1000000000
    road_nox_emissions$`HGV - Diesel - Euro 5` <- (road_nox_emissions$`HGV - Diesel - Euro 5` * hgv_diesel_euro_5_nox)/1000000000
    road_nox_emissions$`HGV - Diesel - Euro 6` <- (road_nox_emissions$`HGV - Diesel - Euro 6` * hgv_diesel_euro_6_nox)/1000000000
    road_nox_emissions$`HGV - Diesel - Euro 7` <- (road_nox_emissions$`HGV - Diesel - Euro 7` * hgv_diesel_euro_7_nox)/1000000000
    road_nox_emissions$`HGV - PHEV (Diesel)` <- (road_nox_emissions$`HGV - PHEV (Diesel)` * hgv_phev_diesel_nox * lgv_phev_utilisation_factor)/1000000000
    road_nox_emissions$`HGV - Hydrogen Fuel Cell` <- (road_nox_emissions$`HGV - Hydrogen Fuel Cell` * hgv_fuelcell_nox)/1000000000
    road_nox_emissions$`HGV - BEV` <- (road_nox_emissions$`HGV - BEV` * hgv_bev_nox)/1000000000
    road_nox_emissions$`Bus - CNG - Euro 1` <- (road_nox_emissions$`Bus - CNG - Euro 1` * bus_cng_euro_1_nox)/1000000000
    road_nox_emissions$`Bus - CNG - Euro 2` <- (road_nox_emissions$`Bus - CNG - Euro 2` * bus_cng_euro_2_nox)/1000000000
    road_nox_emissions$`Bus - CNG - Euro 3` <- (road_nox_emissions$`Bus - CNG - Euro 3` * bus_cng_euro_3_nox)/1000000000
    road_nox_emissions$`Bus - CNG - EEV` <- (road_nox_emissions$`Bus - CNG - EEV` * bus_cng_eev_nox)/1000000000
    road_nox_emissions$`Bus - Diesel - Euro 1` <- (road_nox_emissions$`Bus - Diesel - Euro 1` * bus_diesel_euro_1_nox)/1000000000
    road_nox_emissions$`Bus - Diesel - Euro 2` <- (road_nox_emissions$`Bus - Diesel - Euro 2` * bus_diesel_euro_2_nox)/1000000000
    road_nox_emissions$`Bus - Diesel - Euro 3` <- (road_nox_emissions$`Bus - Diesel - Euro 3` * bus_diesel_euro_3_nox)/1000000000
    road_nox_emissions$`Bus - Diesel - Euro 4` <- (road_nox_emissions$`Bus - Diesel - Euro 4` * bus_diesel_euro_4_nox)/1000000000
    road_nox_emissions$`Bus - Diesel - Euro 5` <- (road_nox_emissions$`Bus - Diesel - Euro 5` * bus_diesel_euro_5_nox)/1000000000
    road_nox_emissions$`Bus - Diesel - Euro 6` <- (road_nox_emissions$`Bus - Diesel - Euro 6` * bus_diesel_euro_6_nox)/1000000000
    road_nox_emissions$`Bus - Diesel - Euro 7` <- (road_nox_emissions$`Bus - Diesel - Euro 7` * bus_diesel_euro_7_nox)/1000000000
    road_nox_emissions$`Bus - PHEV (Diesel)` <- (road_nox_emissions$`Bus - PHEV (Diesel)` * bus_phev_diesel_nox * lgv_phev_utilisation_factor)/1000000000
    road_nox_emissions$`Bus - Hydrogen Fuel Cell` <- (road_nox_emissions$`Bus - Hydrogen Fuel Cell` * bus_fuelcell_nox)/1000000000
    road_nox_emissions$`Bus - BEV` <- (road_nox_emissions$`Bus - BEV` * bus_bev_nox)/1000000000
    road_nox_emissions$`Motorcycle - Petrol - Euro 1` <- (road_nox_emissions$`Motorcycle - Petrol - Euro 1` * motorcycle_petrol_euro_1_nox)/1000000000
    road_nox_emissions$`Motorcycle - Petrol - Euro 2` <- (road_nox_emissions$`Motorcycle - Petrol - Euro 2` * motorcycle_petrol_euro_2_nox)/1000000000
    road_nox_emissions$`Motorcycle - Petrol - Euro 3` <- (road_nox_emissions$`Motorcycle - Petrol - Euro 3` * motorcycle_petrol_euro_3_nox)/1000000000
    road_nox_emissions$`Motorcycle - Petrol - Euro 4` <- (road_nox_emissions$`Motorcycle - Petrol - Euro 4` * motorcycle_petrol_euro_4_nox)/1000000000
    road_nox_emissions$`Motorcycle - Petrol - Euro 5` <- (road_nox_emissions$`Motorcycle - Petrol - Euro 5` * motorcycle_petrol_euro_5_nox)/1000000000
    road_nox_emissions$`Motorcycle - Hydrogen Fuel Cell` <- (road_nox_emissions$`Motorcycle - Hydrogen Fuel Cell` * motorcycle_fuelcell_nox)/1000000000
    road_nox_emissions$`Motorcycle - Electric` <- (road_nox_emissions$`Motorcycle - Electric` * motorcycle_electric_nox)/1000000000
    road_nox_emissions$`Total Emissions` <-  rowSums(road_nox_emissions[, 2:88], na.rm = TRUE)
    
    return(road_nox_emissions)
    
  })
  
  
  # Road Transport NOx Impacts - applying UKIAM road transport impact factors
  
  road_nox_impacts <- reactive({
    
    req(road_nox_emissions())
    
    road_nox_impacts <- road_nox_emissions()[, 1:88]
    
    road_nox_impacts$`Car - Petrol - Euro 1` <- (road_nox_impacts$`Car - Petrol - Euro 1` * car_petrol_IF_nox)
    road_nox_impacts$`Car - Petrol - Euro 2` <- (road_nox_impacts$`Car - Petrol - Euro 2` * car_petrol_IF_nox)
    road_nox_impacts$`Car - Petrol - Euro 3` <- (road_nox_impacts$`Car - Petrol - Euro 3` * car_petrol_IF_nox)
    road_nox_impacts$`Car - Petrol - Euro 4` <- (road_nox_impacts$`Car - Petrol - Euro 4` * car_petrol_IF_nox)
    road_nox_impacts$`Car - Petrol - Euro 5a` <- (road_nox_impacts$`Car - Petrol - Euro 5a` * car_petrol_IF_nox)
    road_nox_impacts$`Car - Petrol - Euro 5b` <- (road_nox_impacts$`Car - Petrol - Euro 5b` * car_petrol_IF_nox)
    road_nox_impacts$`Car - Petrol - Euro 6b` <- (road_nox_impacts$`Car - Petrol - Euro 6b` * car_petrol_IF_nox)
    road_nox_impacts$`Car - Petrol - Euro 6c` <- (road_nox_impacts$`Car - Petrol - Euro 6c` * car_petrol_IF_nox)
    road_nox_impacts$`Car - Petrol - Euro 6d-Temp` <- (road_nox_impacts$`Car - Petrol - Euro 6d-Temp` * car_petrol_IF_nox)
    road_nox_impacts$`Car - Petrol - Euro 6d` <- (road_nox_impacts$`Car - Petrol - Euro 6d` * car_petrol_IF_nox)
    road_nox_impacts$`Car - Petrol - Euro 7` <- (road_nox_impacts$`Car - Petrol - Euro 7` * car_petrol_IF_nox)
    road_nox_impacts$`Car - Diesel - Euro 1` <- (road_nox_impacts$`Car - Diesel - Euro 1` * car_diesel_IF_nox)
    road_nox_impacts$`Car - Diesel - Euro 2` <- (road_nox_impacts$`Car - Diesel - Euro 2` * car_diesel_IF_nox)
    road_nox_impacts$`Car - Diesel - Euro 3` <- (road_nox_impacts$`Car - Diesel - Euro 3` * car_diesel_IF_nox)
    road_nox_impacts$`Car - Diesel - Euro 4` <- (road_nox_impacts$`Car - Diesel - Euro 4` * car_diesel_IF_nox)
    road_nox_impacts$`Car - Diesel - Euro 5a` <- (road_nox_impacts$`Car - Diesel - Euro 5a` * car_diesel_IF_nox)
    road_nox_impacts$`Car - Diesel - Euro 5b` <- (road_nox_impacts$`Car - Diesel - Euro 5b` * car_diesel_IF_nox)
    road_nox_impacts$`Car - Diesel - Euro 6b` <- (road_nox_impacts$`Car - Diesel - Euro 6b` * car_diesel_IF_nox)
    road_nox_impacts$`Car - Diesel - Euro 6c` <- (road_nox_impacts$`Car - Diesel - Euro 6c` * car_diesel_IF_nox)
    road_nox_impacts$`Car - Diesel - Euro 6d-Temp` <- (road_nox_impacts$`Car - Diesel - Euro 6d-Temp` * car_diesel_IF_nox)
    road_nox_impacts$`Car - Diesel - Euro 6d` <- (road_nox_impacts$`Car - Diesel - Euro 6d` * car_diesel_IF_nox)
    road_nox_impacts$`Car - Diesel - Euro 7` <- (road_nox_impacts$`Car - Diesel - Euro 7` * car_diesel_IF_nox)
    road_nox_impacts$`Car - PHEV (Petrol)` <- (road_nox_impacts$`Car - PHEV (Petrol)` * car_petrol_IF_nox)
    road_nox_impacts$`Car - PHEV (Diesel)` <- (road_nox_impacts$`Car - PHEV (Diesel)` * car_diesel_IF_nox)
    road_nox_impacts$`Car - Hydrogen Fuel Cell` <- (road_nox_impacts$`Car - Hydrogen Fuel Cell` * car_diesel_IF_nox)
    road_nox_impacts$`Car - BEV` <- (road_nox_impacts$`Car - BEV` * car_diesel_IF_nox)
    road_nox_impacts$`LGV - Petrol - Euro 1` <- (road_nox_impacts$`LGV - Petrol - Euro 1` * lgv_IF_nox)
    road_nox_impacts$`LGV - Petrol - Euro 2` <- (road_nox_impacts$`LGV - Petrol - Euro 2` * lgv_IF_nox)
    road_nox_impacts$`LGV - Petrol - Euro 3` <- (road_nox_impacts$`LGV - Petrol - Euro 3` * lgv_IF_nox)
    road_nox_impacts$`LGV - Petrol - Euro 4` <- (road_nox_impacts$`LGV - Petrol - Euro 4` * lgv_IF_nox)
    road_nox_impacts$`LGV - Petrol - Euro 5a` <- (road_nox_impacts$`LGV - Petrol - Euro 5a` * lgv_IF_nox)
    road_nox_impacts$`LGV - Petrol - Euro 5b` <- (road_nox_impacts$`LGV - Petrol - Euro 5b` * lgv_IF_nox)
    road_nox_impacts$`LGV - Petrol - Euro 6b` <- (road_nox_impacts$`LGV - Petrol - Euro 6b` * lgv_IF_nox)
    road_nox_impacts$`LGV - Petrol - Euro 6c` <- (road_nox_impacts$`LGV - Petrol - Euro 6c` * lgv_IF_nox)
    road_nox_impacts$`LGV - Petrol - Euro 6d-Temp` <- (road_nox_impacts$`LGV - Petrol - Euro 6d-Temp` * lgv_IF_nox)
    road_nox_impacts$`LGV - Petrol - Euro 6d` <- (road_nox_impacts$`LGV - Petrol - Euro 6d` * lgv_IF_nox)
    road_nox_impacts$`LGV - Petrol - Euro 7` <- (road_nox_impacts$`LGV - Petrol - Euro 7` * lgv_IF_nox)
    road_nox_impacts$`LGV - Diesel - Euro 1` <- (road_nox_impacts$`LGV - Diesel - Euro 1` * lgv_IF_nox)
    road_nox_impacts$`LGV - Diesel - Euro 2` <- (road_nox_impacts$`LGV - Diesel - Euro 2` * lgv_IF_nox)
    road_nox_impacts$`LGV - Diesel - Euro 3` <- (road_nox_impacts$`LGV - Diesel - Euro 3` * lgv_IF_nox)
    road_nox_impacts$`LGV - Diesel - Euro 4` <- (road_nox_impacts$`LGV - Diesel - Euro 4` * lgv_IF_nox)
    road_nox_impacts$`LGV - Diesel - Euro 5a` <- (road_nox_impacts$`LGV - Diesel - Euro 5a` * lgv_IF_nox)
    road_nox_impacts$`LGV - Diesel - Euro 5b` <- (road_nox_impacts$`LGV - Diesel - Euro 5b` * lgv_IF_nox)
    road_nox_impacts$`LGV - Diesel - Euro 6b` <- (road_nox_impacts$`LGV - Diesel - Euro 6b` * lgv_IF_nox)
    road_nox_impacts$`LGV - Diesel - Euro 6c` <- road_nox_impacts$`LGV - Diesel - Euro 6c` * lgv_IF_nox
    road_nox_impacts$`LGV - Diesel - Euro 6d-Temp` <- (road_nox_impacts$`LGV - Diesel - Euro 6d-Temp` * lgv_IF_nox)
    road_nox_impacts$`LGV - Diesel - Euro 6d` <- (road_nox_impacts$`LGV - Diesel - Euro 6d` * lgv_IF_nox)
    road_nox_impacts$`LGV - Diesel - Euro 7` <- (road_nox_impacts$`LGV - Diesel - Euro 7` * lgv_IF_nox)
    road_nox_impacts$`LGV - PHEV (Petrol)` <- (road_nox_impacts$`LGV - PHEV (Petrol)` * lgv_IF_nox)
    road_nox_impacts$`LGV - PHEV (Diesel)` <- (road_nox_impacts$`LGV - PHEV (Diesel)` * lgv_IF_nox)
    road_nox_impacts$`LGV - Hydrogen Fuel Cell` <- (road_nox_impacts$`LGV - Hydrogen Fuel Cell` * lgv_IF_nox)
    road_nox_impacts$`LGV - BEV` <- (road_nox_impacts$`LGV - BEV` * lgv_IF_nox)
    road_nox_impacts$`HGV - CNG - Euro 1` <- (road_nox_impacts$`HGV - CNG - Euro 1` * hgv_IF_nox)
    road_nox_impacts$`HGV - CNG - Euro 2` <- (road_nox_impacts$`HGV - CNG - Euro 2` * hgv_IF_nox)
    road_nox_impacts$`HGV - CNG - Euro 3` <- (road_nox_impacts$`HGV - CNG - Euro 3` * hgv_IF_nox)
    road_nox_impacts$`HGV - CNG - EEV` <- (road_nox_impacts$`HGV - CNG - EEV` * hgv_IF_nox)
    road_nox_impacts$`HGV - Diesel - Euro 1` <- (road_nox_impacts$`HGV - Diesel - Euro 1` * hgv_IF_nox)
    road_nox_impacts$`HGV - Diesel - Euro 2` <- (road_nox_impacts$`HGV - Diesel - Euro 2` * hgv_IF_nox)
    road_nox_impacts$`HGV - Diesel - Euro 3` <- (road_nox_impacts$`HGV - Diesel - Euro 3` * hgv_IF_nox)
    road_nox_impacts$`HGV - Diesel - Euro 4` <- (road_nox_impacts$`HGV - Diesel - Euro 4` * hgv_IF_nox)
    road_nox_impacts$`HGV - Diesel - Euro 5` <- (road_nox_impacts$`HGV - Diesel - Euro 5` * hgv_IF_nox)
    road_nox_impacts$`HGV - Diesel - Euro 6` <- (road_nox_impacts$`HGV - Diesel - Euro 6` * hgv_IF_nox)
    road_nox_impacts$`HGV - Diesel - Euro 7` <- (road_nox_impacts$`HGV - Diesel - Euro 7` * hgv_IF_nox)
    road_nox_impacts$`HGV - PHEV (Diesel)` <- (road_nox_impacts$`HGV - PHEV (Diesel)` * hgv_IF_nox)
    road_nox_impacts$`HGV - Hydrogen Fuel Cell` <- (road_nox_impacts$`HGV - Hydrogen Fuel Cell` * hgv_IF_nox)
    road_nox_impacts$`HGV - BEV` <- (road_nox_impacts$`HGV - BEV` * hgv_IF_nox)
    road_nox_impacts$`Bus - CNG - Euro 1` <- (road_nox_impacts$`Bus - CNG - Euro 1` * bus_IF_nox)
    road_nox_impacts$`Bus - CNG - Euro 2` <- (road_nox_impacts$`Bus - CNG - Euro 2` * bus_IF_nox)
    road_nox_impacts$`Bus - CNG - Euro 3` <- (road_nox_impacts$`Bus - CNG - Euro 3` * bus_IF_nox)
    road_nox_impacts$`Bus - CNG - EEV` <- (road_nox_impacts$`Bus - CNG - EEV` * bus_IF_nox)
    road_nox_impacts$`Bus - Diesel - Euro 1` <- (road_nox_impacts$`Bus - Diesel - Euro 1` * bus_IF_nox)
    road_nox_impacts$`Bus - Diesel - Euro 2` <- (road_nox_impacts$`Bus - Diesel - Euro 2` * bus_IF_nox)
    road_nox_impacts$`Bus - Diesel - Euro 3` <- (road_nox_impacts$`Bus - Diesel - Euro 3` * bus_IF_nox)
    road_nox_impacts$`Bus - Diesel - Euro 4` <- (road_nox_impacts$`Bus - Diesel - Euro 4` * bus_IF_nox)
    road_nox_impacts$`Bus - Diesel - Euro 5` <- (road_nox_impacts$`Bus - Diesel - Euro 5` * bus_IF_nox)
    road_nox_impacts$`Bus - Diesel - Euro 6` <- (road_nox_impacts$`Bus - Diesel - Euro 6` * bus_IF_nox)
    road_nox_impacts$`Bus - Diesel - Euro 7` <- (road_nox_impacts$`Bus - Diesel - Euro 7` * bus_IF_nox)
    road_nox_impacts$`Bus - PHEV (Diesel)` <- (road_nox_impacts$`Bus - PHEV (Diesel)` * bus_IF_nox)
    road_nox_impacts$`Bus - Hydrogen Fuel Cell` <- (road_nox_impacts$`Bus - Hydrogen Fuel Cell` * bus_IF_nox)
    road_nox_impacts$`Bus - BEV` <- (road_nox_impacts$`Bus - BEV` * bus_IF_nox)
    road_nox_impacts$`Motorcycle - Petrol - Euro 1` <- (road_nox_impacts$`Motorcycle - Petrol - Euro 1` * car_petrol_IF_nox)
    road_nox_impacts$`Motorcycle - Petrol - Euro 2` <- (road_nox_impacts$`Motorcycle - Petrol - Euro 2` * car_petrol_IF_nox)
    road_nox_impacts$`Motorcycle - Petrol - Euro 3` <- (road_nox_impacts$`Motorcycle - Petrol - Euro 3` * car_petrol_IF_nox)
    road_nox_impacts$`Motorcycle - Petrol - Euro 4` <- (road_nox_impacts$`Motorcycle - Petrol - Euro 4` * car_petrol_IF_nox)
    road_nox_impacts$`Motorcycle - Petrol - Euro 5` <- (road_nox_impacts$`Motorcycle - Petrol - Euro 5` * car_petrol_IF_nox)
    road_nox_impacts$`Motorcycle - Hydrogen Fuel Cell` <- (road_nox_impacts$`Motorcycle - Hydrogen Fuel Cell` * car_petrol_IF_nox)
    road_nox_impacts$`Motorcycle - Electric` <- (road_nox_impacts$`Motorcycle - Electric` * car_petrol_IF_nox)
    road_nox_impacts$`Total Impacts` <-  rowSums(road_nox_impacts[, 2:88], na.rm = TRUE)
    return(road_nox_impacts)
    
  })
  
  output$road_nox <- renderPlotly({
    
    req(road_nox_impacts())
    
    long_road_nox_impacts <- melt(road_nox_impacts()[ , 1:89], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
    
    p <- ggplot(long_road_nox_impacts, aes(Year, Impacts, col = Source)) +
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
  
  ##########################################################################################################################################################
  
  # Road Transport PM2.5 Exhaust Emissions and Impacts
  
  # Road Transport PM2.5 Emissions - /1000000000 to get emissions in kt
  # Still using utilisation factor for PHEVs - only ICE have exhaust emissions
  
  road_pm25_exhaust_emissions <- reactive({
    
    req(road_data())
    
    road_pm25_exhaust_emissions <- road_data()[, 1:88]
    
    road_pm25_exhaust_emissions$`Car - Petrol - Euro 1` <- (road_pm25_exhaust_emissions$`Car - Petrol - Euro 1` * car_petrol_euro_1_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`Car - Petrol - Euro 2` <- (road_pm25_exhaust_emissions$`Car - Petrol - Euro 2` * car_petrol_euro_2_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`Car - Petrol - Euro 3` <- (road_pm25_exhaust_emissions$`Car - Petrol - Euro 3` * car_petrol_euro_3_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`Car - Petrol - Euro 4` <- (road_pm25_exhaust_emissions$`Car - Petrol - Euro 4` * car_petrol_euro_4_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`Car - Petrol - Euro 5a` <- (road_pm25_exhaust_emissions$`Car - Petrol - Euro 5a` * car_petrol_euro_5a_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`Car - Petrol - Euro 5b` <- (road_pm25_exhaust_emissions$`Car - Petrol - Euro 5b` * car_petrol_euro_5a_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`Car - Petrol - Euro 6b` <- (road_pm25_exhaust_emissions$`Car - Petrol - Euro 6b` * car_petrol_euro_6b_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`Car - Petrol - Euro 6c` <- (road_pm25_exhaust_emissions$`Car - Petrol - Euro 6c` * car_petrol_euro_6c_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`Car - Petrol - Euro 6d-Temp` <- (road_pm25_exhaust_emissions$`Car - Petrol - Euro 6d-Temp` * car_petrol_euro_6dTemp_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`Car - Petrol - Euro 6d` <- (road_pm25_exhaust_emissions$`Car - Petrol - Euro 6d` * car_petrol_euro_6d_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`Car - Petrol - Euro 7` <- (road_pm25_exhaust_emissions$`Car - Petrol - Euro 7` * car_petrol_euro_7_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`Car - Diesel - Euro 1` <- (road_pm25_exhaust_emissions$`Car - Diesel - Euro 1` * car_diesel_euro_1_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`Car - Diesel - Euro 2` <- (road_pm25_exhaust_emissions$`Car - Diesel - Euro 2` * car_diesel_euro_2_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`Car - Diesel - Euro 3` <- (road_pm25_exhaust_emissions$`Car - Diesel - Euro 3` * car_diesel_euro_3_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`Car - Diesel - Euro 4` <- (road_pm25_exhaust_emissions$`Car - Diesel - Euro 4` * car_diesel_euro_4_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`Car - Diesel - Euro 5a` <- (road_pm25_exhaust_emissions$`Car - Diesel - Euro 5a` * car_diesel_euro_5a_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`Car - Diesel - Euro 5b` <- (road_pm25_exhaust_emissions$`Car - Diesel - Euro 5b` * car_diesel_euro_5b_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`Car - Diesel - Euro 6b` <- (road_pm25_exhaust_emissions$`Car - Diesel - Euro 6b` * car_diesel_euro_6b_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`Car - Diesel - Euro 6c` <- (road_pm25_exhaust_emissions$`Car - Diesel - Euro 6c` * car_diesel_euro_6c_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`Car - Diesel - Euro 6d-Temp` <- (road_pm25_exhaust_emissions$`Car - Diesel - Euro 6d-Temp` * car_diesel_euro_6dTemp_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`Car - Diesel - Euro 6d` <- (road_pm25_exhaust_emissions$`Car - Diesel - Euro 6d` * car_diesel_euro_6d_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`Car - Diesel - Euro 7` <- (road_pm25_exhaust_emissions$`Car - Diesel - Euro 7` * car_diesel_euro_7_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`Car - PHEV (Petrol)` <- (road_pm25_exhaust_emissions$`Car - PHEV (Petrol)` * car_phev_petrol_pm25_exhaust * car_petrol_phev_utilisation_factor)/1000000000
    road_pm25_exhaust_emissions$`Car - PHEV (Diesel)` <- (road_pm25_exhaust_emissions$`Car - PHEV (Diesel)` * car_phev_diesel_pm25_exhaust * car_diesel_phev_utilisation_factor)/1000000000
    road_pm25_exhaust_emissions$`Car - Hydrogen Fuel Cell` <- (road_pm25_exhaust_emissions$`Car - Hydrogen Fuel Cell` * car_fuelcell_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`Car - BEV` <- (road_pm25_exhaust_emissions$`Car - BEV` * car_bev_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`LGV - Petrol - Euro 1` <- (road_pm25_exhaust_emissions$`LGV - Petrol - Euro 1` * lgv_petrol_euro_1_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`LGV - Petrol - Euro 2` <- (road_pm25_exhaust_emissions$`LGV - Petrol - Euro 2` * lgv_petrol_euro_2_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`LGV - Petrol - Euro 3` <- (road_pm25_exhaust_emissions$`LGV - Petrol - Euro 3` * lgv_petrol_euro_3_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`LGV - Petrol - Euro 4` <- (road_pm25_exhaust_emissions$`LGV - Petrol - Euro 4` * lgv_petrol_euro_4_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`LGV - Petrol - Euro 5a` <- (road_pm25_exhaust_emissions$`LGV - Petrol - Euro 5a` * lgv_petrol_euro_5a_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`LGV - Petrol - Euro 5b` <- (road_pm25_exhaust_emissions$`LGV - Petrol - Euro 5b` * lgv_petrol_euro_5a_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`LGV - Petrol - Euro 6b` <- (road_pm25_exhaust_emissions$`LGV - Petrol - Euro 6b` * lgv_petrol_euro_6b_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`LGV - Petrol - Euro 6c` <- (road_pm25_exhaust_emissions$`LGV - Petrol - Euro 6c` * lgv_petrol_euro_6c_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`LGV - Petrol - Euro 6d-Temp` <- (road_pm25_exhaust_emissions$`LGV - Petrol - Euro 6d-Temp` * lgv_petrol_euro_6dTemp_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`LGV - Petrol - Euro 6d` <- (road_pm25_exhaust_emissions$`LGV - Petrol - Euro 6d` * lgv_petrol_euro_6d_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`LGV - Petrol - Euro 7` <- (road_pm25_exhaust_emissions$`LGV - Petrol - Euro 7` * lgv_petrol_euro_7_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`LGV - Diesel - Euro 1` <- (road_pm25_exhaust_emissions$`LGV - Diesel - Euro 1` * lgv_diesel_euro_1_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`LGV - Diesel - Euro 2` <- (road_pm25_exhaust_emissions$`LGV - Diesel - Euro 2` * lgv_diesel_euro_2_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`LGV - Diesel - Euro 3` <- (road_pm25_exhaust_emissions$`LGV - Diesel - Euro 3` * lgv_diesel_euro_3_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`LGV - Diesel - Euro 4` <- (road_pm25_exhaust_emissions$`LGV - Diesel - Euro 4` * lgv_diesel_euro_4_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`LGV - Diesel - Euro 5a` <- (road_pm25_exhaust_emissions$`LGV - Diesel - Euro 5a` * lgv_diesel_euro_5a_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`LGV - Diesel - Euro 5b` <- (road_pm25_exhaust_emissions$`LGV - Diesel - Euro 5b` * lgv_diesel_euro_5b_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`LGV - Diesel - Euro 6b` <- (road_pm25_exhaust_emissions$`LGV - Diesel - Euro 6b` * lgv_diesel_euro_6b_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`LGV - Diesel - Euro 6c` <- (road_pm25_exhaust_emissions$`LGV - Diesel - Euro 6c` * lgv_diesel_euro_6c_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`LGV - Diesel - Euro 6d-Temp` <- (road_pm25_exhaust_emissions$`LGV - Diesel - Euro 6d-Temp` * lgv_diesel_euro_6dTemp_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`LGV - Diesel - Euro 6d` <- (road_pm25_exhaust_emissions$`LGV - Diesel - Euro 6d` * lgv_diesel_euro_6d_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`LGV - Diesel - Euro 7` <- (road_pm25_exhaust_emissions$`LGV - Diesel - Euro 7` * lgv_diesel_euro_7_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`LGV - PHEV (Petrol)` <- (road_pm25_exhaust_emissions$`LGV - PHEV (Petrol)` * lgv_phev_petrol_pm25_exhaust * lgv_phev_utilisation_factor)/1000000000
    road_pm25_exhaust_emissions$`LGV - PHEV (Diesel)` <- (road_pm25_exhaust_emissions$`LGV - PHEV (Diesel)` * lgv_phev_diesel_pm25_exhaust * lgv_phev_utilisation_factor)/1000000000
    road_pm25_exhaust_emissions$`LGV - Hydrogen Fuel Cell` <- (road_pm25_exhaust_emissions$`LGV - Hydrogen Fuel Cell` * lgv_fuelcell_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`LGV - BEV` <- (road_pm25_exhaust_emissions$`LGV - BEV` * lgv_bev_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`HGV - CNG - Euro 1` <- (road_pm25_exhaust_emissions$`HGV - CNG - Euro 1` * hgv_cng_euro_1_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`HGV - CNG - Euro 2` <- (road_pm25_exhaust_emissions$`HGV - CNG - Euro 2` * hgv_cng_euro_2_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`HGV - CNG - Euro 3` <- (road_pm25_exhaust_emissions$`HGV - CNG - Euro 3` * hgv_cng_euro_3_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`HGV - CNG - EEV` <- (road_pm25_exhaust_emissions$`HGV - CNG - EEV` * hgv_cng_eev_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`HGV - Diesel - Euro 1` <- (road_pm25_exhaust_emissions$`HGV - Diesel - Euro 1` * hgv_diesel_euro_1_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`HGV - Diesel - Euro 2` <- (road_pm25_exhaust_emissions$`HGV - Diesel - Euro 2` * hgv_diesel_euro_2_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`HGV - Diesel - Euro 3` <- (road_pm25_exhaust_emissions$`HGV - Diesel - Euro 3` * hgv_diesel_euro_3_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`HGV - Diesel - Euro 4` <- (road_pm25_exhaust_emissions$`HGV - Diesel - Euro 4` * hgv_diesel_euro_4_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`HGV - Diesel - Euro 5` <- (road_pm25_exhaust_emissions$`HGV - Diesel - Euro 5` * hgv_diesel_euro_5_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`HGV - Diesel - Euro 6` <- (road_pm25_exhaust_emissions$`HGV - Diesel - Euro 6` * hgv_diesel_euro_6_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`HGV - Diesel - Euro 7` <- (road_pm25_exhaust_emissions$`HGV - Diesel - Euro 7` * hgv_diesel_euro_7_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`HGV - PHEV (Diesel)` <- (road_pm25_exhaust_emissions$`HGV - PHEV (Diesel)` * hgv_phev_diesel_pm25_exhaust * lgv_phev_utilisation_factor)/1000000000
    road_pm25_exhaust_emissions$`HGV - Hydrogen Fuel Cell` <- (road_pm25_exhaust_emissions$`HGV - Hydrogen Fuel Cell` * hgv_fuelcell_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`HGV - BEV` <- (road_pm25_exhaust_emissions$`HGV - BEV` * hgv_bev_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`Bus - CNG - Euro 1` <- (road_pm25_exhaust_emissions$`Bus - CNG - Euro 1` * bus_cng_euro_1_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`Bus - CNG - Euro 2` <- (road_pm25_exhaust_emissions$`Bus - CNG - Euro 2` * bus_cng_euro_2_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`Bus - CNG - Euro 3` <- (road_pm25_exhaust_emissions$`Bus - CNG - Euro 3` * bus_cng_euro_3_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`Bus - CNG - EEV` <- (road_pm25_exhaust_emissions$`Bus - CNG - EEV` * bus_cng_eev_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`Bus - Diesel - Euro 1` <- (road_pm25_exhaust_emissions$`Bus - Diesel - Euro 1` * bus_diesel_euro_1_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`Bus - Diesel - Euro 2` <- (road_pm25_exhaust_emissions$`Bus - Diesel - Euro 2` * bus_diesel_euro_2_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`Bus - Diesel - Euro 3` <- (road_pm25_exhaust_emissions$`Bus - Diesel - Euro 3` * bus_diesel_euro_3_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`Bus - Diesel - Euro 4` <- (road_pm25_exhaust_emissions$`Bus - Diesel - Euro 4` * bus_diesel_euro_4_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`Bus - Diesel - Euro 5` <- (road_pm25_exhaust_emissions$`Bus - Diesel - Euro 5` * bus_diesel_euro_5_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`Bus - Diesel - Euro 6` <- (road_pm25_exhaust_emissions$`Bus - Diesel - Euro 6` * bus_diesel_euro_6_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`Bus - Diesel - Euro 7` <- (road_pm25_exhaust_emissions$`Bus - Diesel - Euro 7` * bus_diesel_euro_7_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`Bus - PHEV (Diesel)` <- (road_pm25_exhaust_emissions$`Bus - PHEV (Diesel)` * bus_phev_diesel_pm25_exhaust * lgv_phev_utilisation_factor)/1000000000
    road_pm25_exhaust_emissions$`Bus - Hydrogen Fuel Cell` <- (road_pm25_exhaust_emissions$`Bus - Hydrogen Fuel Cell` * bus_fuelcell_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`Bus - BEV` <- (road_pm25_exhaust_emissions$`Bus - BEV` * bus_bev_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`Motorcycle - Petrol - Euro 1` <- (road_pm25_exhaust_emissions$`Motorcycle - Petrol - Euro 1` * motorcycle_petrol_euro_1_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`Motorcycle - Petrol - Euro 2` <- (road_pm25_exhaust_emissions$`Motorcycle - Petrol - Euro 2` * motorcycle_petrol_euro_2_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`Motorcycle - Petrol - Euro 3` <- (road_pm25_exhaust_emissions$`Motorcycle - Petrol - Euro 3` * motorcycle_petrol_euro_3_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`Motorcycle - Petrol - Euro 4` <- (road_pm25_exhaust_emissions$`Motorcycle - Petrol - Euro 4` * motorcycle_petrol_euro_4_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`Motorcycle - Petrol - Euro 5` <- (road_pm25_exhaust_emissions$`Motorcycle - Petrol - Euro 5` * motorcycle_petrol_euro_5_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`Motorcycle - Hydrogen Fuel Cell` <- (road_pm25_exhaust_emissions$`Motorcycle - Hydrogen Fuel Cell` * motorcycle_fuelcell_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`Motorcycle - Electric` <- (road_pm25_exhaust_emissions$`Motorcycle - Electric` * motorcycle_electric_pm25_exhaust)/1000000000
    road_pm25_exhaust_emissions$`Total Emissions` <-  rowSums(road_pm25_exhaust_emissions[, 2:88], na.rm = TRUE)
    
    return(road_pm25_exhaust_emissions)
    
  })
  
  
  # Road Transport PM2.5 Exhaust Impacts - applying UKIAM road transport impact factors
  
  road_pm25_exhaust_impacts <- reactive({
    
    req(road_pm25_exhaust_emissions())
    
    road_pm25_exhaust_impacts <- road_pm25_exhaust_emissions()[, 1:88]
    
    road_pm25_exhaust_impacts$`Car - Petrol - Euro 1` <- (road_pm25_exhaust_impacts$`Car - Petrol - Euro 1` * car_petrol_IF_pm25)
    road_pm25_exhaust_impacts$`Car - Petrol - Euro 2` <- (road_pm25_exhaust_impacts$`Car - Petrol - Euro 2` * car_petrol_IF_pm25)
    road_pm25_exhaust_impacts$`Car - Petrol - Euro 3` <- (road_pm25_exhaust_impacts$`Car - Petrol - Euro 3` * car_petrol_IF_pm25)
    road_pm25_exhaust_impacts$`Car - Petrol - Euro 4` <- (road_pm25_exhaust_impacts$`Car - Petrol - Euro 4` * car_petrol_IF_pm25)
    road_pm25_exhaust_impacts$`Car - Petrol - Euro 5a` <- (road_pm25_exhaust_impacts$`Car - Petrol - Euro 5a` * car_petrol_IF_pm25)
    road_pm25_exhaust_impacts$`Car - Petrol - Euro 5b` <- (road_pm25_exhaust_impacts$`Car - Petrol - Euro 5b` * car_petrol_IF_pm25)
    road_pm25_exhaust_impacts$`Car - Petrol - Euro 6b` <- (road_pm25_exhaust_impacts$`Car - Petrol - Euro 6b` * car_petrol_IF_pm25)
    road_pm25_exhaust_impacts$`Car - Petrol - Euro 6c` <- (road_pm25_exhaust_impacts$`Car - Petrol - Euro 6c` * car_petrol_IF_pm25)
    road_pm25_exhaust_impacts$`Car - Petrol - Euro 6d-Temp` <- (road_pm25_exhaust_impacts$`Car - Petrol - Euro 6d-Temp` * car_petrol_IF_pm25)
    road_pm25_exhaust_impacts$`Car - Petrol - Euro 6d` <- (road_pm25_exhaust_impacts$`Car - Petrol - Euro 6d` * car_petrol_IF_pm25)
    road_pm25_exhaust_impacts$`Car - Petrol - Euro 7` <- (road_pm25_exhaust_impacts$`Car - Petrol - Euro 7` * car_petrol_IF_pm25)
    road_pm25_exhaust_impacts$`Car - Diesel - Euro 1` <- (road_pm25_exhaust_impacts$`Car - Diesel - Euro 1` * car_diesel_IF_pm25)
    road_pm25_exhaust_impacts$`Car - Diesel - Euro 2` <- (road_pm25_exhaust_impacts$`Car - Diesel - Euro 2` * car_diesel_IF_pm25)
    road_pm25_exhaust_impacts$`Car - Diesel - Euro 3` <- (road_pm25_exhaust_impacts$`Car - Diesel - Euro 3` * car_diesel_IF_pm25)
    road_pm25_exhaust_impacts$`Car - Diesel - Euro 4` <- (road_pm25_exhaust_impacts$`Car - Diesel - Euro 4` * car_diesel_IF_pm25)
    road_pm25_exhaust_impacts$`Car - Diesel - Euro 5a` <- (road_pm25_exhaust_impacts$`Car - Diesel - Euro 5a` * car_diesel_IF_pm25)
    road_pm25_exhaust_impacts$`Car - Diesel - Euro 5b` <- (road_pm25_exhaust_impacts$`Car - Diesel - Euro 5b` * car_diesel_IF_pm25)
    road_pm25_exhaust_impacts$`Car - Diesel - Euro 6b` <- (road_pm25_exhaust_impacts$`Car - Diesel - Euro 6b` * car_diesel_IF_pm25)
    road_pm25_exhaust_impacts$`Car - Diesel - Euro 6c` <- (road_pm25_exhaust_impacts$`Car - Diesel - Euro 6c` * car_diesel_IF_pm25)
    road_pm25_exhaust_impacts$`Car - Diesel - Euro 6d-Temp` <- (road_pm25_exhaust_impacts$`Car - Diesel - Euro 6d-Temp` * car_diesel_IF_pm25)
    road_pm25_exhaust_impacts$`Car - Diesel - Euro 6d` <- (road_pm25_exhaust_impacts$`Car - Diesel - Euro 6d` * car_diesel_IF_pm25)
    road_pm25_exhaust_impacts$`Car - Diesel - Euro 7` <- (road_pm25_exhaust_impacts$`Car - Diesel - Euro 7` * car_diesel_IF_pm25)
    road_pm25_exhaust_impacts$`Car - PHEV (Petrol)` <- (road_pm25_exhaust_impacts$`Car - PHEV (Petrol)` * car_petrol_IF_pm25)
    road_pm25_exhaust_impacts$`Car - PHEV (Diesel)` <- (road_pm25_exhaust_impacts$`Car - PHEV (Diesel)` * car_diesel_IF_pm25)
    road_pm25_exhaust_impacts$`Car - Hydrogen Fuel Cell` <- (road_pm25_exhaust_impacts$`Car - Hydrogen Fuel Cell` * car_diesel_IF_pm25)
    road_pm25_exhaust_impacts$`Car - BEV` <- (road_pm25_exhaust_impacts$`Car - BEV` * car_diesel_IF_pm25)
    road_pm25_exhaust_impacts$`LGV - Petrol - Euro 1` <- (road_pm25_exhaust_impacts$`LGV - Petrol - Euro 1` * lgv_IF_pm25)
    road_pm25_exhaust_impacts$`LGV - Petrol - Euro 2` <- (road_pm25_exhaust_impacts$`LGV - Petrol - Euro 2` * lgv_IF_pm25)
    road_pm25_exhaust_impacts$`LGV - Petrol - Euro 3` <- (road_pm25_exhaust_impacts$`LGV - Petrol - Euro 3` * lgv_IF_pm25)
    road_pm25_exhaust_impacts$`LGV - Petrol - Euro 4` <- (road_pm25_exhaust_impacts$`LGV - Petrol - Euro 4` * lgv_IF_pm25)
    road_pm25_exhaust_impacts$`LGV - Petrol - Euro 5a` <- (road_pm25_exhaust_impacts$`LGV - Petrol - Euro 5a` * lgv_IF_pm25)
    road_pm25_exhaust_impacts$`LGV - Petrol - Euro 5b` <- (road_pm25_exhaust_impacts$`LGV - Petrol - Euro 5b` * lgv_IF_pm25)
    road_pm25_exhaust_impacts$`LGV - Petrol - Euro 6b` <- (road_pm25_exhaust_impacts$`LGV - Petrol - Euro 6b` * lgv_IF_pm25)
    road_pm25_exhaust_impacts$`LGV - Petrol - Euro 6c` <- (road_pm25_exhaust_impacts$`LGV - Petrol - Euro 6c` * lgv_IF_pm25)
    road_pm25_exhaust_impacts$`LGV - Petrol - Euro 6d-Temp` <- (road_pm25_exhaust_impacts$`LGV - Petrol - Euro 6d-Temp` * lgv_IF_pm25)
    road_pm25_exhaust_impacts$`LGV - Petrol - Euro 6d` <- (road_pm25_exhaust_impacts$`LGV - Petrol - Euro 6d` * lgv_IF_pm25)
    road_pm25_exhaust_impacts$`LGV - Petrol - Euro 7` <- (road_pm25_exhaust_impacts$`LGV - Petrol - Euro 7` * lgv_IF_pm25)
    road_pm25_exhaust_impacts$`LGV - Diesel - Euro 1` <- (road_pm25_exhaust_impacts$`LGV - Diesel - Euro 1` * lgv_IF_pm25)
    road_pm25_exhaust_impacts$`LGV - Diesel - Euro 2` <- (road_pm25_exhaust_impacts$`LGV - Diesel - Euro 2` * lgv_IF_pm25)
    road_pm25_exhaust_impacts$`LGV - Diesel - Euro 3` <- (road_pm25_exhaust_impacts$`LGV - Diesel - Euro 3` * lgv_IF_pm25)
    road_pm25_exhaust_impacts$`LGV - Diesel - Euro 4` <- (road_pm25_exhaust_impacts$`LGV - Diesel - Euro 4` * lgv_IF_pm25)
    road_pm25_exhaust_impacts$`LGV - Diesel - Euro 5a` <- (road_pm25_exhaust_impacts$`LGV - Diesel - Euro 5a` * lgv_IF_pm25)
    road_pm25_exhaust_impacts$`LGV - Diesel - Euro 5b` <- (road_pm25_exhaust_impacts$`LGV - Diesel - Euro 5b` * lgv_IF_pm25)
    road_pm25_exhaust_impacts$`LGV - Diesel - Euro 6b` <- (road_pm25_exhaust_impacts$`LGV - Diesel - Euro 6b` * lgv_IF_pm25)
    road_pm25_exhaust_impacts$`LGV - Diesel - Euro 6c` <- road_pm25_exhaust_impacts$`LGV - Diesel - Euro 6c` * lgv_IF_pm25
    road_pm25_exhaust_impacts$`LGV - Diesel - Euro 6d-Temp` <- (road_pm25_exhaust_impacts$`LGV - Diesel - Euro 6d-Temp` * lgv_IF_pm25)
    road_pm25_exhaust_impacts$`LGV - Diesel - Euro 6d` <- (road_pm25_exhaust_impacts$`LGV - Diesel - Euro 6d` * lgv_IF_pm25)
    road_pm25_exhaust_impacts$`LGV - Diesel - Euro 7` <- (road_pm25_exhaust_impacts$`LGV - Diesel - Euro 7` * lgv_IF_pm25)
    road_pm25_exhaust_impacts$`LGV - PHEV (Petrol)` <- (road_pm25_exhaust_impacts$`LGV - PHEV (Petrol)` * lgv_IF_pm25)
    road_pm25_exhaust_impacts$`LGV - PHEV (Diesel)` <- (road_pm25_exhaust_impacts$`LGV - PHEV (Diesel)` * lgv_IF_pm25)
    road_pm25_exhaust_impacts$`LGV - Hydrogen Fuel Cell` <- (road_pm25_exhaust_impacts$`LGV - Hydrogen Fuel Cell` * lgv_IF_pm25)
    road_pm25_exhaust_impacts$`LGV - BEV` <- (road_pm25_exhaust_impacts$`LGV - BEV` * lgv_IF_pm25)
    road_pm25_exhaust_impacts$`HGV - CNG - Euro 1` <- (road_pm25_exhaust_impacts$`HGV - CNG - Euro 1` * hgv_IF_pm25)
    road_pm25_exhaust_impacts$`HGV - CNG - Euro 2` <- (road_pm25_exhaust_impacts$`HGV - CNG - Euro 2` * hgv_IF_pm25)
    road_pm25_exhaust_impacts$`HGV - CNG - Euro 3` <- (road_pm25_exhaust_impacts$`HGV - CNG - Euro 3` * hgv_IF_pm25)
    road_pm25_exhaust_impacts$`HGV - CNG - EEV` <- (road_pm25_exhaust_impacts$`HGV - CNG - EEV` * hgv_IF_pm25)
    road_pm25_exhaust_impacts$`HGV - Diesel - Euro 1` <- (road_pm25_exhaust_impacts$`HGV - Diesel - Euro 1` * hgv_IF_pm25)
    road_pm25_exhaust_impacts$`HGV - Diesel - Euro 2` <- (road_pm25_exhaust_impacts$`HGV - Diesel - Euro 2` * hgv_IF_pm25)
    road_pm25_exhaust_impacts$`HGV - Diesel - Euro 3` <- (road_pm25_exhaust_impacts$`HGV - Diesel - Euro 3` * hgv_IF_pm25)
    road_pm25_exhaust_impacts$`HGV - Diesel - Euro 4` <- (road_pm25_exhaust_impacts$`HGV - Diesel - Euro 4` * hgv_IF_pm25)
    road_pm25_exhaust_impacts$`HGV - Diesel - Euro 5` <- (road_pm25_exhaust_impacts$`HGV - Diesel - Euro 5` * hgv_IF_pm25)
    road_pm25_exhaust_impacts$`HGV - Diesel - Euro 6` <- (road_pm25_exhaust_impacts$`HGV - Diesel - Euro 6` * hgv_IF_pm25)
    road_pm25_exhaust_impacts$`HGV - Diesel - Euro 7` <- (road_pm25_exhaust_impacts$`HGV - Diesel - Euro 7` * hgv_IF_pm25)
    road_pm25_exhaust_impacts$`HGV - PHEV (Diesel)` <- (road_pm25_exhaust_impacts$`HGV - PHEV (Diesel)` * hgv_IF_pm25)
    road_pm25_exhaust_impacts$`HGV - Hydrogen Fuel Cell` <- (road_pm25_exhaust_impacts$`HGV - Hydrogen Fuel Cell` * hgv_IF_pm25)
    road_pm25_exhaust_impacts$`HGV - BEV` <- (road_pm25_exhaust_impacts$`HGV - BEV` * hgv_IF_pm25)
    road_pm25_exhaust_impacts$`Bus - CNG - Euro 1` <- (road_pm25_exhaust_impacts$`Bus - CNG - Euro 1` * bus_IF_pm25)
    road_pm25_exhaust_impacts$`Bus - CNG - Euro 2` <- (road_pm25_exhaust_impacts$`Bus - CNG - Euro 2` * bus_IF_pm25)
    road_pm25_exhaust_impacts$`Bus - CNG - Euro 3` <- (road_pm25_exhaust_impacts$`Bus - CNG - Euro 3` * bus_IF_pm25)
    road_pm25_exhaust_impacts$`Bus - CNG - EEV` <- (road_pm25_exhaust_impacts$`Bus - CNG - EEV` * bus_IF_pm25)
    road_pm25_exhaust_impacts$`Bus - Diesel - Euro 1` <- (road_pm25_exhaust_impacts$`Bus - Diesel - Euro 1` * bus_IF_pm25)
    road_pm25_exhaust_impacts$`Bus - Diesel - Euro 2` <- (road_pm25_exhaust_impacts$`Bus - Diesel - Euro 2` * bus_IF_pm25)
    road_pm25_exhaust_impacts$`Bus - Diesel - Euro 3` <- (road_pm25_exhaust_impacts$`Bus - Diesel - Euro 3` * bus_IF_pm25)
    road_pm25_exhaust_impacts$`Bus - Diesel - Euro 4` <- (road_pm25_exhaust_impacts$`Bus - Diesel - Euro 4` * bus_IF_pm25)
    road_pm25_exhaust_impacts$`Bus - Diesel - Euro 5` <- (road_pm25_exhaust_impacts$`Bus - Diesel - Euro 5` * bus_IF_pm25)
    road_pm25_exhaust_impacts$`Bus - Diesel - Euro 6` <- (road_pm25_exhaust_impacts$`Bus - Diesel - Euro 6` * bus_IF_pm25)
    road_pm25_exhaust_impacts$`Bus - Diesel - Euro 7` <- (road_pm25_exhaust_impacts$`Bus - Diesel - Euro 7` * bus_IF_pm25)
    road_pm25_exhaust_impacts$`Bus - PHEV (Diesel)` <- (road_pm25_exhaust_impacts$`Bus - PHEV (Diesel)` * bus_IF_pm25)
    road_pm25_exhaust_impacts$`Bus - Hydrogen Fuel Cell` <- (road_pm25_exhaust_impacts$`Bus - Hydrogen Fuel Cell` * bus_IF_pm25)
    road_pm25_exhaust_impacts$`Bus - BEV` <- (road_pm25_exhaust_impacts$`Bus - BEV` * bus_IF_pm25)
    road_pm25_exhaust_impacts$`Motorcycle - Petrol - Euro 1` <- (road_pm25_exhaust_impacts$`Motorcycle - Petrol - Euro 1` * car_petrol_IF_pm25)
    road_pm25_exhaust_impacts$`Motorcycle - Petrol - Euro 2` <- (road_pm25_exhaust_impacts$`Motorcycle - Petrol - Euro 2` * car_petrol_IF_pm25)
    road_pm25_exhaust_impacts$`Motorcycle - Petrol - Euro 3` <- (road_pm25_exhaust_impacts$`Motorcycle - Petrol - Euro 3` * car_petrol_IF_pm25)
    road_pm25_exhaust_impacts$`Motorcycle - Petrol - Euro 4` <- (road_pm25_exhaust_impacts$`Motorcycle - Petrol - Euro 4` * car_petrol_IF_pm25)
    road_pm25_exhaust_impacts$`Motorcycle - Petrol - Euro 5` <- (road_pm25_exhaust_impacts$`Motorcycle - Petrol - Euro 5` * car_petrol_IF_pm25)
    road_pm25_exhaust_impacts$`Motorcycle - Hydrogen Fuel Cell` <- (road_pm25_exhaust_impacts$`Motorcycle - Hydrogen Fuel Cell` * car_petrol_IF_pm25)
    road_pm25_exhaust_impacts$`Motorcycle - Electric` <- (road_pm25_exhaust_impacts$`Motorcycle - Electric` * car_petrol_IF_pm25)
    road_pm25_exhaust_impacts$`Total Impacts` <-  rowSums(road_pm25_exhaust_impacts[, 2:88], na.rm = TRUE)
    
    
    return(road_pm25_exhaust_impacts)
    
  })
  
  ##########################################################################################################################################################
  
  # Road Transport PM2.5 Tyre Emissions and Impacts
  
  # Road Transport PM2.5 Emissions - /1000000000 to get emissions in kt
  # Still using utilisation factor for PHEVs - only ICE have tyre emissions
  
  road_pm25_tyre_emissions <- reactive({
    
    req(road_data())
    
    road_pm25_tyre_emissions <- road_data()[, 1:88]
    
    road_pm25_tyre_emissions$`Car - Petrol - Euro 1` <- (road_pm25_tyre_emissions$`Car - Petrol - Euro 1` * car_petrol_euro_1_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Car - Petrol - Euro 2` <- (road_pm25_tyre_emissions$`Car - Petrol - Euro 2` * car_petrol_euro_2_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Car - Petrol - Euro 3` <- (road_pm25_tyre_emissions$`Car - Petrol - Euro 3` * car_petrol_euro_3_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Car - Petrol - Euro 4` <- (road_pm25_tyre_emissions$`Car - Petrol - Euro 4` * car_petrol_euro_4_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Car - Petrol - Euro 5a` <- (road_pm25_tyre_emissions$`Car - Petrol - Euro 5a` * car_petrol_euro_5a_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Car - Petrol - Euro 5b` <- (road_pm25_tyre_emissions$`Car - Petrol - Euro 5b` * car_petrol_euro_5a_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Car - Petrol - Euro 6b` <- (road_pm25_tyre_emissions$`Car - Petrol - Euro 6b` * car_petrol_euro_6b_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Car - Petrol - Euro 6c` <- (road_pm25_tyre_emissions$`Car - Petrol - Euro 6c` * car_petrol_euro_6c_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Car - Petrol - Euro 6d-Temp` <- (road_pm25_tyre_emissions$`Car - Petrol - Euro 6d-Temp` * car_petrol_euro_6dTemp_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Car - Petrol - Euro 6d` <- (road_pm25_tyre_emissions$`Car - Petrol - Euro 6d` * car_petrol_euro_6d_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Car - Petrol - Euro 7` <- (road_pm25_tyre_emissions$`Car - Petrol - Euro 7` * car_petrol_euro_7_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Car - Diesel - Euro 1` <- (road_pm25_tyre_emissions$`Car - Diesel - Euro 1` * car_diesel_euro_1_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Car - Diesel - Euro 2` <- (road_pm25_tyre_emissions$`Car - Diesel - Euro 2` * car_diesel_euro_2_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Car - Diesel - Euro 3` <- (road_pm25_tyre_emissions$`Car - Diesel - Euro 3` * car_diesel_euro_3_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Car - Diesel - Euro 4` <- (road_pm25_tyre_emissions$`Car - Diesel - Euro 4` * car_diesel_euro_4_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Car - Diesel - Euro 5a` <- (road_pm25_tyre_emissions$`Car - Diesel - Euro 5a` * car_diesel_euro_5a_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Car - Diesel - Euro 5b` <- (road_pm25_tyre_emissions$`Car - Diesel - Euro 5b` * car_diesel_euro_5b_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Car - Diesel - Euro 6b` <- (road_pm25_tyre_emissions$`Car - Diesel - Euro 6b` * car_diesel_euro_6b_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Car - Diesel - Euro 6c` <- (road_pm25_tyre_emissions$`Car - Diesel - Euro 6c` * car_diesel_euro_6c_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Car - Diesel - Euro 6d-Temp` <- (road_pm25_tyre_emissions$`Car - Diesel - Euro 6d-Temp` * car_diesel_euro_6dTemp_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Car - Diesel - Euro 6d` <- (road_pm25_tyre_emissions$`Car - Diesel - Euro 6d` * car_diesel_euro_6d_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Car - Diesel - Euro 7` <- (road_pm25_tyre_emissions$`Car - Diesel - Euro 7` * car_diesel_euro_7_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Car - PHEV (Petrol)` <- (road_pm25_tyre_emissions$`Car - PHEV (Petrol)` * car_phev_petrol_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Car - PHEV (Diesel)` <- (road_pm25_tyre_emissions$`Car - PHEV (Diesel)` * car_phev_diesel_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Car - Hydrogen Fuel Cell` <- (road_pm25_tyre_emissions$`Car - Hydrogen Fuel Cell` * car_fuelcell_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Car - BEV` <- (road_pm25_tyre_emissions$`Car - BEV` * car_bev_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`LGV - Petrol - Euro 1` <- (road_pm25_tyre_emissions$`LGV - Petrol - Euro 1` * lgv_petrol_euro_1_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`LGV - Petrol - Euro 2` <- (road_pm25_tyre_emissions$`LGV - Petrol - Euro 2` * lgv_petrol_euro_2_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`LGV - Petrol - Euro 3` <- (road_pm25_tyre_emissions$`LGV - Petrol - Euro 3` * lgv_petrol_euro_3_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`LGV - Petrol - Euro 4` <- (road_pm25_tyre_emissions$`LGV - Petrol - Euro 4` * lgv_petrol_euro_4_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`LGV - Petrol - Euro 5a` <- (road_pm25_tyre_emissions$`LGV - Petrol - Euro 5a` * lgv_petrol_euro_5a_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`LGV - Petrol - Euro 5b` <- (road_pm25_tyre_emissions$`LGV - Petrol - Euro 5b` * lgv_petrol_euro_5a_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`LGV - Petrol - Euro 6b` <- (road_pm25_tyre_emissions$`LGV - Petrol - Euro 6b` * lgv_petrol_euro_6b_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`LGV - Petrol - Euro 6c` <- (road_pm25_tyre_emissions$`LGV - Petrol - Euro 6c` * lgv_petrol_euro_6c_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`LGV - Petrol - Euro 6d-Temp` <- (road_pm25_tyre_emissions$`LGV - Petrol - Euro 6d-Temp` * lgv_petrol_euro_6dTemp_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`LGV - Petrol - Euro 6d` <- (road_pm25_tyre_emissions$`LGV - Petrol - Euro 6d` * lgv_petrol_euro_6d_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`LGV - Petrol - Euro 7` <- (road_pm25_tyre_emissions$`LGV - Petrol - Euro 7` * lgv_petrol_euro_7_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`LGV - Diesel - Euro 1` <- (road_pm25_tyre_emissions$`LGV - Diesel - Euro 1` * lgv_diesel_euro_1_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`LGV - Diesel - Euro 2` <- (road_pm25_tyre_emissions$`LGV - Diesel - Euro 2` * lgv_diesel_euro_2_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`LGV - Diesel - Euro 3` <- (road_pm25_tyre_emissions$`LGV - Diesel - Euro 3` * lgv_diesel_euro_3_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`LGV - Diesel - Euro 4` <- (road_pm25_tyre_emissions$`LGV - Diesel - Euro 4` * lgv_diesel_euro_4_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`LGV - Diesel - Euro 5a` <- (road_pm25_tyre_emissions$`LGV - Diesel - Euro 5a` * lgv_diesel_euro_5a_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`LGV - Diesel - Euro 5b` <- (road_pm25_tyre_emissions$`LGV - Diesel - Euro 5b` * lgv_diesel_euro_5b_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`LGV - Diesel - Euro 6b` <- (road_pm25_tyre_emissions$`LGV - Diesel - Euro 6b` * lgv_diesel_euro_6b_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`LGV - Diesel - Euro 6c` <- (road_pm25_tyre_emissions$`LGV - Diesel - Euro 6c` * lgv_diesel_euro_6c_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`LGV - Diesel - Euro 6d-Temp` <- (road_pm25_tyre_emissions$`LGV - Diesel - Euro 6d-Temp` * lgv_diesel_euro_6dTemp_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`LGV - Diesel - Euro 6d` <- (road_pm25_tyre_emissions$`LGV - Diesel - Euro 6d` * lgv_diesel_euro_6d_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`LGV - Diesel - Euro 7` <- (road_pm25_tyre_emissions$`LGV - Diesel - Euro 7` * lgv_diesel_euro_7_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`LGV - PHEV (Petrol)` <- (road_pm25_tyre_emissions$`LGV - PHEV (Petrol)` * lgv_phev_petrol_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`LGV - PHEV (Diesel)` <- (road_pm25_tyre_emissions$`LGV - PHEV (Diesel)` * lgv_phev_diesel_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`LGV - Hydrogen Fuel Cell` <- (road_pm25_tyre_emissions$`LGV - Hydrogen Fuel Cell` * lgv_fuelcell_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`LGV - BEV` <- (road_pm25_tyre_emissions$`LGV - BEV` * lgv_bev_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`HGV - CNG - Euro 1` <- (road_pm25_tyre_emissions$`HGV - CNG - Euro 1` * hgv_cng_euro_1_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`HGV - CNG - Euro 2` <- (road_pm25_tyre_emissions$`HGV - CNG - Euro 2` * hgv_cng_euro_2_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`HGV - CNG - Euro 3` <- (road_pm25_tyre_emissions$`HGV - CNG - Euro 3` * hgv_cng_euro_3_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`HGV - CNG - EEV` <- (road_pm25_tyre_emissions$`HGV - CNG - EEV` * hgv_cng_eev_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`HGV - Diesel - Euro 1` <- (road_pm25_tyre_emissions$`HGV - Diesel - Euro 1` * hgv_diesel_euro_1_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`HGV - Diesel - Euro 2` <- (road_pm25_tyre_emissions$`HGV - Diesel - Euro 2` * hgv_diesel_euro_2_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`HGV - Diesel - Euro 3` <- (road_pm25_tyre_emissions$`HGV - Diesel - Euro 3` * hgv_diesel_euro_3_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`HGV - Diesel - Euro 4` <- (road_pm25_tyre_emissions$`HGV - Diesel - Euro 4` * hgv_diesel_euro_4_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`HGV - Diesel - Euro 5` <- (road_pm25_tyre_emissions$`HGV - Diesel - Euro 5` * hgv_diesel_euro_5_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`HGV - Diesel - Euro 6` <- (road_pm25_tyre_emissions$`HGV - Diesel - Euro 6` * hgv_diesel_euro_6_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`HGV - Diesel - Euro 7` <- (road_pm25_tyre_emissions$`HGV - Diesel - Euro 7` * hgv_diesel_euro_7_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`HGV - PHEV (Diesel)` <- (road_pm25_tyre_emissions$`HGV - PHEV (Diesel)` * hgv_phev_diesel_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`HGV - Hydrogen Fuel Cell` <- (road_pm25_tyre_emissions$`HGV - Hydrogen Fuel Cell` * hgv_fuelcell_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`HGV - BEV` <- (road_pm25_tyre_emissions$`HGV - BEV` * hgv_bev_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Bus - CNG - Euro 1` <- (road_pm25_tyre_emissions$`Bus - CNG - Euro 1` * bus_cng_euro_1_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Bus - CNG - Euro 2` <- (road_pm25_tyre_emissions$`Bus - CNG - Euro 2` * bus_cng_euro_2_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Bus - CNG - Euro 3` <- (road_pm25_tyre_emissions$`Bus - CNG - Euro 3` * bus_cng_euro_3_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Bus - CNG - EEV` <- (road_pm25_tyre_emissions$`Bus - CNG - EEV` * bus_cng_eev_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Bus - Diesel - Euro 1` <- (road_pm25_tyre_emissions$`Bus - Diesel - Euro 1` * bus_diesel_euro_1_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Bus - Diesel - Euro 2` <- (road_pm25_tyre_emissions$`Bus - Diesel - Euro 2` * bus_diesel_euro_2_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Bus - Diesel - Euro 3` <- (road_pm25_tyre_emissions$`Bus - Diesel - Euro 3` * bus_diesel_euro_3_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Bus - Diesel - Euro 4` <- (road_pm25_tyre_emissions$`Bus - Diesel - Euro 4` * bus_diesel_euro_4_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Bus - Diesel - Euro 5` <- (road_pm25_tyre_emissions$`Bus - Diesel - Euro 5` * bus_diesel_euro_5_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Bus - Diesel - Euro 6` <- (road_pm25_tyre_emissions$`Bus - Diesel - Euro 6` * bus_diesel_euro_6_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Bus - Diesel - Euro 7` <- (road_pm25_tyre_emissions$`Bus - Diesel - Euro 7` * bus_diesel_euro_7_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Bus - PHEV (Diesel)` <- (road_pm25_tyre_emissions$`Bus - PHEV (Diesel)` * bus_phev_diesel_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Bus - Hydrogen Fuel Cell` <- (road_pm25_tyre_emissions$`Bus - Hydrogen Fuel Cell` * bus_fuelcell_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Bus - BEV` <- (road_pm25_tyre_emissions$`Bus - BEV` * bus_bev_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Motorcycle - Petrol - Euro 1` <- (road_pm25_tyre_emissions$`Motorcycle - Petrol - Euro 1` * motorcycle_petrol_euro_1_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Motorcycle - Petrol - Euro 2` <- (road_pm25_tyre_emissions$`Motorcycle - Petrol - Euro 2` * motorcycle_petrol_euro_2_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Motorcycle - Petrol - Euro 3` <- (road_pm25_tyre_emissions$`Motorcycle - Petrol - Euro 3` * motorcycle_petrol_euro_3_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Motorcycle - Petrol - Euro 4` <- (road_pm25_tyre_emissions$`Motorcycle - Petrol - Euro 4` * motorcycle_petrol_euro_4_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Motorcycle - Petrol - Euro 5` <- (road_pm25_tyre_emissions$`Motorcycle - Petrol - Euro 5` * motorcycle_petrol_euro_5_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Motorcycle - Hydrogen Fuel Cell` <- (road_pm25_tyre_emissions$`Motorcycle - Hydrogen Fuel Cell` * motorcycle_fuelcell_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Motorcycle - Electric` <- (road_pm25_tyre_emissions$`Motorcycle - Electric` * motorcycle_electric_pm25_tyre)/1000000000
    road_pm25_tyre_emissions$`Total Emissions` <-  rowSums(road_pm25_tyre_emissions[, 2:88], na.rm = TRUE)
    
    return(road_pm25_tyre_emissions)
    
  })
  
  
  # Road Transport NOx Impacts - applying UKIAM road transport impact factors
  
  road_pm25_tyre_impacts <- reactive({
    
    req(road_pm25_tyre_emissions())
    
    road_pm25_tyre_impacts <- road_pm25_tyre_emissions()[, 1:88]
    
    road_pm25_tyre_impacts$`Car - Petrol - Euro 1` <- (road_pm25_tyre_impacts$`Car - Petrol - Euro 1` * car_petrol_IF_pm25)
    road_pm25_tyre_impacts$`Car - Petrol - Euro 2` <- (road_pm25_tyre_impacts$`Car - Petrol - Euro 2` * car_petrol_IF_pm25)
    road_pm25_tyre_impacts$`Car - Petrol - Euro 3` <- (road_pm25_tyre_impacts$`Car - Petrol - Euro 3` * car_petrol_IF_pm25)
    road_pm25_tyre_impacts$`Car - Petrol - Euro 4` <- (road_pm25_tyre_impacts$`Car - Petrol - Euro 4` * car_petrol_IF_pm25)
    road_pm25_tyre_impacts$`Car - Petrol - Euro 5a` <- (road_pm25_tyre_impacts$`Car - Petrol - Euro 5a` * car_petrol_IF_pm25)
    road_pm25_tyre_impacts$`Car - Petrol - Euro 5b` <- (road_pm25_tyre_impacts$`Car - Petrol - Euro 5b` * car_petrol_IF_pm25)
    road_pm25_tyre_impacts$`Car - Petrol - Euro 6b` <- (road_pm25_tyre_impacts$`Car - Petrol - Euro 6b` * car_petrol_IF_pm25)
    road_pm25_tyre_impacts$`Car - Petrol - Euro 6c` <- (road_pm25_tyre_impacts$`Car - Petrol - Euro 6c` * car_petrol_IF_pm25)
    road_pm25_tyre_impacts$`Car - Petrol - Euro 6d-Temp` <- (road_pm25_tyre_impacts$`Car - Petrol - Euro 6d-Temp` * car_petrol_IF_pm25)
    road_pm25_tyre_impacts$`Car - Petrol - Euro 6d` <- (road_pm25_tyre_impacts$`Car - Petrol - Euro 6d` * car_petrol_IF_pm25)
    road_pm25_tyre_impacts$`Car - Petrol - Euro 7` <- (road_pm25_tyre_impacts$`Car - Petrol - Euro 7` * car_petrol_IF_pm25)
    road_pm25_tyre_impacts$`Car - Diesel - Euro 1` <- (road_pm25_tyre_impacts$`Car - Diesel - Euro 1` * car_diesel_IF_pm25)
    road_pm25_tyre_impacts$`Car - Diesel - Euro 2` <- (road_pm25_tyre_impacts$`Car - Diesel - Euro 2` * car_diesel_IF_pm25)
    road_pm25_tyre_impacts$`Car - Diesel - Euro 3` <- (road_pm25_tyre_impacts$`Car - Diesel - Euro 3` * car_diesel_IF_pm25)
    road_pm25_tyre_impacts$`Car - Diesel - Euro 4` <- (road_pm25_tyre_impacts$`Car - Diesel - Euro 4` * car_diesel_IF_pm25)
    road_pm25_tyre_impacts$`Car - Diesel - Euro 5a` <- (road_pm25_tyre_impacts$`Car - Diesel - Euro 5a` * car_diesel_IF_pm25)
    road_pm25_tyre_impacts$`Car - Diesel - Euro 5b` <- (road_pm25_tyre_impacts$`Car - Diesel - Euro 5b` * car_diesel_IF_pm25)
    road_pm25_tyre_impacts$`Car - Diesel - Euro 6b` <- (road_pm25_tyre_impacts$`Car - Diesel - Euro 6b` * car_diesel_IF_pm25)
    road_pm25_tyre_impacts$`Car - Diesel - Euro 6c` <- (road_pm25_tyre_impacts$`Car - Diesel - Euro 6c` * car_diesel_IF_pm25)
    road_pm25_tyre_impacts$`Car - Diesel - Euro 6d-Temp` <- (road_pm25_tyre_impacts$`Car - Diesel - Euro 6d-Temp` * car_diesel_IF_pm25)
    road_pm25_tyre_impacts$`Car - Diesel - Euro 6d` <- (road_pm25_tyre_impacts$`Car - Diesel - Euro 6d` * car_diesel_IF_pm25)
    road_pm25_tyre_impacts$`Car - Diesel - Euro 7` <- (road_pm25_tyre_impacts$`Car - Diesel - Euro 7` * car_diesel_IF_pm25)
    road_pm25_tyre_impacts$`Car - PHEV (Petrol)` <- (road_pm25_tyre_impacts$`Car - PHEV (Petrol)` * car_petrol_IF_pm25)
    road_pm25_tyre_impacts$`Car - PHEV (Diesel)` <- (road_pm25_tyre_impacts$`Car - PHEV (Diesel)` * car_diesel_IF_pm25)
    road_pm25_tyre_impacts$`Car - Hydrogen Fuel Cell` <- (road_pm25_tyre_impacts$`Car - Hydrogen Fuel Cell` * car_diesel_IF_pm25)
    road_pm25_tyre_impacts$`Car - BEV` <- (road_pm25_tyre_impacts$`Car - BEV` * car_diesel_IF_pm25)
    road_pm25_tyre_impacts$`LGV - Petrol - Euro 1` <- (road_pm25_tyre_impacts$`LGV - Petrol - Euro 1` * lgv_IF_pm25)
    road_pm25_tyre_impacts$`LGV - Petrol - Euro 2` <- (road_pm25_tyre_impacts$`LGV - Petrol - Euro 2` * lgv_IF_pm25)
    road_pm25_tyre_impacts$`LGV - Petrol - Euro 3` <- (road_pm25_tyre_impacts$`LGV - Petrol - Euro 3` * lgv_IF_pm25)
    road_pm25_tyre_impacts$`LGV - Petrol - Euro 4` <- (road_pm25_tyre_impacts$`LGV - Petrol - Euro 4` * lgv_IF_pm25)
    road_pm25_tyre_impacts$`LGV - Petrol - Euro 5a` <- (road_pm25_tyre_impacts$`LGV - Petrol - Euro 5a` * lgv_IF_pm25)
    road_pm25_tyre_impacts$`LGV - Petrol - Euro 5b` <- (road_pm25_tyre_impacts$`LGV - Petrol - Euro 5b` * lgv_IF_pm25)
    road_pm25_tyre_impacts$`LGV - Petrol - Euro 6b` <- (road_pm25_tyre_impacts$`LGV - Petrol - Euro 6b` * lgv_IF_pm25)
    road_pm25_tyre_impacts$`LGV - Petrol - Euro 6c` <- (road_pm25_tyre_impacts$`LGV - Petrol - Euro 6c` * lgv_IF_pm25)
    road_pm25_tyre_impacts$`LGV - Petrol - Euro 6d-Temp` <- (road_pm25_tyre_impacts$`LGV - Petrol - Euro 6d-Temp` * lgv_IF_pm25)
    road_pm25_tyre_impacts$`LGV - Petrol - Euro 6d` <- (road_pm25_tyre_impacts$`LGV - Petrol - Euro 6d` * lgv_IF_pm25)
    road_pm25_tyre_impacts$`LGV - Petrol - Euro 7` <- (road_pm25_tyre_impacts$`LGV - Petrol - Euro 7` * lgv_IF_pm25)
    road_pm25_tyre_impacts$`LGV - Diesel - Euro 1` <- (road_pm25_tyre_impacts$`LGV - Diesel - Euro 1` * lgv_IF_pm25)
    road_pm25_tyre_impacts$`LGV - Diesel - Euro 2` <- (road_pm25_tyre_impacts$`LGV - Diesel - Euro 2` * lgv_IF_pm25)
    road_pm25_tyre_impacts$`LGV - Diesel - Euro 3` <- (road_pm25_tyre_impacts$`LGV - Diesel - Euro 3` * lgv_IF_pm25)
    road_pm25_tyre_impacts$`LGV - Diesel - Euro 4` <- (road_pm25_tyre_impacts$`LGV - Diesel - Euro 4` * lgv_IF_pm25)
    road_pm25_tyre_impacts$`LGV - Diesel - Euro 5a` <- (road_pm25_tyre_impacts$`LGV - Diesel - Euro 5a` * lgv_IF_pm25)
    road_pm25_tyre_impacts$`LGV - Diesel - Euro 5b` <- (road_pm25_tyre_impacts$`LGV - Diesel - Euro 5b` * lgv_IF_pm25)
    road_pm25_tyre_impacts$`LGV - Diesel - Euro 6b` <- (road_pm25_tyre_impacts$`LGV - Diesel - Euro 6b` * lgv_IF_pm25)
    road_pm25_tyre_impacts$`LGV - Diesel - Euro 6c` <- road_pm25_tyre_impacts$`LGV - Diesel - Euro 6c` * lgv_IF_pm25
    road_pm25_tyre_impacts$`LGV - Diesel - Euro 6d-Temp` <- (road_pm25_tyre_impacts$`LGV - Diesel - Euro 6d-Temp` * lgv_IF_pm25)
    road_pm25_tyre_impacts$`LGV - Diesel - Euro 6d` <- (road_pm25_tyre_impacts$`LGV - Diesel - Euro 6d` * lgv_IF_pm25)
    road_pm25_tyre_impacts$`LGV - Diesel - Euro 7` <- (road_pm25_tyre_impacts$`LGV - Diesel - Euro 7` * lgv_IF_pm25)
    road_pm25_tyre_impacts$`LGV - PHEV (Petrol)` <- (road_pm25_tyre_impacts$`LGV - PHEV (Petrol)` * lgv_IF_pm25)
    road_pm25_tyre_impacts$`LGV - PHEV (Diesel)` <- (road_pm25_tyre_impacts$`LGV - PHEV (Diesel)` * lgv_IF_pm25)
    road_pm25_tyre_impacts$`LGV - Hydrogen Fuel Cell` <- (road_pm25_tyre_impacts$`LGV - Hydrogen Fuel Cell` * lgv_IF_pm25)
    road_pm25_tyre_impacts$`LGV - BEV` <- (road_pm25_tyre_impacts$`LGV - BEV` * lgv_IF_pm25)
    road_pm25_tyre_impacts$`HGV - CNG - Euro 1` <- (road_pm25_tyre_impacts$`HGV - CNG - Euro 1` * hgv_IF_pm25)
    road_pm25_tyre_impacts$`HGV - CNG - Euro 2` <- (road_pm25_tyre_impacts$`HGV - CNG - Euro 2` * hgv_IF_pm25)
    road_pm25_tyre_impacts$`HGV - CNG - Euro 3` <- (road_pm25_tyre_impacts$`HGV - CNG - Euro 3` * hgv_IF_pm25)
    road_pm25_tyre_impacts$`HGV - CNG - EEV` <- (road_pm25_tyre_impacts$`HGV - CNG - EEV` * hgv_IF_pm25)
    road_pm25_tyre_impacts$`HGV - Diesel - Euro 1` <- (road_pm25_tyre_impacts$`HGV - Diesel - Euro 1` * hgv_IF_pm25)
    road_pm25_tyre_impacts$`HGV - Diesel - Euro 2` <- (road_pm25_tyre_impacts$`HGV - Diesel - Euro 2` * hgv_IF_pm25)
    road_pm25_tyre_impacts$`HGV - Diesel - Euro 3` <- (road_pm25_tyre_impacts$`HGV - Diesel - Euro 3` * hgv_IF_pm25)
    road_pm25_tyre_impacts$`HGV - Diesel - Euro 4` <- (road_pm25_tyre_impacts$`HGV - Diesel - Euro 4` * hgv_IF_pm25)
    road_pm25_tyre_impacts$`HGV - Diesel - Euro 5` <- (road_pm25_tyre_impacts$`HGV - Diesel - Euro 5` * hgv_IF_pm25)
    road_pm25_tyre_impacts$`HGV - Diesel - Euro 6` <- (road_pm25_tyre_impacts$`HGV - Diesel - Euro 6` * hgv_IF_pm25)
    road_pm25_tyre_impacts$`HGV - Diesel - Euro 7` <- (road_pm25_tyre_impacts$`HGV - Diesel - Euro 7` * hgv_IF_pm25)
    road_pm25_tyre_impacts$`HGV - PHEV (Diesel)` <- (road_pm25_tyre_impacts$`HGV - PHEV (Diesel)` * hgv_IF_pm25)
    road_pm25_tyre_impacts$`HGV - Hydrogen Fuel Cell` <- (road_pm25_tyre_impacts$`HGV - Hydrogen Fuel Cell` * hgv_IF_pm25)
    road_pm25_tyre_impacts$`HGV - BEV` <- (road_pm25_tyre_impacts$`HGV - BEV` * hgv_IF_pm25)
    road_pm25_tyre_impacts$`Bus - CNG - Euro 1` <- (road_pm25_tyre_impacts$`Bus - CNG - Euro 1` * bus_IF_pm25)
    road_pm25_tyre_impacts$`Bus - CNG - Euro 2` <- (road_pm25_tyre_impacts$`Bus - CNG - Euro 2` * bus_IF_pm25)
    road_pm25_tyre_impacts$`Bus - CNG - Euro 3` <- (road_pm25_tyre_impacts$`Bus - CNG - Euro 3` * bus_IF_pm25)
    road_pm25_tyre_impacts$`Bus - CNG - EEV` <- (road_pm25_tyre_impacts$`Bus - CNG - EEV` * bus_IF_pm25)
    road_pm25_tyre_impacts$`Bus - Diesel - Euro 1` <- (road_pm25_tyre_impacts$`Bus - Diesel - Euro 1` * bus_IF_pm25)
    road_pm25_tyre_impacts$`Bus - Diesel - Euro 2` <- (road_pm25_tyre_impacts$`Bus - Diesel - Euro 2` * bus_IF_pm25)
    road_pm25_tyre_impacts$`Bus - Diesel - Euro 3` <- (road_pm25_tyre_impacts$`Bus - Diesel - Euro 3` * bus_IF_pm25)
    road_pm25_tyre_impacts$`Bus - Diesel - Euro 4` <- (road_pm25_tyre_impacts$`Bus - Diesel - Euro 4` * bus_IF_pm25)
    road_pm25_tyre_impacts$`Bus - Diesel - Euro 5` <- (road_pm25_tyre_impacts$`Bus - Diesel - Euro 5` * bus_IF_pm25)
    road_pm25_tyre_impacts$`Bus - Diesel - Euro 6` <- (road_pm25_tyre_impacts$`Bus - Diesel - Euro 6` * bus_IF_pm25)
    road_pm25_tyre_impacts$`Bus - Diesel - Euro 7` <- (road_pm25_tyre_impacts$`Bus - Diesel - Euro 7` * bus_IF_pm25)
    road_pm25_tyre_impacts$`Bus - PHEV (Diesel)` <- (road_pm25_tyre_impacts$`Bus - PHEV (Diesel)` * bus_IF_pm25)
    road_pm25_tyre_impacts$`Bus - Hydrogen Fuel Cell` <- (road_pm25_tyre_impacts$`Bus - Hydrogen Fuel Cell` * bus_IF_pm25)
    road_pm25_tyre_impacts$`Bus - BEV` <- (road_pm25_tyre_impacts$`Bus - BEV` * bus_IF_pm25)
    road_pm25_tyre_impacts$`Motorcycle - Petrol - Euro 1` <- (road_pm25_tyre_impacts$`Motorcycle - Petrol - Euro 1` * car_petrol_IF_pm25)
    road_pm25_tyre_impacts$`Motorcycle - Petrol - Euro 2` <- (road_pm25_tyre_impacts$`Motorcycle - Petrol - Euro 2` * car_petrol_IF_pm25)
    road_pm25_tyre_impacts$`Motorcycle - Petrol - Euro 3` <- (road_pm25_tyre_impacts$`Motorcycle - Petrol - Euro 3` * car_petrol_IF_pm25)
    road_pm25_tyre_impacts$`Motorcycle - Petrol - Euro 4` <- (road_pm25_tyre_impacts$`Motorcycle - Petrol - Euro 4` * car_petrol_IF_pm25)
    road_pm25_tyre_impacts$`Motorcycle - Petrol - Euro 5` <- (road_pm25_tyre_impacts$`Motorcycle - Petrol - Euro 5` * car_petrol_IF_pm25)
    road_pm25_tyre_impacts$`Motorcycle - Hydrogen Fuel Cell` <- (road_pm25_tyre_impacts$`Motorcycle - Hydrogen Fuel Cell` * car_petrol_IF_pm25)
    road_pm25_tyre_impacts$`Motorcycle - Electric` <- (road_pm25_tyre_impacts$`Motorcycle - Electric` * car_petrol_IF_pm25)
    road_pm25_tyre_impacts$`Total Impacts` <-  rowSums(road_pm25_tyre_impacts[, 2:88], na.rm = TRUE)
    
    
    return(road_pm25_tyre_impacts)
    
  })
  
  ##########################################################################################################################################################
  
  # Road Transport PM2.5 Brake Emissions and Impacts
  
  # Road Transport PM2.5 Emissions - /1000000000 to get emissions in kt

  road_pm25_brake_emissions <- reactive({
    
    req(road_data())
    
    road_pm25_brake_emissions <- road_data()[, 1:88]
    
    road_pm25_brake_emissions$`Car - Petrol - Euro 1` <- (road_pm25_brake_emissions$`Car - Petrol - Euro 1` * car_petrol_euro_1_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Car - Petrol - Euro 2` <- (road_pm25_brake_emissions$`Car - Petrol - Euro 2` * car_petrol_euro_2_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Car - Petrol - Euro 3` <- (road_pm25_brake_emissions$`Car - Petrol - Euro 3` * car_petrol_euro_3_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Car - Petrol - Euro 4` <- (road_pm25_brake_emissions$`Car - Petrol - Euro 4` * car_petrol_euro_4_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Car - Petrol - Euro 5a` <- (road_pm25_brake_emissions$`Car - Petrol - Euro 5a` * car_petrol_euro_5a_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Car - Petrol - Euro 5b` <- (road_pm25_brake_emissions$`Car - Petrol - Euro 5b` * car_petrol_euro_5a_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Car - Petrol - Euro 6b` <- (road_pm25_brake_emissions$`Car - Petrol - Euro 6b` * car_petrol_euro_6b_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Car - Petrol - Euro 6c` <- (road_pm25_brake_emissions$`Car - Petrol - Euro 6c` * car_petrol_euro_6c_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Car - Petrol - Euro 6d-Temp` <- (road_pm25_brake_emissions$`Car - Petrol - Euro 6d-Temp` * car_petrol_euro_6dTemp_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Car - Petrol - Euro 6d` <- (road_pm25_brake_emissions$`Car - Petrol - Euro 6d` * car_petrol_euro_6d_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Car - Petrol - Euro 7` <- (road_pm25_brake_emissions$`Car - Petrol - Euro 7` * car_petrol_euro_7_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Car - Diesel - Euro 1` <- (road_pm25_brake_emissions$`Car - Diesel - Euro 1` * car_diesel_euro_1_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Car - Diesel - Euro 2` <- (road_pm25_brake_emissions$`Car - Diesel - Euro 2` * car_diesel_euro_2_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Car - Diesel - Euro 3` <- (road_pm25_brake_emissions$`Car - Diesel - Euro 3` * car_diesel_euro_3_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Car - Diesel - Euro 4` <- (road_pm25_brake_emissions$`Car - Diesel - Euro 4` * car_diesel_euro_4_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Car - Diesel - Euro 5a` <- (road_pm25_brake_emissions$`Car - Diesel - Euro 5a` * car_diesel_euro_5a_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Car - Diesel - Euro 5b` <- (road_pm25_brake_emissions$`Car - Diesel - Euro 5b` * car_diesel_euro_5b_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Car - Diesel - Euro 6b` <- (road_pm25_brake_emissions$`Car - Diesel - Euro 6b` * car_diesel_euro_6b_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Car - Diesel - Euro 6c` <- (road_pm25_brake_emissions$`Car - Diesel - Euro 6c` * car_diesel_euro_6c_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Car - Diesel - Euro 6d-Temp` <- (road_pm25_brake_emissions$`Car - Diesel - Euro 6d-Temp` * car_diesel_euro_6dTemp_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Car - Diesel - Euro 6d` <- (road_pm25_brake_emissions$`Car - Diesel - Euro 6d` * car_diesel_euro_6d_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Car - Diesel - Euro 7` <- (road_pm25_brake_emissions$`Car - Diesel - Euro 7` * car_diesel_euro_7_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Car - PHEV (Petrol)` <- (road_pm25_brake_emissions$`Car - PHEV (Petrol)` * car_phev_petrol_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Car - PHEV (Diesel)` <- (road_pm25_brake_emissions$`Car - PHEV (Diesel)` * car_phev_diesel_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Car - Hydrogen Fuel Cell` <- (road_pm25_brake_emissions$`Car - Hydrogen Fuel Cell` * car_fuelcell_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Car - BEV` <- (road_pm25_brake_emissions$`Car - BEV` * car_bev_pm25_brake)/1000000000
    road_pm25_brake_emissions$`LGV - Petrol - Euro 1` <- (road_pm25_brake_emissions$`LGV - Petrol - Euro 1` * lgv_petrol_euro_1_pm25_brake)/1000000000
    road_pm25_brake_emissions$`LGV - Petrol - Euro 2` <- (road_pm25_brake_emissions$`LGV - Petrol - Euro 2` * lgv_petrol_euro_2_pm25_brake)/1000000000
    road_pm25_brake_emissions$`LGV - Petrol - Euro 3` <- (road_pm25_brake_emissions$`LGV - Petrol - Euro 3` * lgv_petrol_euro_3_pm25_brake)/1000000000
    road_pm25_brake_emissions$`LGV - Petrol - Euro 4` <- (road_pm25_brake_emissions$`LGV - Petrol - Euro 4` * lgv_petrol_euro_4_pm25_brake)/1000000000
    road_pm25_brake_emissions$`LGV - Petrol - Euro 5a` <- (road_pm25_brake_emissions$`LGV - Petrol - Euro 5a` * lgv_petrol_euro_5a_pm25_brake)/1000000000
    road_pm25_brake_emissions$`LGV - Petrol - Euro 5b` <- (road_pm25_brake_emissions$`LGV - Petrol - Euro 5b` * lgv_petrol_euro_5a_pm25_brake)/1000000000
    road_pm25_brake_emissions$`LGV - Petrol - Euro 6b` <- (road_pm25_brake_emissions$`LGV - Petrol - Euro 6b` * lgv_petrol_euro_6b_pm25_brake)/1000000000
    road_pm25_brake_emissions$`LGV - Petrol - Euro 6c` <- (road_pm25_brake_emissions$`LGV - Petrol - Euro 6c` * lgv_petrol_euro_6c_pm25_brake)/1000000000
    road_pm25_brake_emissions$`LGV - Petrol - Euro 6d-Temp` <- (road_pm25_brake_emissions$`LGV - Petrol - Euro 6d-Temp` * lgv_petrol_euro_6dTemp_pm25_brake)/1000000000
    road_pm25_brake_emissions$`LGV - Petrol - Euro 6d` <- (road_pm25_brake_emissions$`LGV - Petrol - Euro 6d` * lgv_petrol_euro_6d_pm25_brake)/1000000000
    road_pm25_brake_emissions$`LGV - Petrol - Euro 7` <- (road_pm25_brake_emissions$`LGV - Petrol - Euro 7` * lgv_petrol_euro_7_pm25_brake)/1000000000
    road_pm25_brake_emissions$`LGV - Diesel - Euro 1` <- (road_pm25_brake_emissions$`LGV - Diesel - Euro 1` * lgv_diesel_euro_1_pm25_brake)/1000000000
    road_pm25_brake_emissions$`LGV - Diesel - Euro 2` <- (road_pm25_brake_emissions$`LGV - Diesel - Euro 2` * lgv_diesel_euro_2_pm25_brake)/1000000000
    road_pm25_brake_emissions$`LGV - Diesel - Euro 3` <- (road_pm25_brake_emissions$`LGV - Diesel - Euro 3` * lgv_diesel_euro_3_pm25_brake)/1000000000
    road_pm25_brake_emissions$`LGV - Diesel - Euro 4` <- (road_pm25_brake_emissions$`LGV - Diesel - Euro 4` * lgv_diesel_euro_4_pm25_brake)/1000000000
    road_pm25_brake_emissions$`LGV - Diesel - Euro 5a` <- (road_pm25_brake_emissions$`LGV - Diesel - Euro 5a` * lgv_diesel_euro_5a_pm25_brake)/1000000000
    road_pm25_brake_emissions$`LGV - Diesel - Euro 5b` <- (road_pm25_brake_emissions$`LGV - Diesel - Euro 5b` * lgv_diesel_euro_5b_pm25_brake)/1000000000
    road_pm25_brake_emissions$`LGV - Diesel - Euro 6b` <- (road_pm25_brake_emissions$`LGV - Diesel - Euro 6b` * lgv_diesel_euro_6b_pm25_brake)/1000000000
    road_pm25_brake_emissions$`LGV - Diesel - Euro 6c` <- (road_pm25_brake_emissions$`LGV - Diesel - Euro 6c` * lgv_diesel_euro_6c_pm25_brake)/1000000000
    road_pm25_brake_emissions$`LGV - Diesel - Euro 6d-Temp` <- (road_pm25_brake_emissions$`LGV - Diesel - Euro 6d-Temp` * lgv_diesel_euro_6dTemp_pm25_brake)/1000000000
    road_pm25_brake_emissions$`LGV - Diesel - Euro 6d` <- (road_pm25_brake_emissions$`LGV - Diesel - Euro 6d` * lgv_diesel_euro_6d_pm25_brake)/1000000000
    road_pm25_brake_emissions$`LGV - Diesel - Euro 7` <- (road_pm25_brake_emissions$`LGV - Diesel - Euro 7` * lgv_diesel_euro_7_pm25_brake)/1000000000
    road_pm25_brake_emissions$`LGV - PHEV (Petrol)` <- (road_pm25_brake_emissions$`LGV - PHEV (Petrol)` * lgv_phev_petrol_pm25_brake)/1000000000
    road_pm25_brake_emissions$`LGV - PHEV (Diesel)` <- (road_pm25_brake_emissions$`LGV - PHEV (Diesel)` * lgv_phev_diesel_pm25_brake)/1000000000
    road_pm25_brake_emissions$`LGV - Hydrogen Fuel Cell` <- (road_pm25_brake_emissions$`LGV - Hydrogen Fuel Cell` * lgv_fuelcell_pm25_brake)/1000000000
    road_pm25_brake_emissions$`LGV - BEV` <- (road_pm25_brake_emissions$`LGV - BEV` * lgv_bev_pm25_brake)/1000000000
    road_pm25_brake_emissions$`HGV - CNG - Euro 1` <- (road_pm25_brake_emissions$`HGV - CNG - Euro 1` * hgv_cng_euro_1_pm25_brake)/1000000000
    road_pm25_brake_emissions$`HGV - CNG - Euro 2` <- (road_pm25_brake_emissions$`HGV - CNG - Euro 2` * hgv_cng_euro_2_pm25_brake)/1000000000
    road_pm25_brake_emissions$`HGV - CNG - Euro 3` <- (road_pm25_brake_emissions$`HGV - CNG - Euro 3` * hgv_cng_euro_3_pm25_brake)/1000000000
    road_pm25_brake_emissions$`HGV - CNG - EEV` <- (road_pm25_brake_emissions$`HGV - CNG - EEV` * hgv_cng_eev_pm25_brake)/1000000000
    road_pm25_brake_emissions$`HGV - Diesel - Euro 1` <- (road_pm25_brake_emissions$`HGV - Diesel - Euro 1` * hgv_diesel_euro_1_pm25_brake)/1000000000
    road_pm25_brake_emissions$`HGV - Diesel - Euro 2` <- (road_pm25_brake_emissions$`HGV - Diesel - Euro 2` * hgv_diesel_euro_2_pm25_brake)/1000000000
    road_pm25_brake_emissions$`HGV - Diesel - Euro 3` <- (road_pm25_brake_emissions$`HGV - Diesel - Euro 3` * hgv_diesel_euro_3_pm25_brake)/1000000000
    road_pm25_brake_emissions$`HGV - Diesel - Euro 4` <- (road_pm25_brake_emissions$`HGV - Diesel - Euro 4` * hgv_diesel_euro_4_pm25_brake)/1000000000
    road_pm25_brake_emissions$`HGV - Diesel - Euro 5` <- (road_pm25_brake_emissions$`HGV - Diesel - Euro 5` * hgv_diesel_euro_5_pm25_brake)/1000000000
    road_pm25_brake_emissions$`HGV - Diesel - Euro 6` <- (road_pm25_brake_emissions$`HGV - Diesel - Euro 6` * hgv_diesel_euro_6_pm25_brake)/1000000000
    road_pm25_brake_emissions$`HGV - Diesel - Euro 7` <- (road_pm25_brake_emissions$`HGV - Diesel - Euro 7` * hgv_diesel_euro_7_pm25_brake)/1000000000
    road_pm25_brake_emissions$`HGV - PHEV (Diesel)` <- (road_pm25_brake_emissions$`HGV - PHEV (Diesel)` * hgv_phev_diesel_pm25_brake)/1000000000
    road_pm25_brake_emissions$`HGV - Hydrogen Fuel Cell` <- (road_pm25_brake_emissions$`HGV - Hydrogen Fuel Cell` * hgv_fuelcell_pm25_brake)/1000000000
    road_pm25_brake_emissions$`HGV - BEV` <- (road_pm25_brake_emissions$`HGV - BEV` * hgv_bev_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Bus - CNG - Euro 1` <- (road_pm25_brake_emissions$`Bus - CNG - Euro 1` * bus_cng_euro_1_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Bus - CNG - Euro 2` <- (road_pm25_brake_emissions$`Bus - CNG - Euro 2` * bus_cng_euro_2_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Bus - CNG - Euro 3` <- (road_pm25_brake_emissions$`Bus - CNG - Euro 3` * bus_cng_euro_3_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Bus - CNG - EEV` <- (road_pm25_brake_emissions$`Bus - CNG - EEV` * bus_cng_eev_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Bus - Diesel - Euro 1` <- (road_pm25_brake_emissions$`Bus - Diesel - Euro 1` * bus_diesel_euro_1_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Bus - Diesel - Euro 2` <- (road_pm25_brake_emissions$`Bus - Diesel - Euro 2` * bus_diesel_euro_2_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Bus - Diesel - Euro 3` <- (road_pm25_brake_emissions$`Bus - Diesel - Euro 3` * bus_diesel_euro_3_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Bus - Diesel - Euro 4` <- (road_pm25_brake_emissions$`Bus - Diesel - Euro 4` * bus_diesel_euro_4_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Bus - Diesel - Euro 5` <- (road_pm25_brake_emissions$`Bus - Diesel - Euro 5` * bus_diesel_euro_5_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Bus - Diesel - Euro 6` <- (road_pm25_brake_emissions$`Bus - Diesel - Euro 6` * bus_diesel_euro_6_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Bus - Diesel - Euro 7` <- (road_pm25_brake_emissions$`Bus - Diesel - Euro 7` * bus_diesel_euro_7_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Bus - PHEV (Diesel)` <- (road_pm25_brake_emissions$`Bus - PHEV (Diesel)` * bus_phev_diesel_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Bus - Hydrogen Fuel Cell` <- (road_pm25_brake_emissions$`Bus - Hydrogen Fuel Cell` * bus_fuelcell_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Bus - BEV` <- (road_pm25_brake_emissions$`Bus - BEV` * bus_bev_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Motorcycle - Petrol - Euro 1` <- (road_pm25_brake_emissions$`Motorcycle - Petrol - Euro 1` * motorcycle_petrol_euro_1_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Motorcycle - Petrol - Euro 2` <- (road_pm25_brake_emissions$`Motorcycle - Petrol - Euro 2` * motorcycle_petrol_euro_2_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Motorcycle - Petrol - Euro 3` <- (road_pm25_brake_emissions$`Motorcycle - Petrol - Euro 3` * motorcycle_petrol_euro_3_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Motorcycle - Petrol - Euro 4` <- (road_pm25_brake_emissions$`Motorcycle - Petrol - Euro 4` * motorcycle_petrol_euro_4_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Motorcycle - Petrol - Euro 5` <- (road_pm25_brake_emissions$`Motorcycle - Petrol - Euro 5` * motorcycle_petrol_euro_5_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Motorcycle - Hydrogen Fuel Cell` <- (road_pm25_brake_emissions$`Motorcycle - Hydrogen Fuel Cell` * motorcycle_fuelcell_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Motorcycle - Electric` <- (road_pm25_brake_emissions$`Motorcycle - Electric` * motorcycle_electric_pm25_brake)/1000000000
    road_pm25_brake_emissions$`Total Emissions` <-  rowSums(road_pm25_brake_emissions[, 2:88], na.rm = TRUE)
    
    return(road_pm25_brake_emissions)
    
  })
  
  
  # Road Transport NOx Impacts - applying UKIAM road transport impact factors
  
  road_pm25_brake_impacts <- reactive({
    
    req(road_pm25_brake_emissions())
    
    road_pm25_brake_impacts <- road_pm25_brake_emissions()[, 1:88]
    
    road_pm25_brake_impacts$`Car - Petrol - Euro 1` <- (road_pm25_brake_impacts$`Car - Petrol - Euro 1` * car_petrol_IF_pm25)
    road_pm25_brake_impacts$`Car - Petrol - Euro 2` <- (road_pm25_brake_impacts$`Car - Petrol - Euro 2` * car_petrol_IF_pm25)
    road_pm25_brake_impacts$`Car - Petrol - Euro 3` <- (road_pm25_brake_impacts$`Car - Petrol - Euro 3` * car_petrol_IF_pm25)
    road_pm25_brake_impacts$`Car - Petrol - Euro 4` <- (road_pm25_brake_impacts$`Car - Petrol - Euro 4` * car_petrol_IF_pm25)
    road_pm25_brake_impacts$`Car - Petrol - Euro 5a` <- (road_pm25_brake_impacts$`Car - Petrol - Euro 5a` * car_petrol_IF_pm25)
    road_pm25_brake_impacts$`Car - Petrol - Euro 5b` <- (road_pm25_brake_impacts$`Car - Petrol - Euro 5b` * car_petrol_IF_pm25)
    road_pm25_brake_impacts$`Car - Petrol - Euro 6b` <- (road_pm25_brake_impacts$`Car - Petrol - Euro 6b` * car_petrol_IF_pm25)
    road_pm25_brake_impacts$`Car - Petrol - Euro 6c` <- (road_pm25_brake_impacts$`Car - Petrol - Euro 6c` * car_petrol_IF_pm25)
    road_pm25_brake_impacts$`Car - Petrol - Euro 6d-Temp` <- (road_pm25_brake_impacts$`Car - Petrol - Euro 6d-Temp` * car_petrol_IF_pm25)
    road_pm25_brake_impacts$`Car - Petrol - Euro 6d` <- (road_pm25_brake_impacts$`Car - Petrol - Euro 6d` * car_petrol_IF_pm25)
    road_pm25_brake_impacts$`Car - Petrol - Euro 7` <- (road_pm25_brake_impacts$`Car - Petrol - Euro 7` * car_petrol_IF_pm25)
    road_pm25_brake_impacts$`Car - Diesel - Euro 1` <- (road_pm25_brake_impacts$`Car - Diesel - Euro 1` * car_diesel_IF_pm25)
    road_pm25_brake_impacts$`Car - Diesel - Euro 2` <- (road_pm25_brake_impacts$`Car - Diesel - Euro 2` * car_diesel_IF_pm25)
    road_pm25_brake_impacts$`Car - Diesel - Euro 3` <- (road_pm25_brake_impacts$`Car - Diesel - Euro 3` * car_diesel_IF_pm25)
    road_pm25_brake_impacts$`Car - Diesel - Euro 4` <- (road_pm25_brake_impacts$`Car - Diesel - Euro 4` * car_diesel_IF_pm25)
    road_pm25_brake_impacts$`Car - Diesel - Euro 5a` <- (road_pm25_brake_impacts$`Car - Diesel - Euro 5a` * car_diesel_IF_pm25)
    road_pm25_brake_impacts$`Car - Diesel - Euro 5b` <- (road_pm25_brake_impacts$`Car - Diesel - Euro 5b` * car_diesel_IF_pm25)
    road_pm25_brake_impacts$`Car - Diesel - Euro 6b` <- (road_pm25_brake_impacts$`Car - Diesel - Euro 6b` * car_diesel_IF_pm25)
    road_pm25_brake_impacts$`Car - Diesel - Euro 6c` <- (road_pm25_brake_impacts$`Car - Diesel - Euro 6c` * car_diesel_IF_pm25)
    road_pm25_brake_impacts$`Car - Diesel - Euro 6d-Temp` <- (road_pm25_brake_impacts$`Car - Diesel - Euro 6d-Temp` * car_diesel_IF_pm25)
    road_pm25_brake_impacts$`Car - Diesel - Euro 6d` <- (road_pm25_brake_impacts$`Car - Diesel - Euro 6d` * car_diesel_IF_pm25)
    road_pm25_brake_impacts$`Car - Diesel - Euro 7` <- (road_pm25_brake_impacts$`Car - Diesel - Euro 7` * car_diesel_IF_pm25)
    road_pm25_brake_impacts$`Car - PHEV (Petrol)` <- (road_pm25_brake_impacts$`Car - PHEV (Petrol)` * car_petrol_IF_pm25)
    road_pm25_brake_impacts$`Car - PHEV (Diesel)` <- (road_pm25_brake_impacts$`Car - PHEV (Diesel)` * car_diesel_IF_pm25)
    road_pm25_brake_impacts$`Car - Hydrogen Fuel Cell` <- (road_pm25_brake_impacts$`Car - Hydrogen Fuel Cell` * car_diesel_IF_pm25)
    road_pm25_brake_impacts$`Car - BEV` <- (road_pm25_brake_impacts$`Car - BEV` * car_diesel_IF_pm25)
    road_pm25_brake_impacts$`LGV - Petrol - Euro 1` <- (road_pm25_brake_impacts$`LGV - Petrol - Euro 1` * lgv_IF_pm25)
    road_pm25_brake_impacts$`LGV - Petrol - Euro 2` <- (road_pm25_brake_impacts$`LGV - Petrol - Euro 2` * lgv_IF_pm25)
    road_pm25_brake_impacts$`LGV - Petrol - Euro 3` <- (road_pm25_brake_impacts$`LGV - Petrol - Euro 3` * lgv_IF_pm25)
    road_pm25_brake_impacts$`LGV - Petrol - Euro 4` <- (road_pm25_brake_impacts$`LGV - Petrol - Euro 4` * lgv_IF_pm25)
    road_pm25_brake_impacts$`LGV - Petrol - Euro 5a` <- (road_pm25_brake_impacts$`LGV - Petrol - Euro 5a` * lgv_IF_pm25)
    road_pm25_brake_impacts$`LGV - Petrol - Euro 5b` <- (road_pm25_brake_impacts$`LGV - Petrol - Euro 5b` * lgv_IF_pm25)
    road_pm25_brake_impacts$`LGV - Petrol - Euro 6b` <- (road_pm25_brake_impacts$`LGV - Petrol - Euro 6b` * lgv_IF_pm25)
    road_pm25_brake_impacts$`LGV - Petrol - Euro 6c` <- (road_pm25_brake_impacts$`LGV - Petrol - Euro 6c` * lgv_IF_pm25)
    road_pm25_brake_impacts$`LGV - Petrol - Euro 6d-Temp` <- (road_pm25_brake_impacts$`LGV - Petrol - Euro 6d-Temp` * lgv_IF_pm25)
    road_pm25_brake_impacts$`LGV - Petrol - Euro 6d` <- (road_pm25_brake_impacts$`LGV - Petrol - Euro 6d` * lgv_IF_pm25)
    road_pm25_brake_impacts$`LGV - Petrol - Euro 7` <- (road_pm25_brake_impacts$`LGV - Petrol - Euro 7` * lgv_IF_pm25)
    road_pm25_brake_impacts$`LGV - Diesel - Euro 1` <- (road_pm25_brake_impacts$`LGV - Diesel - Euro 1` * lgv_IF_pm25)
    road_pm25_brake_impacts$`LGV - Diesel - Euro 2` <- (road_pm25_brake_impacts$`LGV - Diesel - Euro 2` * lgv_IF_pm25)
    road_pm25_brake_impacts$`LGV - Diesel - Euro 3` <- (road_pm25_brake_impacts$`LGV - Diesel - Euro 3` * lgv_IF_pm25)
    road_pm25_brake_impacts$`LGV - Diesel - Euro 4` <- (road_pm25_brake_impacts$`LGV - Diesel - Euro 4` * lgv_IF_pm25)
    road_pm25_brake_impacts$`LGV - Diesel - Euro 5a` <- (road_pm25_brake_impacts$`LGV - Diesel - Euro 5a` * lgv_IF_pm25)
    road_pm25_brake_impacts$`LGV - Diesel - Euro 5b` <- (road_pm25_brake_impacts$`LGV - Diesel - Euro 5b` * lgv_IF_pm25)
    road_pm25_brake_impacts$`LGV - Diesel - Euro 6b` <- (road_pm25_brake_impacts$`LGV - Diesel - Euro 6b` * lgv_IF_pm25)
    road_pm25_brake_impacts$`LGV - Diesel - Euro 6c` <- road_pm25_brake_impacts$`LGV - Diesel - Euro 6c` * lgv_IF_pm25
    road_pm25_brake_impacts$`LGV - Diesel - Euro 6d-Temp` <- (road_pm25_brake_impacts$`LGV - Diesel - Euro 6d-Temp` * lgv_IF_pm25)
    road_pm25_brake_impacts$`LGV - Diesel - Euro 6d` <- (road_pm25_brake_impacts$`LGV - Diesel - Euro 6d` * lgv_IF_pm25)
    road_pm25_brake_impacts$`LGV - Diesel - Euro 7` <- (road_pm25_brake_impacts$`LGV - Diesel - Euro 7` * lgv_IF_pm25)
    road_pm25_brake_impacts$`LGV - PHEV (Petrol)` <- (road_pm25_brake_impacts$`LGV - PHEV (Petrol)` * lgv_IF_pm25)
    road_pm25_brake_impacts$`LGV - PHEV (Diesel)` <- (road_pm25_brake_impacts$`LGV - PHEV (Diesel)` * lgv_IF_pm25)
    road_pm25_brake_impacts$`LGV - Hydrogen Fuel Cell` <- (road_pm25_brake_impacts$`LGV - Hydrogen Fuel Cell` * lgv_IF_pm25)
    road_pm25_brake_impacts$`LGV - BEV` <- (road_pm25_brake_impacts$`LGV - BEV` * lgv_IF_pm25)
    road_pm25_brake_impacts$`HGV - CNG - Euro 1` <- (road_pm25_brake_impacts$`HGV - CNG - Euro 1` * hgv_IF_pm25)
    road_pm25_brake_impacts$`HGV - CNG - Euro 2` <- (road_pm25_brake_impacts$`HGV - CNG - Euro 2` * hgv_IF_pm25)
    road_pm25_brake_impacts$`HGV - CNG - Euro 3` <- (road_pm25_brake_impacts$`HGV - CNG - Euro 3` * hgv_IF_pm25)
    road_pm25_brake_impacts$`HGV - CNG - EEV` <- (road_pm25_brake_impacts$`HGV - CNG - EEV` * hgv_IF_pm25)
    road_pm25_brake_impacts$`HGV - Diesel - Euro 1` <- (road_pm25_brake_impacts$`HGV - Diesel - Euro 1` * hgv_IF_pm25)
    road_pm25_brake_impacts$`HGV - Diesel - Euro 2` <- (road_pm25_brake_impacts$`HGV - Diesel - Euro 2` * hgv_IF_pm25)
    road_pm25_brake_impacts$`HGV - Diesel - Euro 3` <- (road_pm25_brake_impacts$`HGV - Diesel - Euro 3` * hgv_IF_pm25)
    road_pm25_brake_impacts$`HGV - Diesel - Euro 4` <- (road_pm25_brake_impacts$`HGV - Diesel - Euro 4` * hgv_IF_pm25)
    road_pm25_brake_impacts$`HGV - Diesel - Euro 5` <- (road_pm25_brake_impacts$`HGV - Diesel - Euro 5` * hgv_IF_pm25)
    road_pm25_brake_impacts$`HGV - Diesel - Euro 6` <- (road_pm25_brake_impacts$`HGV - Diesel - Euro 6` * hgv_IF_pm25)
    road_pm25_brake_impacts$`HGV - Diesel - Euro 7` <- (road_pm25_brake_impacts$`HGV - Diesel - Euro 7` * hgv_IF_pm25)
    road_pm25_brake_impacts$`HGV - PHEV (Diesel)` <- (road_pm25_brake_impacts$`HGV - PHEV (Diesel)` * hgv_IF_pm25)
    road_pm25_brake_impacts$`HGV - Hydrogen Fuel Cell` <- (road_pm25_brake_impacts$`HGV - Hydrogen Fuel Cell` * hgv_IF_pm25)
    road_pm25_brake_impacts$`HGV - BEV` <- (road_pm25_brake_impacts$`HGV - BEV` * hgv_IF_pm25)
    road_pm25_brake_impacts$`Bus - CNG - Euro 1` <- (road_pm25_brake_impacts$`Bus - CNG - Euro 1` * bus_IF_pm25)
    road_pm25_brake_impacts$`Bus - CNG - Euro 2` <- (road_pm25_brake_impacts$`Bus - CNG - Euro 2` * bus_IF_pm25)
    road_pm25_brake_impacts$`Bus - CNG - Euro 3` <- (road_pm25_brake_impacts$`Bus - CNG - Euro 3` * bus_IF_pm25)
    road_pm25_brake_impacts$`Bus - CNG - EEV` <- (road_pm25_brake_impacts$`Bus - CNG - EEV` * bus_IF_pm25)
    road_pm25_brake_impacts$`Bus - Diesel - Euro 1` <- (road_pm25_brake_impacts$`Bus - Diesel - Euro 1` * bus_IF_pm25)
    road_pm25_brake_impacts$`Bus - Diesel - Euro 2` <- (road_pm25_brake_impacts$`Bus - Diesel - Euro 2` * bus_IF_pm25)
    road_pm25_brake_impacts$`Bus - Diesel - Euro 3` <- (road_pm25_brake_impacts$`Bus - Diesel - Euro 3` * bus_IF_pm25)
    road_pm25_brake_impacts$`Bus - Diesel - Euro 4` <- (road_pm25_brake_impacts$`Bus - Diesel - Euro 4` * bus_IF_pm25)
    road_pm25_brake_impacts$`Bus - Diesel - Euro 5` <- (road_pm25_brake_impacts$`Bus - Diesel - Euro 5` * bus_IF_pm25)
    road_pm25_brake_impacts$`Bus - Diesel - Euro 6` <- (road_pm25_brake_impacts$`Bus - Diesel - Euro 6` * bus_IF_pm25)
    road_pm25_brake_impacts$`Bus - Diesel - Euro 7` <- (road_pm25_brake_impacts$`Bus - Diesel - Euro 7` * bus_IF_pm25)
    road_pm25_brake_impacts$`Bus - PHEV (Diesel)` <- (road_pm25_brake_impacts$`Bus - PHEV (Diesel)` * bus_IF_pm25)
    road_pm25_brake_impacts$`Bus - Hydrogen Fuel Cell` <- (road_pm25_brake_impacts$`Bus - Hydrogen Fuel Cell` * bus_IF_pm25)
    road_pm25_brake_impacts$`Bus - BEV` <- (road_pm25_brake_impacts$`Bus - BEV` * bus_IF_pm25)
    road_pm25_brake_impacts$`Motorcycle - Petrol - Euro 1` <- (road_pm25_brake_impacts$`Motorcycle - Petrol - Euro 1` * car_petrol_IF_pm25)
    road_pm25_brake_impacts$`Motorcycle - Petrol - Euro 2` <- (road_pm25_brake_impacts$`Motorcycle - Petrol - Euro 2` * car_petrol_IF_pm25)
    road_pm25_brake_impacts$`Motorcycle - Petrol - Euro 3` <- (road_pm25_brake_impacts$`Motorcycle - Petrol - Euro 3` * car_petrol_IF_pm25)
    road_pm25_brake_impacts$`Motorcycle - Petrol - Euro 4` <- (road_pm25_brake_impacts$`Motorcycle - Petrol - Euro 4` * car_petrol_IF_pm25)
    road_pm25_brake_impacts$`Motorcycle - Petrol - Euro 5` <- (road_pm25_brake_impacts$`Motorcycle - Petrol - Euro 5` * car_petrol_IF_pm25)
    road_pm25_brake_impacts$`Motorcycle - Hydrogen Fuel Cell` <- (road_pm25_brake_impacts$`Motorcycle - Hydrogen Fuel Cell` * car_petrol_IF_pm25)
    road_pm25_brake_impacts$`Motorcycle - Electric` <- (road_pm25_brake_impacts$`Motorcycle - Electric` * car_petrol_IF_pm25)
    road_pm25_brake_impacts$`Total Impacts` <-  rowSums(road_pm25_brake_impacts[, 2:88], na.rm = TRUE)
    
    return(road_pm25_brake_impacts)
    
  })
  
 #######################################################################################################################################################################
  
  # Road Transport PM2.5 Road Wear Emissions and Impacts
  
  # Road Transport PM2.5 Emissions - /1000000000 to get emissions in kt
  
  road_pm25_road_emissions <- reactive({
    
    req(road_data())
    
    road_pm25_road_emissions <- road_data()[, 1:88]
    
    road_pm25_road_emissions$`Car - Petrol - Euro 1` <- (road_pm25_road_emissions$`Car - Petrol - Euro 1` * car_petrol_euro_1_pm25_road)/1000000000
    road_pm25_road_emissions$`Car - Petrol - Euro 2` <- (road_pm25_road_emissions$`Car - Petrol - Euro 2` * car_petrol_euro_2_pm25_road)/1000000000
    road_pm25_road_emissions$`Car - Petrol - Euro 3` <- (road_pm25_road_emissions$`Car - Petrol - Euro 3` * car_petrol_euro_3_pm25_road)/1000000000
    road_pm25_road_emissions$`Car - Petrol - Euro 4` <- (road_pm25_road_emissions$`Car - Petrol - Euro 4` * car_petrol_euro_4_pm25_road)/1000000000
    road_pm25_road_emissions$`Car - Petrol - Euro 5a` <- (road_pm25_road_emissions$`Car - Petrol - Euro 5a` * car_petrol_euro_5a_pm25_road)/1000000000
    road_pm25_road_emissions$`Car - Petrol - Euro 5b` <- (road_pm25_road_emissions$`Car - Petrol - Euro 5b` * car_petrol_euro_5a_pm25_road)/1000000000
    road_pm25_road_emissions$`Car - Petrol - Euro 6b` <- (road_pm25_road_emissions$`Car - Petrol - Euro 6b` * car_petrol_euro_6b_pm25_road)/1000000000
    road_pm25_road_emissions$`Car - Petrol - Euro 6c` <- (road_pm25_road_emissions$`Car - Petrol - Euro 6c` * car_petrol_euro_6c_pm25_road)/1000000000
    road_pm25_road_emissions$`Car - Petrol - Euro 6d-Temp` <- (road_pm25_road_emissions$`Car - Petrol - Euro 6d-Temp` * car_petrol_euro_6dTemp_pm25_road)/1000000000
    road_pm25_road_emissions$`Car - Petrol - Euro 6d` <- (road_pm25_road_emissions$`Car - Petrol - Euro 6d` * car_petrol_euro_6d_pm25_road)/1000000000
    road_pm25_road_emissions$`Car - Petrol - Euro 7` <- (road_pm25_road_emissions$`Car - Petrol - Euro 7` * car_petrol_euro_7_pm25_road)/1000000000
    road_pm25_road_emissions$`Car - Diesel - Euro 1` <- (road_pm25_road_emissions$`Car - Diesel - Euro 1` * car_diesel_euro_1_pm25_road)/1000000000
    road_pm25_road_emissions$`Car - Diesel - Euro 2` <- (road_pm25_road_emissions$`Car - Diesel - Euro 2` * car_diesel_euro_2_pm25_road)/1000000000
    road_pm25_road_emissions$`Car - Diesel - Euro 3` <- (road_pm25_road_emissions$`Car - Diesel - Euro 3` * car_diesel_euro_3_pm25_road)/1000000000
    road_pm25_road_emissions$`Car - Diesel - Euro 4` <- (road_pm25_road_emissions$`Car - Diesel - Euro 4` * car_diesel_euro_4_pm25_road)/1000000000
    road_pm25_road_emissions$`Car - Diesel - Euro 5a` <- (road_pm25_road_emissions$`Car - Diesel - Euro 5a` * car_diesel_euro_5a_pm25_road)/1000000000
    road_pm25_road_emissions$`Car - Diesel - Euro 5b` <- (road_pm25_road_emissions$`Car - Diesel - Euro 5b` * car_diesel_euro_5b_pm25_road)/1000000000
    road_pm25_road_emissions$`Car - Diesel - Euro 6b` <- (road_pm25_road_emissions$`Car - Diesel - Euro 6b` * car_diesel_euro_6b_pm25_road)/1000000000
    road_pm25_road_emissions$`Car - Diesel - Euro 6c` <- (road_pm25_road_emissions$`Car - Diesel - Euro 6c` * car_diesel_euro_6c_pm25_road)/1000000000
    road_pm25_road_emissions$`Car - Diesel - Euro 6d-Temp` <- (road_pm25_road_emissions$`Car - Diesel - Euro 6d-Temp` * car_diesel_euro_6dTemp_pm25_road)/1000000000
    road_pm25_road_emissions$`Car - Diesel - Euro 6d` <- (road_pm25_road_emissions$`Car - Diesel - Euro 6d` * car_diesel_euro_6d_pm25_road)/1000000000
    road_pm25_road_emissions$`Car - Diesel - Euro 7` <- (road_pm25_road_emissions$`Car - Diesel - Euro 7` * car_diesel_euro_7_pm25_road)/1000000000
    road_pm25_road_emissions$`Car - PHEV (Petrol)` <- (road_pm25_road_emissions$`Car - PHEV (Petrol)` * car_phev_petrol_pm25_road)/1000000000
    road_pm25_road_emissions$`Car - PHEV (Diesel)` <- (road_pm25_road_emissions$`Car - PHEV (Diesel)` * car_phev_diesel_pm25_road)/1000000000
    road_pm25_road_emissions$`Car - Hydrogen Fuel Cell` <- (road_pm25_road_emissions$`Car - Hydrogen Fuel Cell` * car_fuelcell_pm25_road)/1000000000
    road_pm25_road_emissions$`Car - BEV` <- (road_pm25_road_emissions$`Car - BEV` * car_bev_pm25_road)/1000000000
    road_pm25_road_emissions$`LGV - Petrol - Euro 1` <- (road_pm25_road_emissions$`LGV - Petrol - Euro 1` * lgv_petrol_euro_1_pm25_road)/1000000000
    road_pm25_road_emissions$`LGV - Petrol - Euro 2` <- (road_pm25_road_emissions$`LGV - Petrol - Euro 2` * lgv_petrol_euro_2_pm25_road)/1000000000
    road_pm25_road_emissions$`LGV - Petrol - Euro 3` <- (road_pm25_road_emissions$`LGV - Petrol - Euro 3` * lgv_petrol_euro_3_pm25_road)/1000000000
    road_pm25_road_emissions$`LGV - Petrol - Euro 4` <- (road_pm25_road_emissions$`LGV - Petrol - Euro 4` * lgv_petrol_euro_4_pm25_road)/1000000000
    road_pm25_road_emissions$`LGV - Petrol - Euro 5a` <- (road_pm25_road_emissions$`LGV - Petrol - Euro 5a` * lgv_petrol_euro_5a_pm25_road)/1000000000
    road_pm25_road_emissions$`LGV - Petrol - Euro 5b` <- (road_pm25_road_emissions$`LGV - Petrol - Euro 5b` * lgv_petrol_euro_5a_pm25_road)/1000000000
    road_pm25_road_emissions$`LGV - Petrol - Euro 6b` <- (road_pm25_road_emissions$`LGV - Petrol - Euro 6b` * lgv_petrol_euro_6b_pm25_road)/1000000000
    road_pm25_road_emissions$`LGV - Petrol - Euro 6c` <- (road_pm25_road_emissions$`LGV - Petrol - Euro 6c` * lgv_petrol_euro_6c_pm25_road)/1000000000
    road_pm25_road_emissions$`LGV - Petrol - Euro 6d-Temp` <- (road_pm25_road_emissions$`LGV - Petrol - Euro 6d-Temp` * lgv_petrol_euro_6dTemp_pm25_road)/1000000000
    road_pm25_road_emissions$`LGV - Petrol - Euro 6d` <- (road_pm25_road_emissions$`LGV - Petrol - Euro 6d` * lgv_petrol_euro_6d_pm25_road)/1000000000
    road_pm25_road_emissions$`LGV - Petrol - Euro 7` <- (road_pm25_road_emissions$`LGV - Petrol - Euro 7` * lgv_petrol_euro_7_pm25_road)/1000000000
    road_pm25_road_emissions$`LGV - Diesel - Euro 1` <- (road_pm25_road_emissions$`LGV - Diesel - Euro 1` * lgv_diesel_euro_1_pm25_road)/1000000000
    road_pm25_road_emissions$`LGV - Diesel - Euro 2` <- (road_pm25_road_emissions$`LGV - Diesel - Euro 2` * lgv_diesel_euro_2_pm25_road)/1000000000
    road_pm25_road_emissions$`LGV - Diesel - Euro 3` <- (road_pm25_road_emissions$`LGV - Diesel - Euro 3` * lgv_diesel_euro_3_pm25_road)/1000000000
    road_pm25_road_emissions$`LGV - Diesel - Euro 4` <- (road_pm25_road_emissions$`LGV - Diesel - Euro 4` * lgv_diesel_euro_4_pm25_road)/1000000000
    road_pm25_road_emissions$`LGV - Diesel - Euro 5a` <- (road_pm25_road_emissions$`LGV - Diesel - Euro 5a` * lgv_diesel_euro_5a_pm25_road)/1000000000
    road_pm25_road_emissions$`LGV - Diesel - Euro 5b` <- (road_pm25_road_emissions$`LGV - Diesel - Euro 5b` * lgv_diesel_euro_5b_pm25_road)/1000000000
    road_pm25_road_emissions$`LGV - Diesel - Euro 6b` <- (road_pm25_road_emissions$`LGV - Diesel - Euro 6b` * lgv_diesel_euro_6b_pm25_road)/1000000000
    road_pm25_road_emissions$`LGV - Diesel - Euro 6c` <- (road_pm25_road_emissions$`LGV - Diesel - Euro 6c` * lgv_diesel_euro_6c_pm25_road)/1000000000
    road_pm25_road_emissions$`LGV - Diesel - Euro 6d-Temp` <- (road_pm25_road_emissions$`LGV - Diesel - Euro 6d-Temp` * lgv_diesel_euro_6dTemp_pm25_road)/1000000000
    road_pm25_road_emissions$`LGV - Diesel - Euro 6d` <- (road_pm25_road_emissions$`LGV - Diesel - Euro 6d` * lgv_diesel_euro_6d_pm25_road)/1000000000
    road_pm25_road_emissions$`LGV - Diesel - Euro 7` <- (road_pm25_road_emissions$`LGV - Diesel - Euro 7` * lgv_diesel_euro_7_pm25_road)/1000000000
    road_pm25_road_emissions$`LGV - PHEV (Petrol)` <- (road_pm25_road_emissions$`LGV - PHEV (Petrol)` * lgv_phev_petrol_pm25_road)/1000000000
    road_pm25_road_emissions$`LGV - PHEV (Diesel)` <- (road_pm25_road_emissions$`LGV - PHEV (Diesel)` * lgv_phev_diesel_pm25_road)/1000000000
    road_pm25_road_emissions$`LGV - Hydrogen Fuel Cell` <- (road_pm25_road_emissions$`LGV - Hydrogen Fuel Cell` * lgv_fuelcell_pm25_road)/1000000000
    road_pm25_road_emissions$`LGV - BEV` <- (road_pm25_road_emissions$`LGV - BEV` * lgv_bev_pm25_road)/1000000000
    road_pm25_road_emissions$`HGV - CNG - Euro 1` <- (road_pm25_road_emissions$`HGV - CNG - Euro 1` * hgv_cng_euro_1_pm25_road)/1000000000
    road_pm25_road_emissions$`HGV - CNG - Euro 2` <- (road_pm25_road_emissions$`HGV - CNG - Euro 2` * hgv_cng_euro_2_pm25_road)/1000000000
    road_pm25_road_emissions$`HGV - CNG - Euro 3` <- (road_pm25_road_emissions$`HGV - CNG - Euro 3` * hgv_cng_euro_3_pm25_road)/1000000000
    road_pm25_road_emissions$`HGV - CNG - EEV` <- (road_pm25_road_emissions$`HGV - CNG - EEV` * hgv_cng_eev_pm25_road)/1000000000
    road_pm25_road_emissions$`HGV - Diesel - Euro 1` <- (road_pm25_road_emissions$`HGV - Diesel - Euro 1` * hgv_diesel_euro_1_pm25_road)/1000000000
    road_pm25_road_emissions$`HGV - Diesel - Euro 2` <- (road_pm25_road_emissions$`HGV - Diesel - Euro 2` * hgv_diesel_euro_2_pm25_road)/1000000000
    road_pm25_road_emissions$`HGV - Diesel - Euro 3` <- (road_pm25_road_emissions$`HGV - Diesel - Euro 3` * hgv_diesel_euro_3_pm25_road)/1000000000
    road_pm25_road_emissions$`HGV - Diesel - Euro 4` <- (road_pm25_road_emissions$`HGV - Diesel - Euro 4` * hgv_diesel_euro_4_pm25_road)/1000000000
    road_pm25_road_emissions$`HGV - Diesel - Euro 5` <- (road_pm25_road_emissions$`HGV - Diesel - Euro 5` * hgv_diesel_euro_5_pm25_road)/1000000000
    road_pm25_road_emissions$`HGV - Diesel - Euro 6` <- (road_pm25_road_emissions$`HGV - Diesel - Euro 6` * hgv_diesel_euro_6_pm25_road)/1000000000
    road_pm25_road_emissions$`HGV - Diesel - Euro 7` <- (road_pm25_road_emissions$`HGV - Diesel - Euro 7` * hgv_diesel_euro_7_pm25_road)/1000000000
    road_pm25_road_emissions$`HGV - PHEV (Diesel)` <- (road_pm25_road_emissions$`HGV - PHEV (Diesel)` * hgv_phev_diesel_pm25_road)/1000000000
    road_pm25_road_emissions$`HGV - Hydrogen Fuel Cell` <- (road_pm25_road_emissions$`HGV - Hydrogen Fuel Cell` * hgv_fuelcell_pm25_road)/1000000000
    road_pm25_road_emissions$`HGV - BEV` <- (road_pm25_road_emissions$`HGV - BEV` * hgv_bev_pm25_road)/1000000000
    road_pm25_road_emissions$`Bus - CNG - Euro 1` <- (road_pm25_road_emissions$`Bus - CNG - Euro 1` * bus_cng_euro_1_pm25_road)/1000000000
    road_pm25_road_emissions$`Bus - CNG - Euro 2` <- (road_pm25_road_emissions$`Bus - CNG - Euro 2` * bus_cng_euro_2_pm25_road)/1000000000
    road_pm25_road_emissions$`Bus - CNG - Euro 3` <- (road_pm25_road_emissions$`Bus - CNG - Euro 3` * bus_cng_euro_3_pm25_road)/1000000000
    road_pm25_road_emissions$`Bus - CNG - EEV` <- (road_pm25_road_emissions$`Bus - CNG - EEV` * bus_cng_eev_pm25_road)/1000000000
    road_pm25_road_emissions$`Bus - Diesel - Euro 1` <- (road_pm25_road_emissions$`Bus - Diesel - Euro 1` * bus_diesel_euro_1_pm25_road)/1000000000
    road_pm25_road_emissions$`Bus - Diesel - Euro 2` <- (road_pm25_road_emissions$`Bus - Diesel - Euro 2` * bus_diesel_euro_2_pm25_road)/1000000000
    road_pm25_road_emissions$`Bus - Diesel - Euro 3` <- (road_pm25_road_emissions$`Bus - Diesel - Euro 3` * bus_diesel_euro_3_pm25_road)/1000000000
    road_pm25_road_emissions$`Bus - Diesel - Euro 4` <- (road_pm25_road_emissions$`Bus - Diesel - Euro 4` * bus_diesel_euro_4_pm25_road)/1000000000
    road_pm25_road_emissions$`Bus - Diesel - Euro 5` <- (road_pm25_road_emissions$`Bus - Diesel - Euro 5` * bus_diesel_euro_5_pm25_road)/1000000000
    road_pm25_road_emissions$`Bus - Diesel - Euro 6` <- (road_pm25_road_emissions$`Bus - Diesel - Euro 6` * bus_diesel_euro_6_pm25_road)/1000000000
    road_pm25_road_emissions$`Bus - Diesel - Euro 7` <- (road_pm25_road_emissions$`Bus - Diesel - Euro 7` * bus_diesel_euro_7_pm25_road)/1000000000
    road_pm25_road_emissions$`Bus - PHEV (Diesel)` <- (road_pm25_road_emissions$`Bus - PHEV (Diesel)` * bus_phev_diesel_pm25_road)/1000000000
    road_pm25_road_emissions$`Bus - Hydrogen Fuel Cell` <- (road_pm25_road_emissions$`Bus - Hydrogen Fuel Cell` * bus_fuelcell_pm25_road)/1000000000
    road_pm25_road_emissions$`Bus - BEV` <- (road_pm25_road_emissions$`Bus - BEV` * bus_bev_pm25_road)/1000000000
    road_pm25_road_emissions$`Motorcycle - Petrol - Euro 1` <- (road_pm25_road_emissions$`Motorcycle - Petrol - Euro 1` * motorcycle_petrol_euro_1_pm25_road)/1000000000
    road_pm25_road_emissions$`Motorcycle - Petrol - Euro 2` <- (road_pm25_road_emissions$`Motorcycle - Petrol - Euro 2` * motorcycle_petrol_euro_2_pm25_road)/1000000000
    road_pm25_road_emissions$`Motorcycle - Petrol - Euro 3` <- (road_pm25_road_emissions$`Motorcycle - Petrol - Euro 3` * motorcycle_petrol_euro_3_pm25_road)/1000000000
    road_pm25_road_emissions$`Motorcycle - Petrol - Euro 4` <- (road_pm25_road_emissions$`Motorcycle - Petrol - Euro 4` * motorcycle_petrol_euro_4_pm25_road)/1000000000
    road_pm25_road_emissions$`Motorcycle - Petrol - Euro 5` <- (road_pm25_road_emissions$`Motorcycle - Petrol - Euro 5` * motorcycle_petrol_euro_5_pm25_road)/1000000000
    road_pm25_road_emissions$`Motorcycle - Hydrogen Fuel Cell` <- (road_pm25_road_emissions$`Motorcycle - Hydrogen Fuel Cell` * motorcycle_fuelcell_pm25_road)/1000000000
    road_pm25_road_emissions$`Motorcycle - Electric` <- (road_pm25_road_emissions$`Motorcycle - Electric` * motorcycle_electric_pm25_road)/1000000000
    road_pm25_road_emissions$`Total Emissions` <-  rowSums(road_pm25_road_emissions[, 2:88], na.rm = TRUE)
    
    return(road_pm25_road_emissions)
    
  })
  
  
  # Road Transport NOx Impacts - applying UKIAM road transport impact factors
  
  road_pm25_road_impacts <- reactive({
    
    req(road_pm25_road_emissions())
    
    road_pm25_road_impacts <- road_pm25_road_emissions()[, 1:88]
    
    road_pm25_road_impacts$`Car - Petrol - Euro 1` <- (road_pm25_road_impacts$`Car - Petrol - Euro 1` * car_petrol_IF_pm25)
    road_pm25_road_impacts$`Car - Petrol - Euro 2` <- (road_pm25_road_impacts$`Car - Petrol - Euro 2` * car_petrol_IF_pm25)
    road_pm25_road_impacts$`Car - Petrol - Euro 3` <- (road_pm25_road_impacts$`Car - Petrol - Euro 3` * car_petrol_IF_pm25)
    road_pm25_road_impacts$`Car - Petrol - Euro 4` <- (road_pm25_road_impacts$`Car - Petrol - Euro 4` * car_petrol_IF_pm25)
    road_pm25_road_impacts$`Car - Petrol - Euro 5a` <- (road_pm25_road_impacts$`Car - Petrol - Euro 5a` * car_petrol_IF_pm25)
    road_pm25_road_impacts$`Car - Petrol - Euro 5b` <- (road_pm25_road_impacts$`Car - Petrol - Euro 5b` * car_petrol_IF_pm25)
    road_pm25_road_impacts$`Car - Petrol - Euro 6b` <- (road_pm25_road_impacts$`Car - Petrol - Euro 6b` * car_petrol_IF_pm25)
    road_pm25_road_impacts$`Car - Petrol - Euro 6c` <- (road_pm25_road_impacts$`Car - Petrol - Euro 6c` * car_petrol_IF_pm25)
    road_pm25_road_impacts$`Car - Petrol - Euro 6d-Temp` <- (road_pm25_road_impacts$`Car - Petrol - Euro 6d-Temp` * car_petrol_IF_pm25)
    road_pm25_road_impacts$`Car - Petrol - Euro 6d` <- (road_pm25_road_impacts$`Car - Petrol - Euro 6d` * car_petrol_IF_pm25)
    road_pm25_road_impacts$`Car - Petrol - Euro 7` <- (road_pm25_road_impacts$`Car - Petrol - Euro 7` * car_petrol_IF_pm25)
    road_pm25_road_impacts$`Car - Diesel - Euro 1` <- (road_pm25_road_impacts$`Car - Diesel - Euro 1` * car_diesel_IF_pm25)
    road_pm25_road_impacts$`Car - Diesel - Euro 2` <- (road_pm25_road_impacts$`Car - Diesel - Euro 2` * car_diesel_IF_pm25)
    road_pm25_road_impacts$`Car - Diesel - Euro 3` <- (road_pm25_road_impacts$`Car - Diesel - Euro 3` * car_diesel_IF_pm25)
    road_pm25_road_impacts$`Car - Diesel - Euro 4` <- (road_pm25_road_impacts$`Car - Diesel - Euro 4` * car_diesel_IF_pm25)
    road_pm25_road_impacts$`Car - Diesel - Euro 5a` <- (road_pm25_road_impacts$`Car - Diesel - Euro 5a` * car_diesel_IF_pm25)
    road_pm25_road_impacts$`Car - Diesel - Euro 5b` <- (road_pm25_road_impacts$`Car - Diesel - Euro 5b` * car_diesel_IF_pm25)
    road_pm25_road_impacts$`Car - Diesel - Euro 6b` <- (road_pm25_road_impacts$`Car - Diesel - Euro 6b` * car_diesel_IF_pm25)
    road_pm25_road_impacts$`Car - Diesel - Euro 6c` <- (road_pm25_road_impacts$`Car - Diesel - Euro 6c` * car_diesel_IF_pm25)
    road_pm25_road_impacts$`Car - Diesel - Euro 6d-Temp` <- (road_pm25_road_impacts$`Car - Diesel - Euro 6d-Temp` * car_diesel_IF_pm25)
    road_pm25_road_impacts$`Car - Diesel - Euro 6d` <- (road_pm25_road_impacts$`Car - Diesel - Euro 6d` * car_diesel_IF_pm25)
    road_pm25_road_impacts$`Car - Diesel - Euro 7` <- (road_pm25_road_impacts$`Car - Diesel - Euro 7` * car_diesel_IF_pm25)
    road_pm25_road_impacts$`Car - PHEV (Petrol)` <- (road_pm25_road_impacts$`Car - PHEV (Petrol)` * car_petrol_IF_pm25)
    road_pm25_road_impacts$`Car - PHEV (Diesel)` <- (road_pm25_road_impacts$`Car - PHEV (Diesel)` * car_diesel_IF_pm25)
    road_pm25_road_impacts$`Car - Hydrogen Fuel Cell` <- (road_pm25_road_impacts$`Car - Hydrogen Fuel Cell` * car_diesel_IF_pm25)
    road_pm25_road_impacts$`Car - BEV` <- (road_pm25_road_impacts$`Car - BEV` * car_diesel_IF_pm25)
    road_pm25_road_impacts$`LGV - Petrol - Euro 1` <- (road_pm25_road_impacts$`LGV - Petrol - Euro 1` * lgv_IF_pm25)
    road_pm25_road_impacts$`LGV - Petrol - Euro 2` <- (road_pm25_road_impacts$`LGV - Petrol - Euro 2` * lgv_IF_pm25)
    road_pm25_road_impacts$`LGV - Petrol - Euro 3` <- (road_pm25_road_impacts$`LGV - Petrol - Euro 3` * lgv_IF_pm25)
    road_pm25_road_impacts$`LGV - Petrol - Euro 4` <- (road_pm25_road_impacts$`LGV - Petrol - Euro 4` * lgv_IF_pm25)
    road_pm25_road_impacts$`LGV - Petrol - Euro 5a` <- (road_pm25_road_impacts$`LGV - Petrol - Euro 5a` * lgv_IF_pm25)
    road_pm25_road_impacts$`LGV - Petrol - Euro 5b` <- (road_pm25_road_impacts$`LGV - Petrol - Euro 5b` * lgv_IF_pm25)
    road_pm25_road_impacts$`LGV - Petrol - Euro 6b` <- (road_pm25_road_impacts$`LGV - Petrol - Euro 6b` * lgv_IF_pm25)
    road_pm25_road_impacts$`LGV - Petrol - Euro 6c` <- (road_pm25_road_impacts$`LGV - Petrol - Euro 6c` * lgv_IF_pm25)
    road_pm25_road_impacts$`LGV - Petrol - Euro 6d-Temp` <- (road_pm25_road_impacts$`LGV - Petrol - Euro 6d-Temp` * lgv_IF_pm25)
    road_pm25_road_impacts$`LGV - Petrol - Euro 6d` <- (road_pm25_road_impacts$`LGV - Petrol - Euro 6d` * lgv_IF_pm25)
    road_pm25_road_impacts$`LGV - Petrol - Euro 7` <- (road_pm25_road_impacts$`LGV - Petrol - Euro 7` * lgv_IF_pm25)
    road_pm25_road_impacts$`LGV - Diesel - Euro 1` <- (road_pm25_road_impacts$`LGV - Diesel - Euro 1` * lgv_IF_pm25)
    road_pm25_road_impacts$`LGV - Diesel - Euro 2` <- (road_pm25_road_impacts$`LGV - Diesel - Euro 2` * lgv_IF_pm25)
    road_pm25_road_impacts$`LGV - Diesel - Euro 3` <- (road_pm25_road_impacts$`LGV - Diesel - Euro 3` * lgv_IF_pm25)
    road_pm25_road_impacts$`LGV - Diesel - Euro 4` <- (road_pm25_road_impacts$`LGV - Diesel - Euro 4` * lgv_IF_pm25)
    road_pm25_road_impacts$`LGV - Diesel - Euro 5a` <- (road_pm25_road_impacts$`LGV - Diesel - Euro 5a` * lgv_IF_pm25)
    road_pm25_road_impacts$`LGV - Diesel - Euro 5b` <- (road_pm25_road_impacts$`LGV - Diesel - Euro 5b` * lgv_IF_pm25)
    road_pm25_road_impacts$`LGV - Diesel - Euro 6b` <- (road_pm25_road_impacts$`LGV - Diesel - Euro 6b` * lgv_IF_pm25)
    road_pm25_road_impacts$`LGV - Diesel - Euro 6c` <- road_pm25_road_impacts$`LGV - Diesel - Euro 6c` * lgv_IF_pm25
    road_pm25_road_impacts$`LGV - Diesel - Euro 6d-Temp` <- (road_pm25_road_impacts$`LGV - Diesel - Euro 6d-Temp` * lgv_IF_pm25)
    road_pm25_road_impacts$`LGV - Diesel - Euro 6d` <- (road_pm25_road_impacts$`LGV - Diesel - Euro 6d` * lgv_IF_pm25)
    road_pm25_road_impacts$`LGV - Diesel - Euro 7` <- (road_pm25_road_impacts$`LGV - Diesel - Euro 7` * lgv_IF_pm25)
    road_pm25_road_impacts$`LGV - PHEV (Petrol)` <- (road_pm25_road_impacts$`LGV - PHEV (Petrol)` * lgv_IF_pm25)
    road_pm25_road_impacts$`LGV - PHEV (Diesel)` <- (road_pm25_road_impacts$`LGV - PHEV (Diesel)` * lgv_IF_pm25)
    road_pm25_road_impacts$`LGV - Hydrogen Fuel Cell` <- (road_pm25_road_impacts$`LGV - Hydrogen Fuel Cell` * lgv_IF_pm25)
    road_pm25_road_impacts$`LGV - BEV` <- (road_pm25_road_impacts$`LGV - BEV` * lgv_IF_pm25)
    road_pm25_road_impacts$`HGV - CNG - Euro 1` <- (road_pm25_road_impacts$`HGV - CNG - Euro 1` * hgv_IF_pm25)
    road_pm25_road_impacts$`HGV - CNG - Euro 2` <- (road_pm25_road_impacts$`HGV - CNG - Euro 2` * hgv_IF_pm25)
    road_pm25_road_impacts$`HGV - CNG - Euro 3` <- (road_pm25_road_impacts$`HGV - CNG - Euro 3` * hgv_IF_pm25)
    road_pm25_road_impacts$`HGV - CNG - EEV` <- (road_pm25_road_impacts$`HGV - CNG - EEV` * hgv_IF_pm25)
    road_pm25_road_impacts$`HGV - Diesel - Euro 1` <- (road_pm25_road_impacts$`HGV - Diesel - Euro 1` * hgv_IF_pm25)
    road_pm25_road_impacts$`HGV - Diesel - Euro 2` <- (road_pm25_road_impacts$`HGV - Diesel - Euro 2` * hgv_IF_pm25)
    road_pm25_road_impacts$`HGV - Diesel - Euro 3` <- (road_pm25_road_impacts$`HGV - Diesel - Euro 3` * hgv_IF_pm25)
    road_pm25_road_impacts$`HGV - Diesel - Euro 4` <- (road_pm25_road_impacts$`HGV - Diesel - Euro 4` * hgv_IF_pm25)
    road_pm25_road_impacts$`HGV - Diesel - Euro 5` <- (road_pm25_road_impacts$`HGV - Diesel - Euro 5` * hgv_IF_pm25)
    road_pm25_road_impacts$`HGV - Diesel - Euro 6` <- (road_pm25_road_impacts$`HGV - Diesel - Euro 6` * hgv_IF_pm25)
    road_pm25_road_impacts$`HGV - Diesel - Euro 7` <- (road_pm25_road_impacts$`HGV - Diesel - Euro 7` * hgv_IF_pm25)
    road_pm25_road_impacts$`HGV - PHEV (Diesel)` <- (road_pm25_road_impacts$`HGV - PHEV (Diesel)` * hgv_IF_pm25)
    road_pm25_road_impacts$`HGV - Hydrogen Fuel Cell` <- (road_pm25_road_impacts$`HGV - Hydrogen Fuel Cell` * hgv_IF_pm25)
    road_pm25_road_impacts$`HGV - BEV` <- (road_pm25_road_impacts$`HGV - BEV` * hgv_IF_pm25)
    road_pm25_road_impacts$`Bus - CNG - Euro 1` <- (road_pm25_road_impacts$`Bus - CNG - Euro 1` * bus_IF_pm25)
    road_pm25_road_impacts$`Bus - CNG - Euro 2` <- (road_pm25_road_impacts$`Bus - CNG - Euro 2` * bus_IF_pm25)
    road_pm25_road_impacts$`Bus - CNG - Euro 3` <- (road_pm25_road_impacts$`Bus - CNG - Euro 3` * bus_IF_pm25)
    road_pm25_road_impacts$`Bus - CNG - EEV` <- (road_pm25_road_impacts$`Bus - CNG - EEV` * bus_IF_pm25)
    road_pm25_road_impacts$`Bus - Diesel - Euro 1` <- (road_pm25_road_impacts$`Bus - Diesel - Euro 1` * bus_IF_pm25)
    road_pm25_road_impacts$`Bus - Diesel - Euro 2` <- (road_pm25_road_impacts$`Bus - Diesel - Euro 2` * bus_IF_pm25)
    road_pm25_road_impacts$`Bus - Diesel - Euro 3` <- (road_pm25_road_impacts$`Bus - Diesel - Euro 3` * bus_IF_pm25)
    road_pm25_road_impacts$`Bus - Diesel - Euro 4` <- (road_pm25_road_impacts$`Bus - Diesel - Euro 4` * bus_IF_pm25)
    road_pm25_road_impacts$`Bus - Diesel - Euro 5` <- (road_pm25_road_impacts$`Bus - Diesel - Euro 5` * bus_IF_pm25)
    road_pm25_road_impacts$`Bus - Diesel - Euro 6` <- (road_pm25_road_impacts$`Bus - Diesel - Euro 6` * bus_IF_pm25)
    road_pm25_road_impacts$`Bus - Diesel - Euro 7` <- (road_pm25_road_impacts$`Bus - Diesel - Euro 7` * bus_IF_pm25)
    road_pm25_road_impacts$`Bus - PHEV (Diesel)` <- (road_pm25_road_impacts$`Bus - PHEV (Diesel)` * bus_IF_pm25)
    road_pm25_road_impacts$`Bus - Hydrogen Fuel Cell` <- (road_pm25_road_impacts$`Bus - Hydrogen Fuel Cell` * bus_IF_pm25)
    road_pm25_road_impacts$`Bus - BEV` <- (road_pm25_road_impacts$`Bus - BEV` * bus_IF_pm25)
    road_pm25_road_impacts$`Motorcycle - Petrol - Euro 1` <- (road_pm25_road_impacts$`Motorcycle - Petrol - Euro 1` * car_petrol_IF_pm25)
    road_pm25_road_impacts$`Motorcycle - Petrol - Euro 2` <- (road_pm25_road_impacts$`Motorcycle - Petrol - Euro 2` * car_petrol_IF_pm25)
    road_pm25_road_impacts$`Motorcycle - Petrol - Euro 3` <- (road_pm25_road_impacts$`Motorcycle - Petrol - Euro 3` * car_petrol_IF_pm25)
    road_pm25_road_impacts$`Motorcycle - Petrol - Euro 4` <- (road_pm25_road_impacts$`Motorcycle - Petrol - Euro 4` * car_petrol_IF_pm25)
    road_pm25_road_impacts$`Motorcycle - Petrol - Euro 5` <- (road_pm25_road_impacts$`Motorcycle - Petrol - Euro 5` * car_petrol_IF_pm25)
    road_pm25_road_impacts$`Motorcycle - Hydrogen Fuel Cell` <- (road_pm25_road_impacts$`Motorcycle - Hydrogen Fuel Cell` * car_petrol_IF_pm25)
    road_pm25_road_impacts$`Motorcycle - Electric` <- (road_pm25_road_impacts$`Motorcycle - Electric` * car_petrol_IF_pm25)
    road_pm25_road_impacts$`Total Impacts` <-  rowSums(road_pm25_road_impacts[, 2:88], na.rm = TRUE)
    
    return(road_pm25_road_impacts)
    
  })
  
  ##################################################################################################################################################################
  
  # Road Transport sNOx Impacts - applying UKIAM road transport impact factors for NOx contributing to overall SIA formation
  
  road_snox_impacts <- reactive({
    
    req(road_nox_emissions())
    
    road_snox_impacts <- road_nox_emissions()[, 1:88]
    
    road_snox_impacts$`Car - Petrol - Euro 1` <- (road_snox_impacts$`Car - Petrol - Euro 1` * car_petrol_IF_snox)
    road_snox_impacts$`Car - Petrol - Euro 2` <- (road_snox_impacts$`Car - Petrol - Euro 2` * car_petrol_IF_snox)
    road_snox_impacts$`Car - Petrol - Euro 3` <- (road_snox_impacts$`Car - Petrol - Euro 3` * car_petrol_IF_snox)
    road_snox_impacts$`Car - Petrol - Euro 4` <- (road_snox_impacts$`Car - Petrol - Euro 4` * car_petrol_IF_snox)
    road_snox_impacts$`Car - Petrol - Euro 5a` <- (road_snox_impacts$`Car - Petrol - Euro 5a` * car_petrol_IF_snox)
    road_snox_impacts$`Car - Petrol - Euro 5b` <- (road_snox_impacts$`Car - Petrol - Euro 5b` * car_petrol_IF_snox)
    road_snox_impacts$`Car - Petrol - Euro 6b` <- (road_snox_impacts$`Car - Petrol - Euro 6b` * car_petrol_IF_snox)
    road_snox_impacts$`Car - Petrol - Euro 6c` <- (road_snox_impacts$`Car - Petrol - Euro 6c` * car_petrol_IF_snox)
    road_snox_impacts$`Car - Petrol - Euro 6d-Temp` <- (road_snox_impacts$`Car - Petrol - Euro 6d-Temp` * car_petrol_IF_snox)
    road_snox_impacts$`Car - Petrol - Euro 6d` <- (road_snox_impacts$`Car - Petrol - Euro 6d` * car_petrol_IF_snox)
    road_snox_impacts$`Car - Petrol - Euro 7` <- (road_snox_impacts$`Car - Petrol - Euro 7` * car_petrol_IF_snox)
    road_snox_impacts$`Car - Diesel - Euro 1` <- (road_snox_impacts$`Car - Diesel - Euro 1` * car_diesel_IF_snox)
    road_snox_impacts$`Car - Diesel - Euro 2` <- (road_snox_impacts$`Car - Diesel - Euro 2` * car_diesel_IF_snox)
    road_snox_impacts$`Car - Diesel - Euro 3` <- (road_snox_impacts$`Car - Diesel - Euro 3` * car_diesel_IF_snox)
    road_snox_impacts$`Car - Diesel - Euro 4` <- (road_snox_impacts$`Car - Diesel - Euro 4` * car_diesel_IF_snox)
    road_snox_impacts$`Car - Diesel - Euro 5a` <- (road_snox_impacts$`Car - Diesel - Euro 5a` * car_diesel_IF_snox)
    road_snox_impacts$`Car - Diesel - Euro 5b` <- (road_snox_impacts$`Car - Diesel - Euro 5b` * car_diesel_IF_snox)
    road_snox_impacts$`Car - Diesel - Euro 6b` <- (road_snox_impacts$`Car - Diesel - Euro 6b` * car_diesel_IF_snox)
    road_snox_impacts$`Car - Diesel - Euro 6c` <- (road_snox_impacts$`Car - Diesel - Euro 6c` * car_diesel_IF_snox)
    road_snox_impacts$`Car - Diesel - Euro 6d-Temp` <- (road_snox_impacts$`Car - Diesel - Euro 6d-Temp` * car_diesel_IF_snox)
    road_snox_impacts$`Car - Diesel - Euro 6d` <- (road_snox_impacts$`Car - Diesel - Euro 6d` * car_diesel_IF_snox)
    road_snox_impacts$`Car - Diesel - Euro 7` <- (road_snox_impacts$`Car - Diesel - Euro 7` * car_diesel_IF_snox)
    road_snox_impacts$`Car - PHEV (Petrol)` <- (road_snox_impacts$`Car - PHEV (Petrol)` * car_petrol_IF_snox)
    road_snox_impacts$`Car - PHEV (Diesel)` <- (road_snox_impacts$`Car - PHEV (Diesel)` * car_diesel_IF_snox)
    road_snox_impacts$`Car - Hydrogen Fuel Cell` <- (road_snox_impacts$`Car - Hydrogen Fuel Cell` * car_diesel_IF_snox)
    road_snox_impacts$`Car - BEV` <- (road_snox_impacts$`Car - BEV` * car_diesel_IF_snox)
    road_snox_impacts$`LGV - Petrol - Euro 1` <- (road_snox_impacts$`LGV - Petrol - Euro 1` * lgv_IF_snox)
    road_snox_impacts$`LGV - Petrol - Euro 2` <- (road_snox_impacts$`LGV - Petrol - Euro 2` * lgv_IF_snox)
    road_snox_impacts$`LGV - Petrol - Euro 3` <- (road_snox_impacts$`LGV - Petrol - Euro 3` * lgv_IF_snox)
    road_snox_impacts$`LGV - Petrol - Euro 4` <- (road_snox_impacts$`LGV - Petrol - Euro 4` * lgv_IF_snox)
    road_snox_impacts$`LGV - Petrol - Euro 5a` <- (road_snox_impacts$`LGV - Petrol - Euro 5a` * lgv_IF_snox)
    road_snox_impacts$`LGV - Petrol - Euro 5b` <- (road_snox_impacts$`LGV - Petrol - Euro 5b` * lgv_IF_snox)
    road_snox_impacts$`LGV - Petrol - Euro 6b` <- (road_snox_impacts$`LGV - Petrol - Euro 6b` * lgv_IF_snox)
    road_snox_impacts$`LGV - Petrol - Euro 6c` <- (road_snox_impacts$`LGV - Petrol - Euro 6c` * lgv_IF_snox)
    road_snox_impacts$`LGV - Petrol - Euro 6d-Temp` <- (road_snox_impacts$`LGV - Petrol - Euro 6d-Temp` * lgv_IF_snox)
    road_snox_impacts$`LGV - Petrol - Euro 6d` <- (road_snox_impacts$`LGV - Petrol - Euro 6d` * lgv_IF_snox)
    road_snox_impacts$`LGV - Petrol - Euro 7` <- (road_snox_impacts$`LGV - Petrol - Euro 7` * lgv_IF_snox)
    road_snox_impacts$`LGV - Diesel - Euro 1` <- (road_snox_impacts$`LGV - Diesel - Euro 1` * lgv_IF_snox)
    road_snox_impacts$`LGV - Diesel - Euro 2` <- (road_snox_impacts$`LGV - Diesel - Euro 2` * lgv_IF_snox)
    road_snox_impacts$`LGV - Diesel - Euro 3` <- (road_snox_impacts$`LGV - Diesel - Euro 3` * lgv_IF_snox)
    road_snox_impacts$`LGV - Diesel - Euro 4` <- (road_snox_impacts$`LGV - Diesel - Euro 4` * lgv_IF_snox)
    road_snox_impacts$`LGV - Diesel - Euro 5a` <- (road_snox_impacts$`LGV - Diesel - Euro 5a` * lgv_IF_snox)
    road_snox_impacts$`LGV - Diesel - Euro 5b` <- (road_snox_impacts$`LGV - Diesel - Euro 5b` * lgv_IF_snox)
    road_snox_impacts$`LGV - Diesel - Euro 6b` <- (road_snox_impacts$`LGV - Diesel - Euro 6b` * lgv_IF_snox)
    road_snox_impacts$`LGV - Diesel - Euro 6c` <- road_snox_impacts$`LGV - Diesel - Euro 6c` * lgv_IF_snox
    road_snox_impacts$`LGV - Diesel - Euro 6d-Temp` <- (road_snox_impacts$`LGV - Diesel - Euro 6d-Temp` * lgv_IF_snox)
    road_snox_impacts$`LGV - Diesel - Euro 6d` <- (road_snox_impacts$`LGV - Diesel - Euro 6d` * lgv_IF_snox)
    road_snox_impacts$`LGV - Diesel - Euro 7` <- (road_snox_impacts$`LGV - Diesel - Euro 7` * lgv_IF_snox)
    road_snox_impacts$`LGV - PHEV (Petrol)` <- (road_snox_impacts$`LGV - PHEV (Petrol)` * lgv_IF_snox)
    road_snox_impacts$`LGV - PHEV (Diesel)` <- (road_snox_impacts$`LGV - PHEV (Diesel)` * lgv_IF_snox)
    road_snox_impacts$`LGV - Hydrogen Fuel Cell` <- (road_snox_impacts$`LGV - Hydrogen Fuel Cell` * lgv_IF_snox)
    road_snox_impacts$`LGV - BEV` <- (road_snox_impacts$`LGV - BEV` * lgv_IF_snox)
    road_snox_impacts$`HGV - CNG - Euro 1` <- (road_snox_impacts$`HGV - CNG - Euro 1` * hgv_IF_snox)
    road_snox_impacts$`HGV - CNG - Euro 2` <- (road_snox_impacts$`HGV - CNG - Euro 2` * hgv_IF_snox)
    road_snox_impacts$`HGV - CNG - Euro 3` <- (road_snox_impacts$`HGV - CNG - Euro 3` * hgv_IF_snox)
    road_snox_impacts$`HGV - CNG - EEV` <- (road_snox_impacts$`HGV - CNG - EEV` * hgv_IF_snox)
    road_snox_impacts$`HGV - Diesel - Euro 1` <- (road_snox_impacts$`HGV - Diesel - Euro 1` * hgv_IF_snox)
    road_snox_impacts$`HGV - Diesel - Euro 2` <- (road_snox_impacts$`HGV - Diesel - Euro 2` * hgv_IF_snox)
    road_snox_impacts$`HGV - Diesel - Euro 3` <- (road_snox_impacts$`HGV - Diesel - Euro 3` * hgv_IF_snox)
    road_snox_impacts$`HGV - Diesel - Euro 4` <- (road_snox_impacts$`HGV - Diesel - Euro 4` * hgv_IF_snox)
    road_snox_impacts$`HGV - Diesel - Euro 5` <- (road_snox_impacts$`HGV - Diesel - Euro 5` * hgv_IF_snox)
    road_snox_impacts$`HGV - Diesel - Euro 6` <- (road_snox_impacts$`HGV - Diesel - Euro 6` * hgv_IF_snox)
    road_snox_impacts$`HGV - Diesel - Euro 7` <- (road_snox_impacts$`HGV - Diesel - Euro 7` * hgv_IF_snox)
    road_snox_impacts$`HGV - PHEV (Diesel)` <- (road_snox_impacts$`HGV - PHEV (Diesel)` * hgv_IF_snox)
    road_snox_impacts$`HGV - Hydrogen Fuel Cell` <- (road_snox_impacts$`HGV - Hydrogen Fuel Cell` * hgv_IF_snox)
    road_snox_impacts$`HGV - BEV` <- (road_snox_impacts$`HGV - BEV` * hgv_IF_snox)
    road_snox_impacts$`Bus - CNG - Euro 1` <- (road_snox_impacts$`Bus - CNG - Euro 1` * bus_IF_snox)
    road_snox_impacts$`Bus - CNG - Euro 2` <- (road_snox_impacts$`Bus - CNG - Euro 2` * bus_IF_snox)
    road_snox_impacts$`Bus - CNG - Euro 3` <- (road_snox_impacts$`Bus - CNG - Euro 3` * bus_IF_snox)
    road_snox_impacts$`Bus - CNG - EEV` <- (road_snox_impacts$`Bus - CNG - EEV` * bus_IF_snox)
    road_snox_impacts$`Bus - Diesel - Euro 1` <- (road_snox_impacts$`Bus - Diesel - Euro 1` * bus_IF_snox)
    road_snox_impacts$`Bus - Diesel - Euro 2` <- (road_snox_impacts$`Bus - Diesel - Euro 2` * bus_IF_snox)
    road_snox_impacts$`Bus - Diesel - Euro 3` <- (road_snox_impacts$`Bus - Diesel - Euro 3` * bus_IF_snox)
    road_snox_impacts$`Bus - Diesel - Euro 4` <- (road_snox_impacts$`Bus - Diesel - Euro 4` * bus_IF_snox)
    road_snox_impacts$`Bus - Diesel - Euro 5` <- (road_snox_impacts$`Bus - Diesel - Euro 5` * bus_IF_snox)
    road_snox_impacts$`Bus - Diesel - Euro 6` <- (road_snox_impacts$`Bus - Diesel - Euro 6` * bus_IF_snox)
    road_snox_impacts$`Bus - Diesel - Euro 7` <- (road_snox_impacts$`Bus - Diesel - Euro 7` * bus_IF_snox)
    road_snox_impacts$`Bus - PHEV (Diesel)` <- (road_snox_impacts$`Bus - PHEV (Diesel)` * bus_IF_snox)
    road_snox_impacts$`Bus - Hydrogen Fuel Cell` <- (road_snox_impacts$`Bus - Hydrogen Fuel Cell` * bus_IF_snox)
    road_snox_impacts$`Bus - BEV` <- (road_snox_impacts$`Bus - BEV` * bus_IF_snox)
    road_snox_impacts$`Motorcycle - Petrol - Euro 1` <- (road_snox_impacts$`Motorcycle - Petrol - Euro 1` * car_petrol_IF_snox)
    road_snox_impacts$`Motorcycle - Petrol - Euro 2` <- (road_snox_impacts$`Motorcycle - Petrol - Euro 2` * car_petrol_IF_snox)
    road_snox_impacts$`Motorcycle - Petrol - Euro 3` <- (road_snox_impacts$`Motorcycle - Petrol - Euro 3` * car_petrol_IF_snox)
    road_snox_impacts$`Motorcycle - Petrol - Euro 4` <- (road_snox_impacts$`Motorcycle - Petrol - Euro 4` * car_petrol_IF_snox)
    road_snox_impacts$`Motorcycle - Petrol - Euro 5` <- (road_snox_impacts$`Motorcycle - Petrol - Euro 5` * car_petrol_IF_snox)
    road_snox_impacts$`Motorcycle - Hydrogen Fuel Cell` <- (road_snox_impacts$`Motorcycle - Hydrogen Fuel Cell` * car_petrol_IF_snox)
    road_snox_impacts$`Motorcycle - Electric` <- (road_snox_impacts$`Motorcycle - Electric` * car_petrol_IF_snox)
    road_snox_impacts$`Total Impacts` <-  rowSums(road_snox_impacts[, 2:88], na.rm = TRUE)
    
    return(road_snox_impacts)
    
  })
  
  ##########################################################################################################################################################
  
  # Road Transport SO2 Emissions and Impacts
  
  # Road Transport SO2 Emissions - /1000000000 to get emissions in kt
  
  road_so2_emissions <- reactive({
    
    req(road_data())
    
    road_so2_emissions <- road_data()[, 1:88]
    
    road_so2_emissions$`Car - Petrol - Euro 1` <- (road_so2_emissions$`Car - Petrol - Euro 1` * car_petrol_euro_1_so2)/1000000000
    road_so2_emissions$`Car - Petrol - Euro 2` <- (road_so2_emissions$`Car - Petrol - Euro 2` * car_petrol_euro_2_so2)/1000000000
    road_so2_emissions$`Car - Petrol - Euro 3` <- (road_so2_emissions$`Car - Petrol - Euro 3` * car_petrol_euro_3_so2)/1000000000
    road_so2_emissions$`Car - Petrol - Euro 4` <- (road_so2_emissions$`Car - Petrol - Euro 4` * car_petrol_euro_4_so2)/1000000000
    road_so2_emissions$`Car - Petrol - Euro 5a` <- (road_so2_emissions$`Car - Petrol - Euro 5a` * car_petrol_euro_5a_so2)/1000000000
    road_so2_emissions$`Car - Petrol - Euro 5b` <- (road_so2_emissions$`Car - Petrol - Euro 5b` * car_petrol_euro_5a_so2)/1000000000
    road_so2_emissions$`Car - Petrol - Euro 6b` <- (road_so2_emissions$`Car - Petrol - Euro 6b` * car_petrol_euro_6b_so2)/1000000000
    road_so2_emissions$`Car - Petrol - Euro 6c` <- (road_so2_emissions$`Car - Petrol - Euro 6c` * car_petrol_euro_6c_so2)/1000000000
    road_so2_emissions$`Car - Petrol - Euro 6d-Temp` <- (road_so2_emissions$`Car - Petrol - Euro 6d-Temp` * car_petrol_euro_6dTemp_so2)/1000000000
    road_so2_emissions$`Car - Petrol - Euro 6d` <- (road_so2_emissions$`Car - Petrol - Euro 6d` * car_petrol_euro_6d_so2)/1000000000
    road_so2_emissions$`Car - Petrol - Euro 7` <- (road_so2_emissions$`Car - Petrol - Euro 7` * car_petrol_euro_7_so2)/1000000000
    road_so2_emissions$`Car - Diesel - Euro 1` <- (road_so2_emissions$`Car - Diesel - Euro 1` * car_diesel_euro_1_so2)/1000000000
    road_so2_emissions$`Car - Diesel - Euro 2` <- (road_so2_emissions$`Car - Diesel - Euro 2` * car_diesel_euro_2_so2)/1000000000
    road_so2_emissions$`Car - Diesel - Euro 3` <- (road_so2_emissions$`Car - Diesel - Euro 3` * car_diesel_euro_3_so2)/1000000000
    road_so2_emissions$`Car - Diesel - Euro 4` <- (road_so2_emissions$`Car - Diesel - Euro 4` * car_diesel_euro_4_so2)/1000000000
    road_so2_emissions$`Car - Diesel - Euro 5a` <- (road_so2_emissions$`Car - Diesel - Euro 5a` * car_diesel_euro_5a_so2)/1000000000
    road_so2_emissions$`Car - Diesel - Euro 5b` <- (road_so2_emissions$`Car - Diesel - Euro 5b` * car_diesel_euro_5b_so2)/1000000000
    road_so2_emissions$`Car - Diesel - Euro 6b` <- (road_so2_emissions$`Car - Diesel - Euro 6b` * car_diesel_euro_6b_so2)/1000000000
    road_so2_emissions$`Car - Diesel - Euro 6c` <- (road_so2_emissions$`Car - Diesel - Euro 6c` * car_diesel_euro_6c_so2)/1000000000
    road_so2_emissions$`Car - Diesel - Euro 6d-Temp` <- (road_so2_emissions$`Car - Diesel - Euro 6d-Temp` * car_diesel_euro_6dTemp_so2)/1000000000
    road_so2_emissions$`Car - Diesel - Euro 6d` <- (road_so2_emissions$`Car - Diesel - Euro 6d` * car_diesel_euro_6d_so2)/1000000000
    road_so2_emissions$`Car - Diesel - Euro 7` <- (road_so2_emissions$`Car - Diesel - Euro 7` * car_diesel_euro_7_so2)/1000000000
    road_so2_emissions$`Car - PHEV (Petrol)` <- (road_so2_emissions$`Car - PHEV (Petrol)` * car_phev_petrol_so2 * car_petrol_phev_utilisation_factor)/1000000000
    road_so2_emissions$`Car - PHEV (Diesel)` <- (road_so2_emissions$`Car - PHEV (Diesel)` * car_phev_diesel_so2 * car_diesel_phev_utilisation_factor)/1000000000
    road_so2_emissions$`Car - Hydrogen Fuel Cell` <- (road_so2_emissions$`Car - Hydrogen Fuel Cell` * car_fuelcell_so2)/1000000000
    road_so2_emissions$`Car - BEV` <- (road_so2_emissions$`Car - BEV` * car_bev_so2)/1000000000
    road_so2_emissions$`LGV - Petrol - Euro 1` <- (road_so2_emissions$`LGV - Petrol - Euro 1` * lgv_petrol_euro_1_so2)/1000000000
    road_so2_emissions$`LGV - Petrol - Euro 2` <- (road_so2_emissions$`LGV - Petrol - Euro 2` * lgv_petrol_euro_2_so2)/1000000000
    road_so2_emissions$`LGV - Petrol - Euro 3` <- (road_so2_emissions$`LGV - Petrol - Euro 3` * lgv_petrol_euro_3_so2)/1000000000
    road_so2_emissions$`LGV - Petrol - Euro 4` <- (road_so2_emissions$`LGV - Petrol - Euro 4` * lgv_petrol_euro_4_so2)/1000000000
    road_so2_emissions$`LGV - Petrol - Euro 5a` <- (road_so2_emissions$`LGV - Petrol - Euro 5a` * lgv_petrol_euro_5a_so2)/1000000000
    road_so2_emissions$`LGV - Petrol - Euro 5b` <- (road_so2_emissions$`LGV - Petrol - Euro 5b` * lgv_petrol_euro_5a_so2)/1000000000
    road_so2_emissions$`LGV - Petrol - Euro 6b` <- (road_so2_emissions$`LGV - Petrol - Euro 6b` * lgv_petrol_euro_6b_so2)/1000000000
    road_so2_emissions$`LGV - Petrol - Euro 6c` <- (road_so2_emissions$`LGV - Petrol - Euro 6c` * lgv_petrol_euro_6c_so2)/1000000000
    road_so2_emissions$`LGV - Petrol - Euro 6d-Temp` <- (road_so2_emissions$`LGV - Petrol - Euro 6d-Temp` * lgv_petrol_euro_6dTemp_so2)/1000000000
    road_so2_emissions$`LGV - Petrol - Euro 6d` <- (road_so2_emissions$`LGV - Petrol - Euro 6d` * lgv_petrol_euro_6d_so2)/1000000000
    road_so2_emissions$`LGV - Petrol - Euro 7` <- (road_so2_emissions$`LGV - Petrol - Euro 7` * lgv_petrol_euro_7_so2)/1000000000
    road_so2_emissions$`LGV - Diesel - Euro 1` <- (road_so2_emissions$`LGV - Diesel - Euro 1` * lgv_diesel_euro_1_so2)/1000000000
    road_so2_emissions$`LGV - Diesel - Euro 2` <- (road_so2_emissions$`LGV - Diesel - Euro 2` * lgv_diesel_euro_2_so2)/1000000000
    road_so2_emissions$`LGV - Diesel - Euro 3` <- (road_so2_emissions$`LGV - Diesel - Euro 3` * lgv_diesel_euro_3_so2)/1000000000
    road_so2_emissions$`LGV - Diesel - Euro 4` <- (road_so2_emissions$`LGV - Diesel - Euro 4` * lgv_diesel_euro_4_so2)/1000000000
    road_so2_emissions$`LGV - Diesel - Euro 5a` <- (road_so2_emissions$`LGV - Diesel - Euro 5a` * lgv_diesel_euro_5a_so2)/1000000000
    road_so2_emissions$`LGV - Diesel - Euro 5b` <- (road_so2_emissions$`LGV - Diesel - Euro 5b` * lgv_diesel_euro_5b_so2)/1000000000
    road_so2_emissions$`LGV - Diesel - Euro 6b` <- (road_so2_emissions$`LGV - Diesel - Euro 6b` * lgv_diesel_euro_6b_so2)/1000000000
    road_so2_emissions$`LGV - Diesel - Euro 6c` <- (road_so2_emissions$`LGV - Diesel - Euro 6c` * lgv_diesel_euro_6c_so2)/1000000000
    road_so2_emissions$`LGV - Diesel - Euro 6d-Temp` <- (road_so2_emissions$`LGV - Diesel - Euro 6d-Temp` * lgv_diesel_euro_6dTemp_so2)/1000000000
    road_so2_emissions$`LGV - Diesel - Euro 6d` <- (road_so2_emissions$`LGV - Diesel - Euro 6d` * lgv_diesel_euro_6d_so2)/1000000000
    road_so2_emissions$`LGV - Diesel - Euro 7` <- (road_so2_emissions$`LGV - Diesel - Euro 7` * lgv_diesel_euro_7_so2)/1000000000
    road_so2_emissions$`LGV - PHEV (Petrol)` <- (road_so2_emissions$`LGV - PHEV (Petrol)` * lgv_phev_petrol_so2 * lgv_phev_utilisation_factor)/1000000000
    road_so2_emissions$`LGV - PHEV (Diesel)` <- (road_so2_emissions$`LGV - PHEV (Diesel)` * lgv_phev_diesel_so2 * lgv_phev_utilisation_factor)/1000000000
    road_so2_emissions$`LGV - Hydrogen Fuel Cell` <- (road_so2_emissions$`LGV - Hydrogen Fuel Cell` * lgv_fuelcell_so2)/1000000000
    road_so2_emissions$`LGV - BEV` <- (road_so2_emissions$`LGV - BEV` * lgv_bev_so2)/1000000000
    road_so2_emissions$`HGV - CNG - Euro 1` <- (road_so2_emissions$`HGV - CNG - Euro 1` * hgv_cng_euro_1_so2)/1000000000
    road_so2_emissions$`HGV - CNG - Euro 2` <- (road_so2_emissions$`HGV - CNG - Euro 2` * hgv_cng_euro_2_so2)/1000000000
    road_so2_emissions$`HGV - CNG - Euro 3` <- (road_so2_emissions$`HGV - CNG - Euro 3` * hgv_cng_euro_3_so2)/1000000000
    road_so2_emissions$`HGV - CNG - EEV` <- (road_so2_emissions$`HGV - CNG - EEV` * hgv_cng_eev_so2)/1000000000
    road_so2_emissions$`HGV - Diesel - Euro 1` <- (road_so2_emissions$`HGV - Diesel - Euro 1` * hgv_diesel_euro_1_so2)/1000000000
    road_so2_emissions$`HGV - Diesel - Euro 2` <- (road_so2_emissions$`HGV - Diesel - Euro 2` * hgv_diesel_euro_2_so2)/1000000000
    road_so2_emissions$`HGV - Diesel - Euro 3` <- (road_so2_emissions$`HGV - Diesel - Euro 3` * hgv_diesel_euro_3_so2)/1000000000
    road_so2_emissions$`HGV - Diesel - Euro 4` <- (road_so2_emissions$`HGV - Diesel - Euro 4` * hgv_diesel_euro_4_so2)/1000000000
    road_so2_emissions$`HGV - Diesel - Euro 5` <- (road_so2_emissions$`HGV - Diesel - Euro 5` * hgv_diesel_euro_5_so2)/1000000000
    road_so2_emissions$`HGV - Diesel - Euro 6` <- (road_so2_emissions$`HGV - Diesel - Euro 6` * hgv_diesel_euro_6_so2)/1000000000
    road_so2_emissions$`HGV - Diesel - Euro 7` <- (road_so2_emissions$`HGV - Diesel - Euro 7` * hgv_diesel_euro_7_so2)/1000000000
    road_so2_emissions$`HGV - PHEV (Diesel)` <- (road_so2_emissions$`HGV - PHEV (Diesel)` * hgv_phev_diesel_so2 * lgv_phev_utilisation_factor)/1000000000
    road_so2_emissions$`HGV - Hydrogen Fuel Cell` <- (road_so2_emissions$`HGV - Hydrogen Fuel Cell` * hgv_fuelcell_so2)/1000000000
    road_so2_emissions$`HGV - BEV` <- (road_so2_emissions$`HGV - BEV` * hgv_bev_so2)/1000000000
    road_so2_emissions$`Bus - CNG - Euro 1` <- (road_so2_emissions$`Bus - CNG - Euro 1` * bus_cng_euro_1_so2)/1000000000
    road_so2_emissions$`Bus - CNG - Euro 2` <- (road_so2_emissions$`Bus - CNG - Euro 2` * bus_cng_euro_2_so2)/1000000000
    road_so2_emissions$`Bus - CNG - Euro 3` <- (road_so2_emissions$`Bus - CNG - Euro 3` * bus_cng_euro_3_so2)/1000000000
    road_so2_emissions$`Bus - CNG - EEV` <- (road_so2_emissions$`Bus - CNG - EEV` * bus_cng_eev_so2)/1000000000
    road_so2_emissions$`Bus - Diesel - Euro 1` <- (road_so2_emissions$`Bus - Diesel - Euro 1` * bus_diesel_euro_1_so2)/1000000000
    road_so2_emissions$`Bus - Diesel - Euro 2` <- (road_so2_emissions$`Bus - Diesel - Euro 2` * bus_diesel_euro_2_so2)/1000000000
    road_so2_emissions$`Bus - Diesel - Euro 3` <- (road_so2_emissions$`Bus - Diesel - Euro 3` * bus_diesel_euro_3_so2)/1000000000
    road_so2_emissions$`Bus - Diesel - Euro 4` <- (road_so2_emissions$`Bus - Diesel - Euro 4` * bus_diesel_euro_4_so2)/1000000000
    road_so2_emissions$`Bus - Diesel - Euro 5` <- (road_so2_emissions$`Bus - Diesel - Euro 5` * bus_diesel_euro_5_so2)/1000000000
    road_so2_emissions$`Bus - Diesel - Euro 6` <- (road_so2_emissions$`Bus - Diesel - Euro 6` * bus_diesel_euro_6_so2)/1000000000
    road_so2_emissions$`Bus - Diesel - Euro 7` <- (road_so2_emissions$`Bus - Diesel - Euro 7` * bus_diesel_euro_7_so2)/1000000000
    road_so2_emissions$`Bus - PHEV (Diesel)` <- (road_so2_emissions$`Bus - PHEV (Diesel)` * bus_phev_diesel_so2 * lgv_phev_utilisation_factor)/1000000000
    road_so2_emissions$`Bus - Hydrogen Fuel Cell` <- (road_so2_emissions$`Bus - Hydrogen Fuel Cell` * bus_fuelcell_so2)/1000000000
    road_so2_emissions$`Bus - BEV` <- (road_so2_emissions$`Bus - BEV` * bus_bev_so2)/1000000000
    road_so2_emissions$`Motorcycle - Petrol - Euro 1` <- (road_so2_emissions$`Motorcycle - Petrol - Euro 1` * motorcycle_petrol_euro_1_so2)/1000000000
    road_so2_emissions$`Motorcycle - Petrol - Euro 2` <- (road_so2_emissions$`Motorcycle - Petrol - Euro 2` * motorcycle_petrol_euro_2_so2)/1000000000
    road_so2_emissions$`Motorcycle - Petrol - Euro 3` <- (road_so2_emissions$`Motorcycle - Petrol - Euro 3` * motorcycle_petrol_euro_3_so2)/1000000000
    road_so2_emissions$`Motorcycle - Petrol - Euro 4` <- (road_so2_emissions$`Motorcycle - Petrol - Euro 4` * motorcycle_petrol_euro_4_so2)/1000000000
    road_so2_emissions$`Motorcycle - Petrol - Euro 5` <- (road_so2_emissions$`Motorcycle - Petrol - Euro 5` * motorcycle_petrol_euro_5_so2)/1000000000
    road_so2_emissions$`Motorcycle - Hydrogen Fuel Cell` <- (road_so2_emissions$`Motorcycle - Hydrogen Fuel Cell` * motorcycle_fuelcell_so2)/1000000000
    road_so2_emissions$`Motorcycle - Electric` <- (road_so2_emissions$`Motorcycle - Electric` * motorcycle_electric_so2)/1000000000
    road_so2_emissions$`Total Emissions` <-  rowSums(road_so2_emissions[, 2:88], na.rm = TRUE)
    
    return(road_so2_emissions)
    
  })
  
  
  # Road Transport NOx Impacts - applying UKIAM road transport impact factors
  
  road_so2_impacts <- reactive({
    
    req(road_so2_emissions())
    
    road_so2_impacts <- road_so2_emissions()[, 1:88]
    
    road_so2_impacts$`Car - Petrol - Euro 1` <- (road_so2_impacts$`Car - Petrol - Euro 1` * car_petrol_IF_so2)
    road_so2_impacts$`Car - Petrol - Euro 2` <- (road_so2_impacts$`Car - Petrol - Euro 2` * car_petrol_IF_so2)
    road_so2_impacts$`Car - Petrol - Euro 3` <- (road_so2_impacts$`Car - Petrol - Euro 3` * car_petrol_IF_so2)
    road_so2_impacts$`Car - Petrol - Euro 4` <- (road_so2_impacts$`Car - Petrol - Euro 4` * car_petrol_IF_so2)
    road_so2_impacts$`Car - Petrol - Euro 5a` <- (road_so2_impacts$`Car - Petrol - Euro 5a` * car_petrol_IF_so2)
    road_so2_impacts$`Car - Petrol - Euro 5b` <- (road_so2_impacts$`Car - Petrol - Euro 5b` * car_petrol_IF_so2)
    road_so2_impacts$`Car - Petrol - Euro 6b` <- (road_so2_impacts$`Car - Petrol - Euro 6b` * car_petrol_IF_so2)
    road_so2_impacts$`Car - Petrol - Euro 6c` <- (road_so2_impacts$`Car - Petrol - Euro 6c` * car_petrol_IF_so2)
    road_so2_impacts$`Car - Petrol - Euro 6d-Temp` <- (road_so2_impacts$`Car - Petrol - Euro 6d-Temp` * car_petrol_IF_so2)
    road_so2_impacts$`Car - Petrol - Euro 6d` <- (road_so2_impacts$`Car - Petrol - Euro 6d` * car_petrol_IF_so2)
    road_so2_impacts$`Car - Petrol - Euro 7` <- (road_so2_impacts$`Car - Petrol - Euro 7` * car_petrol_IF_so2)
    road_so2_impacts$`Car - Diesel - Euro 1` <- (road_so2_impacts$`Car - Diesel - Euro 1` * car_diesel_IF_so2)
    road_so2_impacts$`Car - Diesel - Euro 2` <- (road_so2_impacts$`Car - Diesel - Euro 2` * car_diesel_IF_so2)
    road_so2_impacts$`Car - Diesel - Euro 3` <- (road_so2_impacts$`Car - Diesel - Euro 3` * car_diesel_IF_so2)
    road_so2_impacts$`Car - Diesel - Euro 4` <- (road_so2_impacts$`Car - Diesel - Euro 4` * car_diesel_IF_so2)
    road_so2_impacts$`Car - Diesel - Euro 5a` <- (road_so2_impacts$`Car - Diesel - Euro 5a` * car_diesel_IF_so2)
    road_so2_impacts$`Car - Diesel - Euro 5b` <- (road_so2_impacts$`Car - Diesel - Euro 5b` * car_diesel_IF_so2)
    road_so2_impacts$`Car - Diesel - Euro 6b` <- (road_so2_impacts$`Car - Diesel - Euro 6b` * car_diesel_IF_so2)
    road_so2_impacts$`Car - Diesel - Euro 6c` <- (road_so2_impacts$`Car - Diesel - Euro 6c` * car_diesel_IF_so2)
    road_so2_impacts$`Car - Diesel - Euro 6d-Temp` <- (road_so2_impacts$`Car - Diesel - Euro 6d-Temp` * car_diesel_IF_so2)
    road_so2_impacts$`Car - Diesel - Euro 6d` <- (road_so2_impacts$`Car - Diesel - Euro 6d` * car_diesel_IF_so2)
    road_so2_impacts$`Car - Diesel - Euro 7` <- (road_so2_impacts$`Car - Diesel - Euro 7` * car_diesel_IF_so2)
    road_so2_impacts$`Car - PHEV (Petrol)` <- (road_so2_impacts$`Car - PHEV (Petrol)` * car_petrol_IF_so2)
    road_so2_impacts$`Car - PHEV (Diesel)` <- (road_so2_impacts$`Car - PHEV (Diesel)` * car_diesel_IF_so2)
    road_so2_impacts$`Car - Hydrogen Fuel Cell` <- (road_so2_impacts$`Car - Hydrogen Fuel Cell` * car_diesel_IF_so2)
    road_so2_impacts$`Car - BEV` <- (road_so2_impacts$`Car - BEV` * car_diesel_IF_so2)
    road_so2_impacts$`LGV - Petrol - Euro 1` <- (road_so2_impacts$`LGV - Petrol - Euro 1` * lgv_IF_so2)
    road_so2_impacts$`LGV - Petrol - Euro 2` <- (road_so2_impacts$`LGV - Petrol - Euro 2` * lgv_IF_so2)
    road_so2_impacts$`LGV - Petrol - Euro 3` <- (road_so2_impacts$`LGV - Petrol - Euro 3` * lgv_IF_so2)
    road_so2_impacts$`LGV - Petrol - Euro 4` <- (road_so2_impacts$`LGV - Petrol - Euro 4` * lgv_IF_so2)
    road_so2_impacts$`LGV - Petrol - Euro 5a` <- (road_so2_impacts$`LGV - Petrol - Euro 5a` * lgv_IF_so2)
    road_so2_impacts$`LGV - Petrol - Euro 5b` <- (road_so2_impacts$`LGV - Petrol - Euro 5b` * lgv_IF_so2)
    road_so2_impacts$`LGV - Petrol - Euro 6b` <- (road_so2_impacts$`LGV - Petrol - Euro 6b` * lgv_IF_so2)
    road_so2_impacts$`LGV - Petrol - Euro 6c` <- (road_so2_impacts$`LGV - Petrol - Euro 6c` * lgv_IF_so2)
    road_so2_impacts$`LGV - Petrol - Euro 6d-Temp` <- (road_so2_impacts$`LGV - Petrol - Euro 6d-Temp` * lgv_IF_so2)
    road_so2_impacts$`LGV - Petrol - Euro 6d` <- (road_so2_impacts$`LGV - Petrol - Euro 6d` * lgv_IF_so2)
    road_so2_impacts$`LGV - Petrol - Euro 7` <- (road_so2_impacts$`LGV - Petrol - Euro 7` * lgv_IF_so2)
    road_so2_impacts$`LGV - Diesel - Euro 1` <- (road_so2_impacts$`LGV - Diesel - Euro 1` * lgv_IF_so2)
    road_so2_impacts$`LGV - Diesel - Euro 2` <- (road_so2_impacts$`LGV - Diesel - Euro 2` * lgv_IF_so2)
    road_so2_impacts$`LGV - Diesel - Euro 3` <- (road_so2_impacts$`LGV - Diesel - Euro 3` * lgv_IF_so2)
    road_so2_impacts$`LGV - Diesel - Euro 4` <- (road_so2_impacts$`LGV - Diesel - Euro 4` * lgv_IF_so2)
    road_so2_impacts$`LGV - Diesel - Euro 5a` <- (road_so2_impacts$`LGV - Diesel - Euro 5a` * lgv_IF_so2)
    road_so2_impacts$`LGV - Diesel - Euro 5b` <- (road_so2_impacts$`LGV - Diesel - Euro 5b` * lgv_IF_so2)
    road_so2_impacts$`LGV - Diesel - Euro 6b` <- (road_so2_impacts$`LGV - Diesel - Euro 6b` * lgv_IF_so2)
    road_so2_impacts$`LGV - Diesel - Euro 6c` <- road_so2_impacts$`LGV - Diesel - Euro 6c` * lgv_IF_so2
    road_so2_impacts$`LGV - Diesel - Euro 6d-Temp` <- (road_so2_impacts$`LGV - Diesel - Euro 6d-Temp` * lgv_IF_so2)
    road_so2_impacts$`LGV - Diesel - Euro 6d` <- (road_so2_impacts$`LGV - Diesel - Euro 6d` * lgv_IF_so2)
    road_so2_impacts$`LGV - Diesel - Euro 7` <- (road_so2_impacts$`LGV - Diesel - Euro 7` * lgv_IF_so2)
    road_so2_impacts$`LGV - PHEV (Petrol)` <- (road_so2_impacts$`LGV - PHEV (Petrol)` * lgv_IF_so2)
    road_so2_impacts$`LGV - PHEV (Diesel)` <- (road_so2_impacts$`LGV - PHEV (Diesel)` * lgv_IF_so2)
    road_so2_impacts$`LGV - Hydrogen Fuel Cell` <- (road_so2_impacts$`LGV - Hydrogen Fuel Cell` * lgv_IF_so2)
    road_so2_impacts$`LGV - BEV` <- (road_so2_impacts$`LGV - BEV` * lgv_IF_so2)
    road_so2_impacts$`HGV - CNG - Euro 1` <- (road_so2_impacts$`HGV - CNG - Euro 1` * hgv_IF_so2)
    road_so2_impacts$`HGV - CNG - Euro 2` <- (road_so2_impacts$`HGV - CNG - Euro 2` * hgv_IF_so2)
    road_so2_impacts$`HGV - CNG - Euro 3` <- (road_so2_impacts$`HGV - CNG - Euro 3` * hgv_IF_so2)
    road_so2_impacts$`HGV - CNG - EEV` <- (road_so2_impacts$`HGV - CNG - EEV` * hgv_IF_so2)
    road_so2_impacts$`HGV - Diesel - Euro 1` <- (road_so2_impacts$`HGV - Diesel - Euro 1` * hgv_IF_so2)
    road_so2_impacts$`HGV - Diesel - Euro 2` <- (road_so2_impacts$`HGV - Diesel - Euro 2` * hgv_IF_so2)
    road_so2_impacts$`HGV - Diesel - Euro 3` <- (road_so2_impacts$`HGV - Diesel - Euro 3` * hgv_IF_so2)
    road_so2_impacts$`HGV - Diesel - Euro 4` <- (road_so2_impacts$`HGV - Diesel - Euro 4` * hgv_IF_so2)
    road_so2_impacts$`HGV - Diesel - Euro 5` <- (road_so2_impacts$`HGV - Diesel - Euro 5` * hgv_IF_so2)
    road_so2_impacts$`HGV - Diesel - Euro 6` <- (road_so2_impacts$`HGV - Diesel - Euro 6` * hgv_IF_so2)
    road_so2_impacts$`HGV - Diesel - Euro 7` <- (road_so2_impacts$`HGV - Diesel - Euro 7` * hgv_IF_so2)
    road_so2_impacts$`HGV - PHEV (Diesel)` <- (road_so2_impacts$`HGV - PHEV (Diesel)` * hgv_IF_so2)
    road_so2_impacts$`HGV - Hydrogen Fuel Cell` <- (road_so2_impacts$`HGV - Hydrogen Fuel Cell` * hgv_IF_so2)
    road_so2_impacts$`HGV - BEV` <- (road_so2_impacts$`HGV - BEV` * hgv_IF_so2)
    road_so2_impacts$`Bus - CNG - Euro 1` <- (road_so2_impacts$`Bus - CNG - Euro 1` * bus_IF_so2)
    road_so2_impacts$`Bus - CNG - Euro 2` <- (road_so2_impacts$`Bus - CNG - Euro 2` * bus_IF_so2)
    road_so2_impacts$`Bus - CNG - Euro 3` <- (road_so2_impacts$`Bus - CNG - Euro 3` * bus_IF_so2)
    road_so2_impacts$`Bus - CNG - EEV` <- (road_so2_impacts$`Bus - CNG - EEV` * bus_IF_so2)
    road_so2_impacts$`Bus - Diesel - Euro 1` <- (road_so2_impacts$`Bus - Diesel - Euro 1` * bus_IF_so2)
    road_so2_impacts$`Bus - Diesel - Euro 2` <- (road_so2_impacts$`Bus - Diesel - Euro 2` * bus_IF_so2)
    road_so2_impacts$`Bus - Diesel - Euro 3` <- (road_so2_impacts$`Bus - Diesel - Euro 3` * bus_IF_so2)
    road_so2_impacts$`Bus - Diesel - Euro 4` <- (road_so2_impacts$`Bus - Diesel - Euro 4` * bus_IF_so2)
    road_so2_impacts$`Bus - Diesel - Euro 5` <- (road_so2_impacts$`Bus - Diesel - Euro 5` * bus_IF_so2)
    road_so2_impacts$`Bus - Diesel - Euro 6` <- (road_so2_impacts$`Bus - Diesel - Euro 6` * bus_IF_so2)
    road_so2_impacts$`Bus - Diesel - Euro 7` <- (road_so2_impacts$`Bus - Diesel - Euro 7` * bus_IF_so2)
    road_so2_impacts$`Bus - PHEV (Diesel)` <- (road_so2_impacts$`Bus - PHEV (Diesel)` * bus_IF_so2)
    road_so2_impacts$`Bus - Hydrogen Fuel Cell` <- (road_so2_impacts$`Bus - Hydrogen Fuel Cell` * bus_IF_so2)
    road_so2_impacts$`Bus - BEV` <- (road_so2_impacts$`Bus - BEV` * bus_IF_so2)
    road_so2_impacts$`Motorcycle - Petrol - Euro 1` <- (road_so2_impacts$`Motorcycle - Petrol - Euro 1` * car_petrol_IF_so2)
    road_so2_impacts$`Motorcycle - Petrol - Euro 2` <- (road_so2_impacts$`Motorcycle - Petrol - Euro 2` * car_petrol_IF_so2)
    road_so2_impacts$`Motorcycle - Petrol - Euro 3` <- (road_so2_impacts$`Motorcycle - Petrol - Euro 3` * car_petrol_IF_so2)
    road_so2_impacts$`Motorcycle - Petrol - Euro 4` <- (road_so2_impacts$`Motorcycle - Petrol - Euro 4` * car_petrol_IF_so2)
    road_so2_impacts$`Motorcycle - Petrol - Euro 5` <- (road_so2_impacts$`Motorcycle - Petrol - Euro 5` * car_petrol_IF_so2)
    road_so2_impacts$`Motorcycle - Hydrogen Fuel Cell` <- (road_so2_impacts$`Motorcycle - Hydrogen Fuel Cell` * car_petrol_IF_so2)
    road_so2_impacts$`Motorcycle - Electric` <- (road_so2_impacts$`Motorcycle - Electric` * car_petrol_IF_so2)
    road_so2_impacts$`Total Impacts` <-  rowSums(road_so2_impacts[, 2:88], na.rm = TRUE)
    
    return(road_so2_impacts)
    
  })
  
  ##########################################################################################################################################################
  
  # Road Transport NH3 Emissions and Impacts
  
  # Road Transport NH3 Emissions - /1000000000 to get emissions in kt
  
  road_nh3_emissions <- reactive({
    
    req(road_data())
    
    road_nh3_emissions <- road_data()[, 1:88]
    
    road_nh3_emissions$`Car - Petrol - Euro 1` <- (road_nh3_emissions$`Car - Petrol - Euro 1` * car_petrol_euro_1_nh3)/1000000000
    road_nh3_emissions$`Car - Petrol - Euro 2` <- (road_nh3_emissions$`Car - Petrol - Euro 2` * car_petrol_euro_2_nh3)/1000000000
    road_nh3_emissions$`Car - Petrol - Euro 3` <- (road_nh3_emissions$`Car - Petrol - Euro 3` * car_petrol_euro_3_nh3)/1000000000
    road_nh3_emissions$`Car - Petrol - Euro 4` <- (road_nh3_emissions$`Car - Petrol - Euro 4` * car_petrol_euro_4_nh3)/1000000000
    road_nh3_emissions$`Car - Petrol - Euro 5a` <- (road_nh3_emissions$`Car - Petrol - Euro 5a` * car_petrol_euro_5a_nh3)/1000000000
    road_nh3_emissions$`Car - Petrol - Euro 5b` <- (road_nh3_emissions$`Car - Petrol - Euro 5b` * car_petrol_euro_5a_nh3)/1000000000
    road_nh3_emissions$`Car - Petrol - Euro 6b` <- (road_nh3_emissions$`Car - Petrol - Euro 6b` * car_petrol_euro_6b_nh3)/1000000000
    road_nh3_emissions$`Car - Petrol - Euro 6c` <- (road_nh3_emissions$`Car - Petrol - Euro 6c` * car_petrol_euro_6c_nh3)/1000000000
    road_nh3_emissions$`Car - Petrol - Euro 6d-Temp` <- (road_nh3_emissions$`Car - Petrol - Euro 6d-Temp` * car_petrol_euro_6dTemp_nh3)/1000000000
    road_nh3_emissions$`Car - Petrol - Euro 6d` <- (road_nh3_emissions$`Car - Petrol - Euro 6d` * car_petrol_euro_6d_nh3)/1000000000
    road_nh3_emissions$`Car - Petrol - Euro 7` <- (road_nh3_emissions$`Car - Petrol - Euro 7` * car_petrol_euro_7_nh3)/1000000000
    road_nh3_emissions$`Car - Diesel - Euro 1` <- (road_nh3_emissions$`Car - Diesel - Euro 1` * car_diesel_euro_1_nh3)/1000000000
    road_nh3_emissions$`Car - Diesel - Euro 2` <- (road_nh3_emissions$`Car - Diesel - Euro 2` * car_diesel_euro_2_nh3)/1000000000
    road_nh3_emissions$`Car - Diesel - Euro 3` <- (road_nh3_emissions$`Car - Diesel - Euro 3` * car_diesel_euro_3_nh3)/1000000000
    road_nh3_emissions$`Car - Diesel - Euro 4` <- (road_nh3_emissions$`Car - Diesel - Euro 4` * car_diesel_euro_4_nh3)/1000000000
    road_nh3_emissions$`Car - Diesel - Euro 5a` <- (road_nh3_emissions$`Car - Diesel - Euro 5a` * car_diesel_euro_5a_nh3)/1000000000
    road_nh3_emissions$`Car - Diesel - Euro 5b` <- (road_nh3_emissions$`Car - Diesel - Euro 5b` * car_diesel_euro_5b_nh3)/1000000000
    road_nh3_emissions$`Car - Diesel - Euro 6b` <- (road_nh3_emissions$`Car - Diesel - Euro 6b` * car_diesel_euro_6b_nh3)/1000000000
    road_nh3_emissions$`Car - Diesel - Euro 6c` <- (road_nh3_emissions$`Car - Diesel - Euro 6c` * car_diesel_euro_6c_nh3)/1000000000
    road_nh3_emissions$`Car - Diesel - Euro 6d-Temp` <- (road_nh3_emissions$`Car - Diesel - Euro 6d-Temp` * car_diesel_euro_6dTemp_nh3)/1000000000
    road_nh3_emissions$`Car - Diesel - Euro 6d` <- (road_nh3_emissions$`Car - Diesel - Euro 6d` * car_diesel_euro_6d_nh3)/1000000000
    road_nh3_emissions$`Car - Diesel - Euro 7` <- (road_nh3_emissions$`Car - Diesel - Euro 7` * car_diesel_euro_7_nh3)/1000000000
    road_nh3_emissions$`Car - PHEV (Petrol)` <- (road_nh3_emissions$`Car - PHEV (Petrol)` * car_phev_petrol_nh3 * car_petrol_phev_utilisation_factor)/1000000000
    road_nh3_emissions$`Car - PHEV (Diesel)` <- (road_nh3_emissions$`Car - PHEV (Diesel)` * car_phev_diesel_nh3 * car_diesel_phev_utilisation_factor)/1000000000
    road_nh3_emissions$`Car - Hydrogen Fuel Cell` <- (road_nh3_emissions$`Car - Hydrogen Fuel Cell` * car_fuelcell_nh3)/1000000000
    road_nh3_emissions$`Car - BEV` <- (road_nh3_emissions$`Car - BEV` * car_bev_nh3)/1000000000
    road_nh3_emissions$`LGV - Petrol - Euro 1` <- (road_nh3_emissions$`LGV - Petrol - Euro 1` * lgv_petrol_euro_1_nh3)/1000000000
    road_nh3_emissions$`LGV - Petrol - Euro 2` <- (road_nh3_emissions$`LGV - Petrol - Euro 2` * lgv_petrol_euro_2_nh3)/1000000000
    road_nh3_emissions$`LGV - Petrol - Euro 3` <- (road_nh3_emissions$`LGV - Petrol - Euro 3` * lgv_petrol_euro_3_nh3)/1000000000
    road_nh3_emissions$`LGV - Petrol - Euro 4` <- (road_nh3_emissions$`LGV - Petrol - Euro 4` * lgv_petrol_euro_4_nh3)/1000000000
    road_nh3_emissions$`LGV - Petrol - Euro 5a` <- (road_nh3_emissions$`LGV - Petrol - Euro 5a` * lgv_petrol_euro_5a_nh3)/1000000000
    road_nh3_emissions$`LGV - Petrol - Euro 5b` <- (road_nh3_emissions$`LGV - Petrol - Euro 5b` * lgv_petrol_euro_5a_nh3)/1000000000
    road_nh3_emissions$`LGV - Petrol - Euro 6b` <- (road_nh3_emissions$`LGV - Petrol - Euro 6b` * lgv_petrol_euro_6b_nh3)/1000000000
    road_nh3_emissions$`LGV - Petrol - Euro 6c` <- (road_nh3_emissions$`LGV - Petrol - Euro 6c` * lgv_petrol_euro_6c_nh3)/1000000000
    road_nh3_emissions$`LGV - Petrol - Euro 6d-Temp` <- (road_nh3_emissions$`LGV - Petrol - Euro 6d-Temp` * lgv_petrol_euro_6dTemp_nh3)/1000000000
    road_nh3_emissions$`LGV - Petrol - Euro 6d` <- (road_nh3_emissions$`LGV - Petrol - Euro 6d` * lgv_petrol_euro_6d_nh3)/1000000000
    road_nh3_emissions$`LGV - Petrol - Euro 7` <- (road_nh3_emissions$`LGV - Petrol - Euro 7` * lgv_petrol_euro_7_nh3)/1000000000
    road_nh3_emissions$`LGV - Diesel - Euro 1` <- (road_nh3_emissions$`LGV - Diesel - Euro 1` * lgv_diesel_euro_1_nh3)/1000000000
    road_nh3_emissions$`LGV - Diesel - Euro 2` <- (road_nh3_emissions$`LGV - Diesel - Euro 2` * lgv_diesel_euro_2_nh3)/1000000000
    road_nh3_emissions$`LGV - Diesel - Euro 3` <- (road_nh3_emissions$`LGV - Diesel - Euro 3` * lgv_diesel_euro_3_nh3)/1000000000
    road_nh3_emissions$`LGV - Diesel - Euro 4` <- (road_nh3_emissions$`LGV - Diesel - Euro 4` * lgv_diesel_euro_4_nh3)/1000000000
    road_nh3_emissions$`LGV - Diesel - Euro 5a` <- (road_nh3_emissions$`LGV - Diesel - Euro 5a` * lgv_diesel_euro_5a_nh3)/1000000000
    road_nh3_emissions$`LGV - Diesel - Euro 5b` <- (road_nh3_emissions$`LGV - Diesel - Euro 5b` * lgv_diesel_euro_5b_nh3)/1000000000
    road_nh3_emissions$`LGV - Diesel - Euro 6b` <- (road_nh3_emissions$`LGV - Diesel - Euro 6b` * lgv_diesel_euro_6b_nh3)/1000000000
    road_nh3_emissions$`LGV - Diesel - Euro 6c` <- (road_nh3_emissions$`LGV - Diesel - Euro 6c` * lgv_diesel_euro_6c_nh3)/1000000000
    road_nh3_emissions$`LGV - Diesel - Euro 6d-Temp` <- (road_nh3_emissions$`LGV - Diesel - Euro 6d-Temp` * lgv_diesel_euro_6dTemp_nh3)/1000000000
    road_nh3_emissions$`LGV - Diesel - Euro 6d` <- (road_nh3_emissions$`LGV - Diesel - Euro 6d` * lgv_diesel_euro_6d_nh3)/1000000000
    road_nh3_emissions$`LGV - Diesel - Euro 7` <- (road_nh3_emissions$`LGV - Diesel - Euro 7` * lgv_diesel_euro_7_nh3)/1000000000
    road_nh3_emissions$`LGV - PHEV (Petrol)` <- (road_nh3_emissions$`LGV - PHEV (Petrol)` * lgv_phev_petrol_nh3 * lgv_phev_utilisation_factor)/1000000000
    road_nh3_emissions$`LGV - PHEV (Diesel)` <- (road_nh3_emissions$`LGV - PHEV (Diesel)` * lgv_phev_diesel_nh3 * lgv_phev_utilisation_factor)/1000000000
    road_nh3_emissions$`LGV - Hydrogen Fuel Cell` <- (road_nh3_emissions$`LGV - Hydrogen Fuel Cell` * lgv_fuelcell_nh3)/1000000000
    road_nh3_emissions$`LGV - BEV` <- (road_nh3_emissions$`LGV - BEV` * lgv_bev_nh3)/1000000000
    road_nh3_emissions$`HGV - CNG - Euro 1` <- (road_nh3_emissions$`HGV - CNG - Euro 1` * hgv_cng_euro_1_nh3)/1000000000
    road_nh3_emissions$`HGV - CNG - Euro 2` <- (road_nh3_emissions$`HGV - CNG - Euro 2` * hgv_cng_euro_2_nh3)/1000000000
    road_nh3_emissions$`HGV - CNG - Euro 3` <- (road_nh3_emissions$`HGV - CNG - Euro 3` * hgv_cng_euro_3_nh3)/1000000000
    road_nh3_emissions$`HGV - CNG - EEV` <- (road_nh3_emissions$`HGV - CNG - EEV` * hgv_cng_eev_nh3)/1000000000
    road_nh3_emissions$`HGV - Diesel - Euro 1` <- (road_nh3_emissions$`HGV - Diesel - Euro 1` * hgv_diesel_euro_1_nh3)/1000000000
    road_nh3_emissions$`HGV - Diesel - Euro 2` <- (road_nh3_emissions$`HGV - Diesel - Euro 2` * hgv_diesel_euro_2_nh3)/1000000000
    road_nh3_emissions$`HGV - Diesel - Euro 3` <- (road_nh3_emissions$`HGV - Diesel - Euro 3` * hgv_diesel_euro_3_nh3)/1000000000
    road_nh3_emissions$`HGV - Diesel - Euro 4` <- (road_nh3_emissions$`HGV - Diesel - Euro 4` * hgv_diesel_euro_4_nh3)/1000000000
    road_nh3_emissions$`HGV - Diesel - Euro 5` <- (road_nh3_emissions$`HGV - Diesel - Euro 5` * hgv_diesel_euro_5_nh3)/1000000000
    road_nh3_emissions$`HGV - Diesel - Euro 6` <- (road_nh3_emissions$`HGV - Diesel - Euro 6` * hgv_diesel_euro_6_nh3)/1000000000
    road_nh3_emissions$`HGV - Diesel - Euro 7` <- (road_nh3_emissions$`HGV - Diesel - Euro 7` * hgv_diesel_euro_7_nh3)/1000000000
    road_nh3_emissions$`HGV - PHEV (Diesel)` <- (road_nh3_emissions$`HGV - PHEV (Diesel)` * hgv_phev_diesel_nh3 * lgv_phev_utilisation_factor)/1000000000
    road_nh3_emissions$`HGV - Hydrogen Fuel Cell` <- (road_nh3_emissions$`HGV - Hydrogen Fuel Cell` * hgv_fuelcell_nh3)/1000000000
    road_nh3_emissions$`HGV - BEV` <- (road_nh3_emissions$`HGV - BEV` * hgv_bev_nh3)/1000000000
    road_nh3_emissions$`Bus - CNG - Euro 1` <- (road_nh3_emissions$`Bus - CNG - Euro 1` * bus_cng_euro_1_nh3)/1000000000
    road_nh3_emissions$`Bus - CNG - Euro 2` <- (road_nh3_emissions$`Bus - CNG - Euro 2` * bus_cng_euro_2_nh3)/1000000000
    road_nh3_emissions$`Bus - CNG - Euro 3` <- (road_nh3_emissions$`Bus - CNG - Euro 3` * bus_cng_euro_3_nh3)/1000000000
    road_nh3_emissions$`Bus - CNG - EEV` <- (road_nh3_emissions$`Bus - CNG - EEV` * bus_cng_eev_nh3)/1000000000
    road_nh3_emissions$`Bus - Diesel - Euro 1` <- (road_nh3_emissions$`Bus - Diesel - Euro 1` * bus_diesel_euro_1_nh3)/1000000000
    road_nh3_emissions$`Bus - Diesel - Euro 2` <- (road_nh3_emissions$`Bus - Diesel - Euro 2` * bus_diesel_euro_2_nh3)/1000000000
    road_nh3_emissions$`Bus - Diesel - Euro 3` <- (road_nh3_emissions$`Bus - Diesel - Euro 3` * bus_diesel_euro_3_nh3)/1000000000
    road_nh3_emissions$`Bus - Diesel - Euro 4` <- (road_nh3_emissions$`Bus - Diesel - Euro 4` * bus_diesel_euro_4_nh3)/1000000000
    road_nh3_emissions$`Bus - Diesel - Euro 5` <- (road_nh3_emissions$`Bus - Diesel - Euro 5` * bus_diesel_euro_5_nh3)/1000000000
    road_nh3_emissions$`Bus - Diesel - Euro 6` <- (road_nh3_emissions$`Bus - Diesel - Euro 6` * bus_diesel_euro_6_nh3)/1000000000
    road_nh3_emissions$`Bus - Diesel - Euro 7` <- (road_nh3_emissions$`Bus - Diesel - Euro 7` * bus_diesel_euro_7_nh3)/1000000000
    road_nh3_emissions$`Bus - PHEV (Diesel)` <- (road_nh3_emissions$`Bus - PHEV (Diesel)` * bus_phev_diesel_nh3 * lgv_phev_utilisation_factor)/1000000000
    road_nh3_emissions$`Bus - Hydrogen Fuel Cell` <- (road_nh3_emissions$`Bus - Hydrogen Fuel Cell` * bus_fuelcell_nh3)/1000000000
    road_nh3_emissions$`Bus - BEV` <- (road_nh3_emissions$`Bus - BEV` * bus_bev_nh3)/1000000000
    road_nh3_emissions$`Motorcycle - Petrol - Euro 1` <- (road_nh3_emissions$`Motorcycle - Petrol - Euro 1` * motorcycle_petrol_euro_1_nh3)/1000000000
    road_nh3_emissions$`Motorcycle - Petrol - Euro 2` <- (road_nh3_emissions$`Motorcycle - Petrol - Euro 2` * motorcycle_petrol_euro_2_nh3)/1000000000
    road_nh3_emissions$`Motorcycle - Petrol - Euro 3` <- (road_nh3_emissions$`Motorcycle - Petrol - Euro 3` * motorcycle_petrol_euro_3_nh3)/1000000000
    road_nh3_emissions$`Motorcycle - Petrol - Euro 4` <- (road_nh3_emissions$`Motorcycle - Petrol - Euro 4` * motorcycle_petrol_euro_4_nh3)/1000000000
    road_nh3_emissions$`Motorcycle - Petrol - Euro 5` <- (road_nh3_emissions$`Motorcycle - Petrol - Euro 5` * motorcycle_petrol_euro_5_nh3)/1000000000
    road_nh3_emissions$`Motorcycle - Hydrogen Fuel Cell` <- (road_nh3_emissions$`Motorcycle - Hydrogen Fuel Cell` * motorcycle_fuelcell_nh3)/1000000000
    road_nh3_emissions$`Motorcycle - Electric` <- (road_nh3_emissions$`Motorcycle - Electric` * motorcycle_electric_nh3)/1000000000
    road_nh3_emissions$`Total Emissions` <-  rowSums(road_nh3_emissions[, 2:88], na.rm = TRUE)
    
    return(road_nh3_emissions)
    
  })
  
  
  # Road Transport NOx Impacts - applying UKIAM road transport impact factors
  
  road_nh3_impacts <- reactive({
    
    req(road_nh3_emissions())
    
    road_nh3_impacts <- road_nh3_emissions()[, 1:88]
    
    road_nh3_impacts$`Car - Petrol - Euro 1` <- (road_nh3_impacts$`Car - Petrol - Euro 1` * car_petrol_IF_nh3)
    road_nh3_impacts$`Car - Petrol - Euro 2` <- (road_nh3_impacts$`Car - Petrol - Euro 2` * car_petrol_IF_nh3)
    road_nh3_impacts$`Car - Petrol - Euro 3` <- (road_nh3_impacts$`Car - Petrol - Euro 3` * car_petrol_IF_nh3)
    road_nh3_impacts$`Car - Petrol - Euro 4` <- (road_nh3_impacts$`Car - Petrol - Euro 4` * car_petrol_IF_nh3)
    road_nh3_impacts$`Car - Petrol - Euro 5a` <- (road_nh3_impacts$`Car - Petrol - Euro 5a` * car_petrol_IF_nh3)
    road_nh3_impacts$`Car - Petrol - Euro 5b` <- (road_nh3_impacts$`Car - Petrol - Euro 5b` * car_petrol_IF_nh3)
    road_nh3_impacts$`Car - Petrol - Euro 6b` <- (road_nh3_impacts$`Car - Petrol - Euro 6b` * car_petrol_IF_nh3)
    road_nh3_impacts$`Car - Petrol - Euro 6c` <- (road_nh3_impacts$`Car - Petrol - Euro 6c` * car_petrol_IF_nh3)
    road_nh3_impacts$`Car - Petrol - Euro 6d-Temp` <- (road_nh3_impacts$`Car - Petrol - Euro 6d-Temp` * car_petrol_IF_nh3)
    road_nh3_impacts$`Car - Petrol - Euro 6d` <- (road_nh3_impacts$`Car - Petrol - Euro 6d` * car_petrol_IF_nh3)
    road_nh3_impacts$`Car - Petrol - Euro 7` <- (road_nh3_impacts$`Car - Petrol - Euro 7` * car_petrol_IF_nh3)
    road_nh3_impacts$`Car - Diesel - Euro 1` <- (road_nh3_impacts$`Car - Diesel - Euro 1` * car_diesel_IF_nh3)
    road_nh3_impacts$`Car - Diesel - Euro 2` <- (road_nh3_impacts$`Car - Diesel - Euro 2` * car_diesel_IF_nh3)
    road_nh3_impacts$`Car - Diesel - Euro 3` <- (road_nh3_impacts$`Car - Diesel - Euro 3` * car_diesel_IF_nh3)
    road_nh3_impacts$`Car - Diesel - Euro 4` <- (road_nh3_impacts$`Car - Diesel - Euro 4` * car_diesel_IF_nh3)
    road_nh3_impacts$`Car - Diesel - Euro 5a` <- (road_nh3_impacts$`Car - Diesel - Euro 5a` * car_diesel_IF_nh3)
    road_nh3_impacts$`Car - Diesel - Euro 5b` <- (road_nh3_impacts$`Car - Diesel - Euro 5b` * car_diesel_IF_nh3)
    road_nh3_impacts$`Car - Diesel - Euro 6b` <- (road_nh3_impacts$`Car - Diesel - Euro 6b` * car_diesel_IF_nh3)
    road_nh3_impacts$`Car - Diesel - Euro 6c` <- (road_nh3_impacts$`Car - Diesel - Euro 6c` * car_diesel_IF_nh3)
    road_nh3_impacts$`Car - Diesel - Euro 6d-Temp` <- (road_nh3_impacts$`Car - Diesel - Euro 6d-Temp` * car_diesel_IF_nh3)
    road_nh3_impacts$`Car - Diesel - Euro 6d` <- (road_nh3_impacts$`Car - Diesel - Euro 6d` * car_diesel_IF_nh3)
    road_nh3_impacts$`Car - Diesel - Euro 7` <- (road_nh3_impacts$`Car - Diesel - Euro 7` * car_diesel_IF_nh3)
    road_nh3_impacts$`Car - PHEV (Petrol)` <- (road_nh3_impacts$`Car - PHEV (Petrol)` * car_petrol_IF_nh3)
    road_nh3_impacts$`Car - PHEV (Diesel)` <- (road_nh3_impacts$`Car - PHEV (Diesel)` * car_diesel_IF_nh3)
    road_nh3_impacts$`Car - Hydrogen Fuel Cell` <- (road_nh3_impacts$`Car - Hydrogen Fuel Cell` * car_diesel_IF_nh3)
    road_nh3_impacts$`Car - BEV` <- (road_nh3_impacts$`Car - BEV` * car_diesel_IF_nh3)
    road_nh3_impacts$`LGV - Petrol - Euro 1` <- (road_nh3_impacts$`LGV - Petrol - Euro 1` * lgv_IF_nh3)
    road_nh3_impacts$`LGV - Petrol - Euro 2` <- (road_nh3_impacts$`LGV - Petrol - Euro 2` * lgv_IF_nh3)
    road_nh3_impacts$`LGV - Petrol - Euro 3` <- (road_nh3_impacts$`LGV - Petrol - Euro 3` * lgv_IF_nh3)
    road_nh3_impacts$`LGV - Petrol - Euro 4` <- (road_nh3_impacts$`LGV - Petrol - Euro 4` * lgv_IF_nh3)
    road_nh3_impacts$`LGV - Petrol - Euro 5a` <- (road_nh3_impacts$`LGV - Petrol - Euro 5a` * lgv_IF_nh3)
    road_nh3_impacts$`LGV - Petrol - Euro 5b` <- (road_nh3_impacts$`LGV - Petrol - Euro 5b` * lgv_IF_nh3)
    road_nh3_impacts$`LGV - Petrol - Euro 6b` <- (road_nh3_impacts$`LGV - Petrol - Euro 6b` * lgv_IF_nh3)
    road_nh3_impacts$`LGV - Petrol - Euro 6c` <- (road_nh3_impacts$`LGV - Petrol - Euro 6c` * lgv_IF_nh3)
    road_nh3_impacts$`LGV - Petrol - Euro 6d-Temp` <- (road_nh3_impacts$`LGV - Petrol - Euro 6d-Temp` * lgv_IF_nh3)
    road_nh3_impacts$`LGV - Petrol - Euro 6d` <- (road_nh3_impacts$`LGV - Petrol - Euro 6d` * lgv_IF_nh3)
    road_nh3_impacts$`LGV - Petrol - Euro 7` <- (road_nh3_impacts$`LGV - Petrol - Euro 7` * lgv_IF_nh3)
    road_nh3_impacts$`LGV - Diesel - Euro 1` <- (road_nh3_impacts$`LGV - Diesel - Euro 1` * lgv_IF_nh3)
    road_nh3_impacts$`LGV - Diesel - Euro 2` <- (road_nh3_impacts$`LGV - Diesel - Euro 2` * lgv_IF_nh3)
    road_nh3_impacts$`LGV - Diesel - Euro 3` <- (road_nh3_impacts$`LGV - Diesel - Euro 3` * lgv_IF_nh3)
    road_nh3_impacts$`LGV - Diesel - Euro 4` <- (road_nh3_impacts$`LGV - Diesel - Euro 4` * lgv_IF_nh3)
    road_nh3_impacts$`LGV - Diesel - Euro 5a` <- (road_nh3_impacts$`LGV - Diesel - Euro 5a` * lgv_IF_nh3)
    road_nh3_impacts$`LGV - Diesel - Euro 5b` <- (road_nh3_impacts$`LGV - Diesel - Euro 5b` * lgv_IF_nh3)
    road_nh3_impacts$`LGV - Diesel - Euro 6b` <- (road_nh3_impacts$`LGV - Diesel - Euro 6b` * lgv_IF_nh3)
    road_nh3_impacts$`LGV - Diesel - Euro 6c` <- road_nh3_impacts$`LGV - Diesel - Euro 6c` * lgv_IF_nh3
    road_nh3_impacts$`LGV - Diesel - Euro 6d-Temp` <- (road_nh3_impacts$`LGV - Diesel - Euro 6d-Temp` * lgv_IF_nh3)
    road_nh3_impacts$`LGV - Diesel - Euro 6d` <- (road_nh3_impacts$`LGV - Diesel - Euro 6d` * lgv_IF_nh3)
    road_nh3_impacts$`LGV - Diesel - Euro 7` <- (road_nh3_impacts$`LGV - Diesel - Euro 7` * lgv_IF_nh3)
    road_nh3_impacts$`LGV - PHEV (Petrol)` <- (road_nh3_impacts$`LGV - PHEV (Petrol)` * lgv_IF_nh3)
    road_nh3_impacts$`LGV - PHEV (Diesel)` <- (road_nh3_impacts$`LGV - PHEV (Diesel)` * lgv_IF_nh3)
    road_nh3_impacts$`LGV - Hydrogen Fuel Cell` <- (road_nh3_impacts$`LGV - Hydrogen Fuel Cell` * lgv_IF_nh3)
    road_nh3_impacts$`LGV - BEV` <- (road_nh3_impacts$`LGV - BEV` * lgv_IF_nh3)
    road_nh3_impacts$`HGV - CNG - Euro 1` <- (road_nh3_impacts$`HGV - CNG - Euro 1` * hgv_IF_nh3)
    road_nh3_impacts$`HGV - CNG - Euro 2` <- (road_nh3_impacts$`HGV - CNG - Euro 2` * hgv_IF_nh3)
    road_nh3_impacts$`HGV - CNG - Euro 3` <- (road_nh3_impacts$`HGV - CNG - Euro 3` * hgv_IF_nh3)
    road_nh3_impacts$`HGV - CNG - EEV` <- (road_nh3_impacts$`HGV - CNG - EEV` * hgv_IF_nh3)
    road_nh3_impacts$`HGV - Diesel - Euro 1` <- (road_nh3_impacts$`HGV - Diesel - Euro 1` * hgv_IF_nh3)
    road_nh3_impacts$`HGV - Diesel - Euro 2` <- (road_nh3_impacts$`HGV - Diesel - Euro 2` * hgv_IF_nh3)
    road_nh3_impacts$`HGV - Diesel - Euro 3` <- (road_nh3_impacts$`HGV - Diesel - Euro 3` * hgv_IF_nh3)
    road_nh3_impacts$`HGV - Diesel - Euro 4` <- (road_nh3_impacts$`HGV - Diesel - Euro 4` * hgv_IF_nh3)
    road_nh3_impacts$`HGV - Diesel - Euro 5` <- (road_nh3_impacts$`HGV - Diesel - Euro 5` * hgv_IF_nh3)
    road_nh3_impacts$`HGV - Diesel - Euro 6` <- (road_nh3_impacts$`HGV - Diesel - Euro 6` * hgv_IF_nh3)
    road_nh3_impacts$`HGV - Diesel - Euro 7` <- (road_nh3_impacts$`HGV - Diesel - Euro 7` * hgv_IF_nh3)
    road_nh3_impacts$`HGV - PHEV (Diesel)` <- (road_nh3_impacts$`HGV - PHEV (Diesel)` * hgv_IF_nh3)
    road_nh3_impacts$`HGV - Hydrogen Fuel Cell` <- (road_nh3_impacts$`HGV - Hydrogen Fuel Cell` * hgv_IF_nh3)
    road_nh3_impacts$`HGV - BEV` <- (road_nh3_impacts$`HGV - BEV` * hgv_IF_nh3)
    road_nh3_impacts$`Bus - CNG - Euro 1` <- (road_nh3_impacts$`Bus - CNG - Euro 1` * bus_IF_nh3)
    road_nh3_impacts$`Bus - CNG - Euro 2` <- (road_nh3_impacts$`Bus - CNG - Euro 2` * bus_IF_nh3)
    road_nh3_impacts$`Bus - CNG - Euro 3` <- (road_nh3_impacts$`Bus - CNG - Euro 3` * bus_IF_nh3)
    road_nh3_impacts$`Bus - CNG - EEV` <- (road_nh3_impacts$`Bus - CNG - EEV` * bus_IF_nh3)
    road_nh3_impacts$`Bus - Diesel - Euro 1` <- (road_nh3_impacts$`Bus - Diesel - Euro 1` * bus_IF_nh3)
    road_nh3_impacts$`Bus - Diesel - Euro 2` <- (road_nh3_impacts$`Bus - Diesel - Euro 2` * bus_IF_nh3)
    road_nh3_impacts$`Bus - Diesel - Euro 3` <- (road_nh3_impacts$`Bus - Diesel - Euro 3` * bus_IF_nh3)
    road_nh3_impacts$`Bus - Diesel - Euro 4` <- (road_nh3_impacts$`Bus - Diesel - Euro 4` * bus_IF_nh3)
    road_nh3_impacts$`Bus - Diesel - Euro 5` <- (road_nh3_impacts$`Bus - Diesel - Euro 5` * bus_IF_nh3)
    road_nh3_impacts$`Bus - Diesel - Euro 6` <- (road_nh3_impacts$`Bus - Diesel - Euro 6` * bus_IF_nh3)
    road_nh3_impacts$`Bus - Diesel - Euro 7` <- (road_nh3_impacts$`Bus - Diesel - Euro 7` * bus_IF_nh3)
    road_nh3_impacts$`Bus - PHEV (Diesel)` <- (road_nh3_impacts$`Bus - PHEV (Diesel)` * bus_IF_nh3)
    road_nh3_impacts$`Bus - Hydrogen Fuel Cell` <- (road_nh3_impacts$`Bus - Hydrogen Fuel Cell` * bus_IF_nh3)
    road_nh3_impacts$`Bus - BEV` <- (road_nh3_impacts$`Bus - BEV` * bus_IF_nh3)
    road_nh3_impacts$`Motorcycle - Petrol - Euro 1` <- (road_nh3_impacts$`Motorcycle - Petrol - Euro 1` * car_petrol_IF_nh3)
    road_nh3_impacts$`Motorcycle - Petrol - Euro 2` <- (road_nh3_impacts$`Motorcycle - Petrol - Euro 2` * car_petrol_IF_nh3)
    road_nh3_impacts$`Motorcycle - Petrol - Euro 3` <- (road_nh3_impacts$`Motorcycle - Petrol - Euro 3` * car_petrol_IF_nh3)
    road_nh3_impacts$`Motorcycle - Petrol - Euro 4` <- (road_nh3_impacts$`Motorcycle - Petrol - Euro 4` * car_petrol_IF_nh3)
    road_nh3_impacts$`Motorcycle - Petrol - Euro 5` <- (road_nh3_impacts$`Motorcycle - Petrol - Euro 5` * car_petrol_IF_nh3)
    road_nh3_impacts$`Motorcycle - Hydrogen Fuel Cell` <- (road_nh3_impacts$`Motorcycle - Hydrogen Fuel Cell` * car_petrol_IF_nh3)
    road_nh3_impacts$`Motorcycle - Electric` <- (road_nh3_impacts$`Motorcycle - Electric` * car_petrol_IF_nh3)
    road_nh3_impacts$`Total Impacts` <-  rowSums(road_nh3_impacts[, 2:88], na.rm = TRUE)
    
    return(road_nh3_impacts)
    
  })
  
  ##########################################################################################################################################################
  
  # Road Transport Primary PM2.5 Impacts
  
  # Road Transport Primary PM2.5 Impacts - sum of exhaust, tyre, brake and road impacts
  
  
  road_ppm25_impacts <- reactive({
    
    req(road_pm25_exhaust_impacts())
    req(road_pm25_tyre_impacts())
    req(road_pm25_brake_impacts())
    req(road_pm25_road_impacts())
    
    road_ppm25_impacts <- road_pm25_exhaust_impacts()[ , 1:88]
    
    road_ppm25_impacts$`Car - Petrol - Euro 1` <- (road_pm25_exhaust_impacts()$`Car - Petrol - Euro 1` + road_pm25_tyre_impacts()$`Car - Petrol - Euro 1` + road_pm25_brake_impacts()$`Car - Petrol - Euro 1` + road_pm25_road_impacts()$`Car - Petrol - Euro 1`)
    road_ppm25_impacts$`Car - Petrol - Euro 2` <- (road_pm25_exhaust_impacts()$`Car - Petrol - Euro 2` + road_pm25_tyre_impacts()$`Car - Petrol - Euro 2` + road_pm25_brake_impacts()$`Car - Petrol - Euro 2` + road_pm25_road_impacts()$`Car - Petrol - Euro 2`)
    road_ppm25_impacts$`Car - Petrol - Euro 3` <- (road_pm25_exhaust_impacts()$`Car - Petrol - Euro 3` + road_pm25_tyre_impacts()$`Car - Petrol - Euro 3` + road_pm25_brake_impacts()$`Car - Petrol - Euro 3` + road_pm25_road_impacts()$`Car - Petrol - Euro 3`)
    road_ppm25_impacts$`Car - Petrol - Euro 4` <- (road_pm25_exhaust_impacts()$`Car - Petrol - Euro 4` + road_pm25_tyre_impacts()$`Car - Petrol - Euro 4` + road_pm25_brake_impacts()$`Car - Petrol - Euro 4` + road_pm25_road_impacts()$`Car - Petrol - Euro 4`)
    road_ppm25_impacts$`Car - Petrol - Euro 5a` <- (road_pm25_exhaust_impacts()$`Car - Petrol - Euro 5a` + road_pm25_tyre_impacts()$`Car - Petrol - Euro 5a` + road_pm25_brake_impacts()$`Car - Petrol - Euro 5a` + road_pm25_road_impacts()$`Car - Petrol - Euro 5a`)
    road_ppm25_impacts$`Car - Petrol - Euro 5b` <- (road_pm25_exhaust_impacts()$`Car - Petrol - Euro 5b` + road_pm25_tyre_impacts()$`Car - Petrol - Euro 5b` + road_pm25_brake_impacts()$`Car - Petrol - Euro 5b` + road_pm25_road_impacts()$`Car - Petrol - Euro 5b`)
    road_ppm25_impacts$`Car - Petrol - Euro 6b` <- (road_pm25_exhaust_impacts()$`Car - Petrol - Euro 6b` + road_pm25_tyre_impacts()$`Car - Petrol - Euro 6b` + road_pm25_brake_impacts()$`Car - Petrol - Euro 6b` + road_pm25_road_impacts()$`Car - Petrol - Euro 6b`)
    road_ppm25_impacts$`Car - Petrol - Euro 6c` <- (road_pm25_exhaust_impacts()$`Car - Petrol - Euro 6c` + road_pm25_tyre_impacts()$`Car - Petrol - Euro 6c` + road_pm25_brake_impacts()$`Car - Petrol - Euro 6c` + road_pm25_road_impacts()$`Car - Petrol - Euro 6c`)
    road_ppm25_impacts$`Car - Petrol - Euro 6d-Temp` <- (road_pm25_exhaust_impacts()$`Car - Petrol - Euro 6d-Temp` + road_pm25_tyre_impacts()$`Car - Petrol - Euro 6d-Temp` + road_pm25_brake_impacts()$`Car - Petrol - Euro 6d-Temp` + road_pm25_road_impacts()$`Car - Petrol - Euro 6d-Temp`)
    road_ppm25_impacts$`Car - Petrol - Euro 6d` <- (road_pm25_exhaust_impacts()$`Car - Petrol - Euro 6d` + road_pm25_tyre_impacts()$`Car - Petrol - Euro 6d` + road_pm25_brake_impacts()$`Car - Petrol - Euro 6d` + road_pm25_road_impacts()$`Car - Petrol - Euro 6d`)
    road_ppm25_impacts$`Car - Petrol - Euro 7` <- (road_pm25_exhaust_impacts()$`Car - Petrol - Euro 7` + road_pm25_tyre_impacts()$`Car - Petrol - Euro 7` + road_pm25_brake_impacts()$`Car - Petrol - Euro 7` + road_pm25_road_impacts()$`Car - Petrol - Euro 7`)
    road_ppm25_impacts$`Car - Diesel - Euro 1` <- (road_pm25_exhaust_impacts()$`Car - Diesel - Euro 1` + road_pm25_tyre_impacts()$`Car - Diesel - Euro 1` + road_pm25_brake_impacts()$`Car - Diesel - Euro 1` + road_pm25_road_impacts()$`Car - Diesel - Euro 1`)
    road_ppm25_impacts$`Car - Diesel - Euro 2` <- (road_pm25_exhaust_impacts()$`Car - Diesel - Euro 2` + road_pm25_tyre_impacts()$`Car - Diesel - Euro 2` + road_pm25_brake_impacts()$`Car - Diesel - Euro 2` + road_pm25_road_impacts()$`Car - Diesel - Euro 2`)
    road_ppm25_impacts$`Car - Diesel - Euro 3` <- (road_pm25_exhaust_impacts()$`Car - Diesel - Euro 3` + road_pm25_tyre_impacts()$`Car - Diesel - Euro 3` + road_pm25_brake_impacts()$`Car - Diesel - Euro 3` + road_pm25_road_impacts()$`Car - Diesel - Euro 3`)
    road_ppm25_impacts$`Car - Diesel - Euro 4` <- (road_pm25_exhaust_impacts()$`Car - Diesel - Euro 4` + road_pm25_tyre_impacts()$`Car - Diesel - Euro 4` + road_pm25_brake_impacts()$`Car - Diesel - Euro 4` + road_pm25_road_impacts()$`Car - Diesel - Euro 4`)
    road_ppm25_impacts$`Car - Diesel - Euro 5a` <- (road_pm25_exhaust_impacts()$`Car - Diesel - Euro 5a` + road_pm25_tyre_impacts()$`Car - Diesel - Euro 5a` + road_pm25_brake_impacts()$`Car - Diesel - Euro 5a` + road_pm25_road_impacts()$`Car - Diesel - Euro 5a`)
    road_ppm25_impacts$`Car - Diesel - Euro 5b` <- (road_pm25_exhaust_impacts()$`Car - Diesel - Euro 5b` + road_pm25_tyre_impacts()$`Car - Diesel - Euro 5b` + road_pm25_brake_impacts()$`Car - Diesel - Euro 5b` + road_pm25_road_impacts()$`Car - Diesel - Euro 5b`)
    road_ppm25_impacts$`Car - Diesel - Euro 6b` <- (road_pm25_exhaust_impacts()$`Car - Diesel - Euro 6b` + road_pm25_tyre_impacts()$`Car - Diesel - Euro 6b` + road_pm25_brake_impacts()$`Car - Diesel - Euro 6b` + road_pm25_road_impacts()$`Car - Diesel - Euro 6b`)
    road_ppm25_impacts$`Car - Diesel - Euro 6c` <- (road_pm25_exhaust_impacts()$`Car - Diesel - Euro 6c` + road_pm25_tyre_impacts()$`Car - Diesel - Euro 6c` + road_pm25_brake_impacts()$`Car - Diesel - Euro 6c` + road_pm25_road_impacts()$`Car - Diesel - Euro 6c`)
    road_ppm25_impacts$`Car - Diesel - Euro 6d-Temp` <- (road_pm25_exhaust_impacts()$`Car - Diesel - Euro 6d-Temp` + road_pm25_tyre_impacts()$`Car - Diesel - Euro 6d-Temp` + road_pm25_brake_impacts()$`Car - Diesel - Euro 6d-Temp` + road_pm25_road_impacts()$`Car - Diesel - Euro 6d-Temp`)
    road_ppm25_impacts$`Car - Diesel - Euro 6d` <- (road_pm25_exhaust_impacts()$`Car - Diesel - Euro 6d` + road_pm25_tyre_impacts()$`Car - Diesel - Euro 6d` + road_pm25_brake_impacts()$`Car - Diesel - Euro 6d` + road_pm25_road_impacts()$`Car - Diesel - Euro 6d`)
    road_ppm25_impacts$`Car - Diesel - Euro 7` <- (road_pm25_exhaust_impacts()$`Car - Diesel - Euro 7` + road_pm25_tyre_impacts()$`Car - Diesel - Euro 7` + road_pm25_brake_impacts()$`Car - Diesel - Euro 7` + road_pm25_road_impacts()$`Car - Diesel - Euro 7`)
    road_ppm25_impacts$`Car - PHEV (Petrol)` <- (road_pm25_exhaust_impacts()$`Car - PHEV (Petrol)` + road_pm25_tyre_impacts()$`Car - PHEV (Petrol)` + road_pm25_brake_impacts()$`Car - PHEV (Petrol)` + road_pm25_road_impacts()$`Car - PHEV (Petrol)`)
    road_ppm25_impacts$`Car - PHEV (Diesel)` <- (road_pm25_exhaust_impacts()$`Car - PHEV (Diesel)` + road_pm25_tyre_impacts()$`Car - PHEV (Diesel)` + road_pm25_brake_impacts()$`Car - PHEV (Diesel)` + road_pm25_road_impacts()$`Car - PHEV (Diesel)`)
    road_ppm25_impacts$`Car - Hydrogen Fuel Cell` <- (road_pm25_exhaust_impacts()$`Car - Hydrogen Fuel Cell` + road_pm25_tyre_impacts()$`Car - Hydrogen Fuel Cell` + road_pm25_brake_impacts()$`Car - Hydrogen Fuel Cell` + road_pm25_road_impacts()$`Car - Hydrogen Fuel Cell`)
    road_ppm25_impacts$`Car - BEV` <- (road_pm25_exhaust_impacts()$`Car - BEV` + road_pm25_tyre_impacts()$`Car - BEV` + road_pm25_brake_impacts()$`Car - BEV` + road_pm25_road_impacts()$`Car - BEV`)
    road_ppm25_impacts$`LGV - Petrol - Euro 1` <- (road_pm25_exhaust_impacts()$`LGV - Petrol - Euro 1` + road_pm25_tyre_impacts()$`LGV - Petrol - Euro 1` + road_pm25_brake_impacts()$`LGV - Petrol - Euro 1` + road_pm25_road_impacts()$`LGV - Petrol - Euro 1`)
    road_ppm25_impacts$`LGV - Petrol - Euro 2` <- (road_pm25_exhaust_impacts()$`LGV - Petrol - Euro 2` + road_pm25_tyre_impacts()$`LGV - Petrol - Euro 2` + road_pm25_brake_impacts()$`LGV - Petrol - Euro 2` + road_pm25_road_impacts()$`LGV - Petrol - Euro 2`)
    road_ppm25_impacts$`LGV - Petrol - Euro 3` <- (road_pm25_exhaust_impacts()$`LGV - Petrol - Euro 3` + road_pm25_tyre_impacts()$`LGV - Petrol - Euro 3` + road_pm25_brake_impacts()$`LGV - Petrol - Euro 3` + road_pm25_road_impacts()$`LGV - Petrol - Euro 3`)
    road_ppm25_impacts$`LGV - Petrol - Euro 4` <- (road_pm25_exhaust_impacts()$`LGV - Petrol - Euro 4` + road_pm25_tyre_impacts()$`LGV - Petrol - Euro 4` + road_pm25_brake_impacts()$`LGV - Petrol - Euro 4` + road_pm25_road_impacts()$`LGV - Petrol - Euro 4`)
    road_ppm25_impacts$`LGV - Petrol - Euro 5a` <- (road_pm25_exhaust_impacts()$`LGV - Petrol - Euro 5a` + road_pm25_tyre_impacts()$`LGV - Petrol - Euro 5a` + road_pm25_brake_impacts()$`LGV - Petrol - Euro 5a` + road_pm25_road_impacts()$`LGV - Petrol - Euro 5a`)
    road_ppm25_impacts$`LGV - Petrol - Euro 5b` <- (road_pm25_exhaust_impacts()$`LGV - Petrol - Euro 5b` + road_pm25_tyre_impacts()$`LGV - Petrol - Euro 5b` + road_pm25_brake_impacts()$`LGV - Petrol - Euro 5b` + road_pm25_road_impacts()$`LGV - Petrol - Euro 5b`)
    road_ppm25_impacts$`LGV - Petrol - Euro 6b` <- (road_pm25_exhaust_impacts()$`LGV - Petrol - Euro 6b` + road_pm25_tyre_impacts()$`LGV - Petrol - Euro 6b` + road_pm25_brake_impacts()$`LGV - Petrol - Euro 6b` + road_pm25_road_impacts()$`LGV - Petrol - Euro 6b`)
    road_ppm25_impacts$`LGV - Petrol - Euro 6c` <- (road_pm25_exhaust_impacts()$`LGV - Petrol - Euro 6c` + road_pm25_tyre_impacts()$`LGV - Petrol - Euro 6c` + road_pm25_brake_impacts()$`LGV - Petrol - Euro 6c` + road_pm25_road_impacts()$`LGV - Petrol - Euro 6c`)
    road_ppm25_impacts$`LGV - Petrol - Euro 6d-Temp` <- (road_pm25_exhaust_impacts()$`LGV - Petrol - Euro 6d-Temp` + road_pm25_tyre_impacts()$`LGV - Petrol - Euro 6d-Temp` + road_pm25_brake_impacts()$`LGV - Petrol - Euro 6d-Temp` + road_pm25_road_impacts()$`LGV - Petrol - Euro 6d-Temp`)
    road_ppm25_impacts$`LGV - Petrol - Euro 6d` <- (road_pm25_exhaust_impacts()$`LGV - Petrol - Euro 6d` + road_pm25_tyre_impacts()$`LGV - Petrol - Euro 6d` + road_pm25_brake_impacts()$`LGV - Petrol - Euro 6d` + road_pm25_road_impacts()$`LGV - Petrol - Euro 6d`)
    road_ppm25_impacts$`LGV - Petrol - Euro 7` <- (road_pm25_exhaust_impacts()$`LGV - Petrol - Euro 7` + road_pm25_tyre_impacts()$`LGV - Petrol - Euro 7` + road_pm25_brake_impacts()$`LGV - Petrol - Euro 7` + road_pm25_road_impacts()$`LGV - Petrol - Euro 7`)
    road_ppm25_impacts$`LGV - Diesel - Euro 1` <- (road_pm25_exhaust_impacts()$`LGV - Diesel - Euro 1` + road_pm25_tyre_impacts()$`LGV - Diesel - Euro 1` + road_pm25_brake_impacts()$`LGV - Diesel - Euro 1` + road_pm25_road_impacts()$`LGV - Diesel - Euro 1`)
    road_ppm25_impacts$`LGV - Diesel - Euro 2` <- (road_pm25_exhaust_impacts()$`LGV - Diesel - Euro 2` + road_pm25_tyre_impacts()$`LGV - Diesel - Euro 2` + road_pm25_brake_impacts()$`LGV - Diesel - Euro 2` + road_pm25_road_impacts()$`LGV - Diesel - Euro 2`)
    road_ppm25_impacts$`LGV - Diesel - Euro 3` <- (road_pm25_exhaust_impacts()$`LGV - Diesel - Euro 3` + road_pm25_tyre_impacts()$`LGV - Diesel - Euro 3` + road_pm25_brake_impacts()$`LGV - Diesel - Euro 3` + road_pm25_road_impacts()$`LGV - Diesel - Euro 3`)
    road_ppm25_impacts$`LGV - Diesel - Euro 4` <- (road_pm25_exhaust_impacts()$`LGV - Diesel - Euro 4` + road_pm25_tyre_impacts()$`LGV - Diesel - Euro 4` + road_pm25_brake_impacts()$`LGV - Diesel - Euro 4` + road_pm25_road_impacts()$`LGV - Diesel - Euro 4`)
    road_ppm25_impacts$`LGV - Diesel - Euro 5a` <- (road_pm25_exhaust_impacts()$`LGV - Diesel - Euro 5a` + road_pm25_tyre_impacts()$`LGV - Diesel - Euro 5a` + road_pm25_brake_impacts()$`LGV - Diesel - Euro 5a` + road_pm25_road_impacts()$`LGV - Diesel - Euro 5a`)
    road_ppm25_impacts$`LGV - Diesel - Euro 5b` <- (road_pm25_exhaust_impacts()$`LGV - Diesel - Euro 5b` + road_pm25_tyre_impacts()$`LGV - Diesel - Euro 5b` + road_pm25_brake_impacts()$`LGV - Diesel - Euro 5b` + road_pm25_road_impacts()$`LGV - Diesel - Euro 5b`)
    road_ppm25_impacts$`LGV - Diesel - Euro 6b` <- (road_pm25_exhaust_impacts()$`LGV - Diesel - Euro 6b` + road_pm25_tyre_impacts()$`LGV - Diesel - Euro 6b` + road_pm25_brake_impacts()$`LGV - Diesel - Euro 6b` + road_pm25_road_impacts()$`LGV - Diesel - Euro 6b`)
    road_ppm25_impacts$`LGV - Diesel - Euro 6c` <- (road_pm25_exhaust_impacts()$`LGV - Diesel - Euro 6c` + road_pm25_tyre_impacts()$`LGV - Diesel - Euro 6c` + road_pm25_brake_impacts()$`LGV - Diesel - Euro 6c` + road_pm25_road_impacts()$`LGV - Diesel - Euro 6c`)
    road_ppm25_impacts$`LGV - Diesel - Euro 6d-Temp` <- (road_pm25_exhaust_impacts()$`LGV - Diesel - Euro 6d-Temp` + road_pm25_tyre_impacts()$`LGV - Diesel - Euro 6d-Temp` + road_pm25_brake_impacts()$`LGV - Diesel - Euro 6d-Temp` + road_pm25_road_impacts()$`LGV - Diesel - Euro 6d-Temp`)
    road_ppm25_impacts$`LGV - Diesel - Euro 6d` <- (road_pm25_exhaust_impacts()$`LGV - Diesel - Euro 6d` + road_pm25_tyre_impacts()$`LGV - Diesel - Euro 6d` + road_pm25_brake_impacts()$`LGV - Diesel - Euro 6d` + road_pm25_road_impacts()$`LGV - Diesel - Euro 6d`)
    road_ppm25_impacts$`LGV - Diesel - Euro 7` <- (road_pm25_exhaust_impacts()$`LGV - Diesel - Euro 7` + road_pm25_tyre_impacts()$`LGV - Diesel - Euro 7` + road_pm25_brake_impacts()$`LGV - Diesel - Euro 7` + road_pm25_road_impacts()$`LGV - Diesel - Euro 7`)
    road_ppm25_impacts$`LGV - PHEV (Petrol)` <- (road_pm25_exhaust_impacts()$`LGV - PHEV (Petrol)` + road_pm25_tyre_impacts()$`LGV - PHEV (Petrol)` + road_pm25_brake_impacts()$`LGV - PHEV (Petrol)` + road_pm25_road_impacts()$`LGV - PHEV (Petrol)`)
    road_ppm25_impacts$`LGV - PHEV (Diesel)` <- (road_pm25_exhaust_impacts()$`LGV - PHEV (Diesel)` + road_pm25_tyre_impacts()$`LGV - PHEV (Diesel)` + road_pm25_brake_impacts()$`LGV - PHEV (Diesel)` + road_pm25_road_impacts()$`LGV - PHEV (Diesel)`)
    road_ppm25_impacts$`LGV - Hydrogen Fuel Cell` <- (road_pm25_exhaust_impacts()$`LGV - Hydrogen Fuel Cell` + road_pm25_tyre_impacts()$`LGV - Hydrogen Fuel Cell` + road_pm25_brake_impacts()$`LGV - Hydrogen Fuel Cell` + road_pm25_road_impacts()$`LGV - Hydrogen Fuel Cell`)
    road_ppm25_impacts$`LGV - BEV` <- (road_pm25_exhaust_impacts()$`LGV - BEV` + road_pm25_tyre_impacts()$`LGV - BEV` + road_pm25_brake_impacts()$`LGV - BEV` + road_pm25_road_impacts()$`LGV - BEV`)
    road_ppm25_impacts$`HGV - CNG - Euro 1` <- (road_pm25_exhaust_impacts()$`HGV - CNG - Euro 1` + road_pm25_tyre_impacts()$`HGV - CNG - Euro 1` + road_pm25_brake_impacts()$`HGV - CNG - Euro 1` + road_pm25_road_impacts()$`HGV - CNG - Euro 1`)
    road_ppm25_impacts$`HGV - CNG - Euro 2` <- (road_pm25_exhaust_impacts()$`HGV - CNG - Euro 2` + road_pm25_tyre_impacts()$`HGV - CNG - Euro 2` + road_pm25_brake_impacts()$`HGV - CNG - Euro 2` + road_pm25_road_impacts()$`HGV - CNG - Euro 2`)
    road_ppm25_impacts$`HGV - CNG - Euro 3` <- (road_pm25_exhaust_impacts()$`HGV - CNG - Euro 3` + road_pm25_tyre_impacts()$`HGV - CNG - Euro 3` + road_pm25_brake_impacts()$`HGV - CNG - Euro 3` + road_pm25_road_impacts()$`HGV - CNG - Euro 3`)
    road_ppm25_impacts$`HGV - CNG - EEV` <- (road_pm25_exhaust_impacts()$`HGV - CNG - EEV` + road_pm25_tyre_impacts()$`HGV - CNG - EEV` + road_pm25_brake_impacts()$`HGV - CNG - EEV` + road_pm25_road_impacts()$`HGV - CNG - EEV`)
    road_ppm25_impacts$`HGV - Diesel - Euro 1` <- (road_pm25_exhaust_impacts()$`HGV - Diesel - Euro 1` + road_pm25_tyre_impacts()$`HGV - Diesel - Euro 1` + road_pm25_brake_impacts()$`HGV - Diesel - Euro 1` + road_pm25_road_impacts()$`HGV - Diesel - Euro 1`)
    road_ppm25_impacts$`HGV - Diesel - Euro 2` <- (road_pm25_exhaust_impacts()$`HGV - Diesel - Euro 2` + road_pm25_tyre_impacts()$`HGV - Diesel - Euro 2` + road_pm25_brake_impacts()$`HGV - Diesel - Euro 2` + road_pm25_road_impacts()$`HGV - Diesel - Euro 2`)
    road_ppm25_impacts$`HGV - Diesel - Euro 3` <- (road_pm25_exhaust_impacts()$`HGV - Diesel - Euro 3` + road_pm25_tyre_impacts()$`HGV - Diesel - Euro 3` + road_pm25_brake_impacts()$`HGV - Diesel - Euro 3` + road_pm25_road_impacts()$`HGV - Diesel - Euro 3`)
    road_ppm25_impacts$`HGV - Diesel - Euro 4` <- (road_pm25_exhaust_impacts()$`HGV - Diesel - Euro 4` + road_pm25_tyre_impacts()$`HGV - Diesel - Euro 4` + road_pm25_brake_impacts()$`HGV - Diesel - Euro 4` + road_pm25_road_impacts()$`HGV - Diesel - Euro 4`)
    road_ppm25_impacts$`HGV - Diesel - Euro 5` <- (road_pm25_exhaust_impacts()$`HGV - Diesel - Euro 5` + road_pm25_tyre_impacts()$`HGV - Diesel - Euro 5` + road_pm25_brake_impacts()$`HGV - Diesel - Euro 5` + road_pm25_road_impacts()$`HGV - Diesel - Euro 5`)
    road_ppm25_impacts$`HGV - Diesel - Euro 6` <- (road_pm25_exhaust_impacts()$`HGV - Diesel - Euro 6` + road_pm25_tyre_impacts()$`HGV - Diesel - Euro 6` + road_pm25_brake_impacts()$`HGV - Diesel - Euro 6` + road_pm25_road_impacts()$`HGV - Diesel - Euro 6`)
    road_ppm25_impacts$`HGV - Diesel - Euro 7` <- (road_pm25_exhaust_impacts()$`HGV - Diesel - Euro 7` + road_pm25_tyre_impacts()$`HGV - Diesel - Euro 7` + road_pm25_brake_impacts()$`HGV - Diesel - Euro 7` + road_pm25_road_impacts()$`HGV - Diesel - Euro 7`)
    road_ppm25_impacts$`HGV - PHEV (Diesel)` <- (road_pm25_exhaust_impacts()$`HGV - PHEV (Diesel)` + road_pm25_tyre_impacts()$`HGV - PHEV (Diesel)` + road_pm25_brake_impacts()$`HGV - PHEV (Diesel)` + road_pm25_road_impacts()$`HGV - PHEV (Diesel)`)
    road_ppm25_impacts$`HGV - Hydrogen Fuel Cell` <- (road_pm25_exhaust_impacts()$`HGV - Hydrogen Fuel Cell` + road_pm25_tyre_impacts()$`HGV - Hydrogen Fuel Cell` + road_pm25_brake_impacts()$`HGV - Hydrogen Fuel Cell` + road_pm25_road_impacts()$`HGV - Hydrogen Fuel Cell`)
    road_ppm25_impacts$`HGV - BEV` <- (road_pm25_exhaust_impacts()$`HGV - BEV` + road_pm25_tyre_impacts()$`HGV - BEV` + road_pm25_brake_impacts()$`HGV - BEV` + road_pm25_road_impacts()$`HGV - BEV`)
    road_ppm25_impacts$`Bus - CNG - Euro 1` <- (road_pm25_exhaust_impacts()$`Bus - CNG - Euro 1` + road_pm25_tyre_impacts()$`Bus - CNG - Euro 1` + road_pm25_brake_impacts()$`Bus - CNG - Euro 1` + road_pm25_road_impacts()$`Bus - CNG - Euro 1`)
    road_ppm25_impacts$`Bus - CNG - Euro 2` <- (road_pm25_exhaust_impacts()$`Bus - CNG - Euro 2` + road_pm25_tyre_impacts()$`Bus - CNG - Euro 2` + road_pm25_brake_impacts()$`Bus - CNG - Euro 2` + road_pm25_road_impacts()$`Bus - CNG - Euro 2`)
    road_ppm25_impacts$`Bus - CNG - Euro 3` <- (road_pm25_exhaust_impacts()$`Bus - CNG - Euro 3` + road_pm25_tyre_impacts()$`Bus - CNG - Euro 3` + road_pm25_brake_impacts()$`Bus - CNG - Euro 3` + road_pm25_road_impacts()$`Bus - CNG - Euro 3`)
    road_ppm25_impacts$`Bus - CNG - EEV` <- (road_pm25_exhaust_impacts()$`Bus - CNG - EEV` + road_pm25_tyre_impacts()$`Bus - CNG - EEV` + road_pm25_brake_impacts()$`Bus - CNG - EEV` + road_pm25_road_impacts()$`Bus - CNG - EEV`)
    road_ppm25_impacts$`Bus - Diesel - Euro 1` <- (road_pm25_exhaust_impacts()$`Bus - Diesel - Euro 1` + road_pm25_tyre_impacts()$`Bus - Diesel - Euro 1` + road_pm25_brake_impacts()$`Bus - Diesel - Euro 1` + road_pm25_road_impacts()$`Bus - Diesel - Euro 1`)
    road_ppm25_impacts$`Bus - Diesel - Euro 2` <- (road_pm25_exhaust_impacts()$`Bus - Diesel - Euro 2` + road_pm25_tyre_impacts()$`Bus - Diesel - Euro 2` + road_pm25_brake_impacts()$`Bus - Diesel - Euro 2` + road_pm25_road_impacts()$`Bus - Diesel - Euro 2`)
    road_ppm25_impacts$`Bus - Diesel - Euro 3` <- (road_pm25_exhaust_impacts()$`Bus - Diesel - Euro 3` + road_pm25_tyre_impacts()$`Bus - Diesel - Euro 3` + road_pm25_brake_impacts()$`Bus - Diesel - Euro 3` + road_pm25_road_impacts()$`Bus - Diesel - Euro 3`)
    road_ppm25_impacts$`Bus - Diesel - Euro 4` <- (road_pm25_exhaust_impacts()$`Bus - Diesel - Euro 4` + road_pm25_tyre_impacts()$`Bus - Diesel - Euro 4` + road_pm25_brake_impacts()$`Bus - Diesel - Euro 4` + road_pm25_road_impacts()$`Bus - Diesel - Euro 4`)
    road_ppm25_impacts$`Bus - Diesel - Euro 5` <- (road_pm25_exhaust_impacts()$`Bus - Diesel - Euro 5` + road_pm25_tyre_impacts()$`Bus - Diesel - Euro 5` + road_pm25_brake_impacts()$`Bus - Diesel - Euro 5` + road_pm25_road_impacts()$`Bus - Diesel - Euro 5`)
    road_ppm25_impacts$`Bus - Diesel - Euro 6` <- (road_pm25_exhaust_impacts()$`Bus - Diesel - Euro 6` + road_pm25_tyre_impacts()$`Bus - Diesel - Euro 6` + road_pm25_brake_impacts()$`Bus - Diesel - Euro 6` + road_pm25_road_impacts()$`Bus - Diesel - Euro 6`)
    road_ppm25_impacts$`Bus - Diesel - Euro 7` <- (road_pm25_exhaust_impacts()$`Bus - Diesel - Euro 7` + road_pm25_tyre_impacts()$`Bus - Diesel - Euro 7` + road_pm25_brake_impacts()$`Bus - Diesel - Euro 7` + road_pm25_road_impacts()$`Bus - Diesel - Euro 7`)
    road_ppm25_impacts$`Bus - PHEV (Diesel)` <- (road_pm25_exhaust_impacts()$`Bus - PHEV (Diesel)` + road_pm25_tyre_impacts()$`Bus - PHEV (Diesel)` + road_pm25_brake_impacts()$`Bus - PHEV (Diesel)` + road_pm25_road_impacts()$`Bus - PHEV (Diesel)`)
    road_ppm25_impacts$`Bus - Hydrogen Fuel Cell` <- (road_pm25_exhaust_impacts()$`Bus - Hydrogen Fuel Cell` + road_pm25_tyre_impacts()$`Bus - Hydrogen Fuel Cell` + road_pm25_brake_impacts()$`Bus - Hydrogen Fuel Cell` + road_pm25_road_impacts()$`Bus - Hydrogen Fuel Cell`)
    road_ppm25_impacts$`Bus - BEV` <- (road_pm25_exhaust_impacts()$`Bus - BEV` + road_pm25_tyre_impacts()$`Bus - BEV` + road_pm25_brake_impacts()$`Bus - BEV` + road_pm25_road_impacts()$`Bus - BEV`)
    road_ppm25_impacts$`Motorcycle - Petrol - Euro 1` <- (road_pm25_exhaust_impacts()$`Motorcycle - Petrol - Euro 1` + road_pm25_tyre_impacts()$`Motorcycle - Petrol - Euro 1` + road_pm25_brake_impacts()$`Motorcycle - Petrol - Euro 1` + road_pm25_road_impacts()$`Motorcycle - Petrol - Euro 1`)
    road_ppm25_impacts$`Motorcycle - Petrol - Euro 2` <- (road_pm25_exhaust_impacts()$`Motorcycle - Petrol - Euro 2` + road_pm25_tyre_impacts()$`Motorcycle - Petrol - Euro 2` + road_pm25_brake_impacts()$`Motorcycle - Petrol - Euro 2` + road_pm25_road_impacts()$`Motorcycle - Petrol - Euro 2`)
    road_ppm25_impacts$`Motorcycle - Petrol - Euro 3` <- (road_pm25_exhaust_impacts()$`Motorcycle - Petrol - Euro 3` + road_pm25_tyre_impacts()$`Motorcycle - Petrol - Euro 3` + road_pm25_brake_impacts()$`Motorcycle - Petrol - Euro 3` + road_pm25_road_impacts()$`Motorcycle - Petrol - Euro 3`)
    road_ppm25_impacts$`Motorcycle - Petrol - Euro 4` <- (road_pm25_exhaust_impacts()$`Motorcycle - Petrol - Euro 4` + road_pm25_tyre_impacts()$`Motorcycle - Petrol - Euro 4` + road_pm25_brake_impacts()$`Motorcycle - Petrol - Euro 4` + road_pm25_road_impacts()$`Motorcycle - Petrol - Euro 4`)
    road_ppm25_impacts$`Motorcycle - Petrol - Euro 5` <- (road_pm25_exhaust_impacts()$`Motorcycle - Petrol - Euro 5` + road_pm25_tyre_impacts()$`Motorcycle - Petrol - Euro 5` + road_pm25_brake_impacts()$`Motorcycle - Petrol - Euro 5` + road_pm25_road_impacts()$`Motorcycle - Petrol - Euro 5`)
    road_ppm25_impacts$`Motorcycle - Hydrogen Fuel Cell` <- (road_pm25_exhaust_impacts()$`Motorcycle - Hydrogen Fuel Cell` + road_pm25_tyre_impacts()$`Motorcycle - Hydrogen Fuel Cell` + road_pm25_brake_impacts()$`Motorcycle - Hydrogen Fuel Cell` + road_pm25_road_impacts()$`Motorcycle - Hydrogen Fuel Cell`)
    road_ppm25_impacts$`Motorcycle - Electric` <- (road_pm25_exhaust_impacts()$`Motorcycle - Electric` + road_pm25_tyre_impacts()$`Motorcycle - Electric` + road_pm25_brake_impacts()$`Motorcycle - Electric` + road_pm25_road_impacts()$`Motorcycle - Electric`)
    road_ppm25_impacts$`Total Impacts` <-  rowSums(road_ppm25_impacts[, 2:88], na.rm = TRUE)
    
    
    return(road_ppm25_impacts)
  
  })
  
  ##########################################################################################################################################################
  
  # Road Transport Secondary PM2.5/SIA Impacts
  
  # Road Transport SIA/Secondary PM2.5 Impacts - sum of sNOx, SO2, and NH3
  
  
  road_sia_impacts <- reactive({
    
    req(road_snox_impacts())
    req(road_so2_impacts())
    req(road_nh3_impacts())

    road_sia_impacts <- road_snox_impacts()[ , 1:88]
    
    road_sia_impacts$`Car - Petrol - Euro 1` <- (road_snox_impacts()$`Car - Petrol - Euro 1` + road_so2_impacts()$`Car - Petrol - Euro 1` + road_nh3_impacts()$`Car - Petrol - Euro 1`)
    road_sia_impacts$`Car - Petrol - Euro 2` <- (road_snox_impacts()$`Car - Petrol - Euro 2` + road_so2_impacts()$`Car - Petrol - Euro 2` + road_nh3_impacts()$`Car - Petrol - Euro 2`)
    road_sia_impacts$`Car - Petrol - Euro 3` <- (road_snox_impacts()$`Car - Petrol - Euro 3` + road_so2_impacts()$`Car - Petrol - Euro 3` + road_nh3_impacts()$`Car - Petrol - Euro 3`)
    road_sia_impacts$`Car - Petrol - Euro 4` <- (road_snox_impacts()$`Car - Petrol - Euro 4` + road_so2_impacts()$`Car - Petrol - Euro 4` + road_nh3_impacts()$`Car - Petrol - Euro 4`)
    road_sia_impacts$`Car - Petrol - Euro 5a` <- (road_snox_impacts()$`Car - Petrol - Euro 5a` + road_so2_impacts()$`Car - Petrol - Euro 5a` + road_nh3_impacts()$`Car - Petrol - Euro 5a`)
    road_sia_impacts$`Car - Petrol - Euro 5b` <- (road_snox_impacts()$`Car - Petrol - Euro 5b` + road_so2_impacts()$`Car - Petrol - Euro 5b` + road_nh3_impacts()$`Car - Petrol - Euro 5b`)
    road_sia_impacts$`Car - Petrol - Euro 6b` <- (road_snox_impacts()$`Car - Petrol - Euro 6b` + road_so2_impacts()$`Car - Petrol - Euro 6b` + road_nh3_impacts()$`Car - Petrol - Euro 6b`)
    road_sia_impacts$`Car - Petrol - Euro 6c` <- (road_snox_impacts()$`Car - Petrol - Euro 6c` + road_so2_impacts()$`Car - Petrol - Euro 6c` + road_nh3_impacts()$`Car - Petrol - Euro 6c`)
    road_sia_impacts$`Car - Petrol - Euro 6d-Temp` <- (road_snox_impacts()$`Car - Petrol - Euro 6d-Temp` + road_so2_impacts()$`Car - Petrol - Euro 6d-Temp` + road_nh3_impacts()$`Car - Petrol - Euro 6d-Temp`)
    road_sia_impacts$`Car - Petrol - Euro 6d` <- (road_snox_impacts()$`Car - Petrol - Euro 6d` + road_so2_impacts()$`Car - Petrol - Euro 6d` + road_nh3_impacts()$`Car - Petrol - Euro 6d`)
    road_sia_impacts$`Car - Petrol - Euro 7` <- (road_snox_impacts()$`Car - Petrol - Euro 7` + road_so2_impacts()$`Car - Petrol - Euro 7` + road_nh3_impacts()$`Car - Petrol - Euro 7`)
    road_sia_impacts$`Car - Diesel - Euro 1` <- (road_snox_impacts()$`Car - Diesel - Euro 1` + road_so2_impacts()$`Car - Diesel - Euro 1` + road_nh3_impacts()$`Car - Diesel - Euro 1`)
    road_sia_impacts$`Car - Diesel - Euro 2` <- (road_snox_impacts()$`Car - Diesel - Euro 2` + road_so2_impacts()$`Car - Diesel - Euro 2` + road_nh3_impacts()$`Car - Diesel - Euro 2`)
    road_sia_impacts$`Car - Diesel - Euro 3` <- (road_snox_impacts()$`Car - Diesel - Euro 3` + road_so2_impacts()$`Car - Diesel - Euro 3` + road_nh3_impacts()$`Car - Diesel - Euro 3`)
    road_sia_impacts$`Car - Diesel - Euro 4` <- (road_snox_impacts()$`Car - Diesel - Euro 4` + road_so2_impacts()$`Car - Diesel - Euro 4` + road_nh3_impacts()$`Car - Diesel - Euro 4`)
    road_sia_impacts$`Car - Diesel - Euro 5a` <- (road_snox_impacts()$`Car - Diesel - Euro 5a` + road_so2_impacts()$`Car - Diesel - Euro 5a` + road_nh3_impacts()$`Car - Diesel - Euro 5a`)
    road_sia_impacts$`Car - Diesel - Euro 5b` <- (road_snox_impacts()$`Car - Diesel - Euro 5b` + road_so2_impacts()$`Car - Diesel - Euro 5b` + road_nh3_impacts()$`Car - Diesel - Euro 5b`)
    road_sia_impacts$`Car - Diesel - Euro 6b` <- (road_snox_impacts()$`Car - Diesel - Euro 6b` + road_so2_impacts()$`Car - Diesel - Euro 6b` + road_nh3_impacts()$`Car - Diesel - Euro 6b`)
    road_sia_impacts$`Car - Diesel - Euro 6c` <- (road_snox_impacts()$`Car - Diesel - Euro 6c` + road_so2_impacts()$`Car - Diesel - Euro 6c` + road_nh3_impacts()$`Car - Diesel - Euro 6c`)
    road_sia_impacts$`Car - Diesel - Euro 6d-Temp` <- (road_snox_impacts()$`Car - Diesel - Euro 6d-Temp` + road_so2_impacts()$`Car - Diesel - Euro 6d-Temp` + road_nh3_impacts()$`Car - Diesel - Euro 6d-Temp`)
    road_sia_impacts$`Car - Diesel - Euro 6d` <- (road_snox_impacts()$`Car - Diesel - Euro 6d` + road_so2_impacts()$`Car - Diesel - Euro 6d` + road_nh3_impacts()$`Car - Diesel - Euro 6d`)
    road_sia_impacts$`Car - Diesel - Euro 7` <- (road_snox_impacts()$`Car - Diesel - Euro 7` + road_so2_impacts()$`Car - Diesel - Euro 7` + road_nh3_impacts()$`Car - Diesel - Euro 7`)
    road_sia_impacts$`Car - PHEV (Petrol)` <- (road_snox_impacts()$`Car - PHEV (Petrol)` + road_so2_impacts()$`Car - PHEV (Petrol)` + road_nh3_impacts()$`Car - PHEV (Petrol)`)
    road_sia_impacts$`Car - PHEV (Diesel)` <- (road_snox_impacts()$`Car - PHEV (Diesel)` + road_so2_impacts()$`Car - PHEV (Diesel)` + road_nh3_impacts()$`Car - PHEV (Diesel)`)
    road_sia_impacts$`Car - Hydrogen Fuel Cell` <- (road_snox_impacts()$`Car - Hydrogen Fuel Cell` + road_so2_impacts()$`Car - Hydrogen Fuel Cell` + road_nh3_impacts()$`Car - Hydrogen Fuel Cell`)
    road_sia_impacts$`Car - BEV` <- (road_snox_impacts()$`Car - BEV` + road_so2_impacts()$`Car - BEV` + road_nh3_impacts()$`Car - BEV`)
    road_sia_impacts$`LGV - Petrol - Euro 1` <- (road_snox_impacts()$`LGV - Petrol - Euro 1` + road_so2_impacts()$`LGV - Petrol - Euro 1` + road_nh3_impacts()$`LGV - Petrol - Euro 1`)
    road_sia_impacts$`LGV - Petrol - Euro 2` <- (road_snox_impacts()$`LGV - Petrol - Euro 2` + road_so2_impacts()$`LGV - Petrol - Euro 2` + road_nh3_impacts()$`LGV - Petrol - Euro 2`)
    road_sia_impacts$`LGV - Petrol - Euro 3` <- (road_snox_impacts()$`LGV - Petrol - Euro 3` + road_so2_impacts()$`LGV - Petrol - Euro 3` + road_nh3_impacts()$`LGV - Petrol - Euro 3`)
    road_sia_impacts$`LGV - Petrol - Euro 4` <- (road_snox_impacts()$`LGV - Petrol - Euro 4` + road_so2_impacts()$`LGV - Petrol - Euro 4` + road_nh3_impacts()$`LGV - Petrol - Euro 4`)
    road_sia_impacts$`LGV - Petrol - Euro 5a` <- (road_snox_impacts()$`LGV - Petrol - Euro 5a` + road_so2_impacts()$`LGV - Petrol - Euro 5a` + road_nh3_impacts()$`LGV - Petrol - Euro 5a`)
    road_sia_impacts$`LGV - Petrol - Euro 5b` <- (road_snox_impacts()$`LGV - Petrol - Euro 5b` + road_so2_impacts()$`LGV - Petrol - Euro 5b` + road_nh3_impacts()$`LGV - Petrol - Euro 5b`)
    road_sia_impacts$`LGV - Petrol - Euro 6b` <- (road_snox_impacts()$`LGV - Petrol - Euro 6b` + road_so2_impacts()$`LGV - Petrol - Euro 6b` + road_nh3_impacts()$`LGV - Petrol - Euro 6b`)
    road_sia_impacts$`LGV - Petrol - Euro 6c` <- (road_snox_impacts()$`LGV - Petrol - Euro 6c` + road_so2_impacts()$`LGV - Petrol - Euro 6c` + road_nh3_impacts()$`LGV - Petrol - Euro 6c`)
    road_sia_impacts$`LGV - Petrol - Euro 6d-Temp` <- (road_snox_impacts()$`LGV - Petrol - Euro 6d-Temp` + road_so2_impacts()$`LGV - Petrol - Euro 6d-Temp` + road_nh3_impacts()$`LGV - Petrol - Euro 6d-Temp`)
    road_sia_impacts$`LGV - Petrol - Euro 6d` <- (road_snox_impacts()$`LGV - Petrol - Euro 6d` + road_so2_impacts()$`LGV - Petrol - Euro 6d` + road_nh3_impacts()$`LGV - Petrol - Euro 6d`)
    road_sia_impacts$`LGV - Petrol - Euro 7` <- (road_snox_impacts()$`LGV - Petrol - Euro 7` + road_so2_impacts()$`LGV - Petrol - Euro 7` + road_nh3_impacts()$`LGV - Petrol - Euro 7`)
    road_sia_impacts$`LGV - Diesel - Euro 1` <- (road_snox_impacts()$`LGV - Diesel - Euro 1` + road_so2_impacts()$`LGV - Diesel - Euro 1` + road_nh3_impacts()$`LGV - Diesel - Euro 1`)
    road_sia_impacts$`LGV - Diesel - Euro 2` <- (road_snox_impacts()$`LGV - Diesel - Euro 2` + road_so2_impacts()$`LGV - Diesel - Euro 2` + road_nh3_impacts()$`LGV - Diesel - Euro 2`)
    road_sia_impacts$`LGV - Diesel - Euro 3` <- (road_snox_impacts()$`LGV - Diesel - Euro 3` + road_so2_impacts()$`LGV - Diesel - Euro 3` + road_nh3_impacts()$`LGV - Diesel - Euro 3`)
    road_sia_impacts$`LGV - Diesel - Euro 4` <- (road_snox_impacts()$`LGV - Diesel - Euro 4` + road_so2_impacts()$`LGV - Diesel - Euro 4` + road_nh3_impacts()$`LGV - Diesel - Euro 4`)
    road_sia_impacts$`LGV - Diesel - Euro 5a` <- (road_snox_impacts()$`LGV - Diesel - Euro 5a` + road_so2_impacts()$`LGV - Diesel - Euro 5a` + road_nh3_impacts()$`LGV - Diesel - Euro 5a`)
    road_sia_impacts$`LGV - Diesel - Euro 5b` <- (road_snox_impacts()$`LGV - Diesel - Euro 5b` + road_so2_impacts()$`LGV - Diesel - Euro 5b` + road_nh3_impacts()$`LGV - Diesel - Euro 5b`)
    road_sia_impacts$`LGV - Diesel - Euro 6b` <- (road_snox_impacts()$`LGV - Diesel - Euro 6b` + road_so2_impacts()$`LGV - Diesel - Euro 6b` + road_nh3_impacts()$`LGV - Diesel - Euro 6b`)
    road_sia_impacts$`LGV - Diesel - Euro 6c` <- (road_snox_impacts()$`LGV - Diesel - Euro 6c` + road_so2_impacts()$`LGV - Diesel - Euro 6c` + road_nh3_impacts()$`LGV - Diesel - Euro 6c`)
    road_sia_impacts$`LGV - Diesel - Euro 6d-Temp` <- (road_snox_impacts()$`LGV - Diesel - Euro 6d-Temp` + road_so2_impacts()$`LGV - Diesel - Euro 6d-Temp` + road_nh3_impacts()$`LGV - Diesel - Euro 6d-Temp`)
    road_sia_impacts$`LGV - Diesel - Euro 6d` <- (road_snox_impacts()$`LGV - Diesel - Euro 6d` + road_so2_impacts()$`LGV - Diesel - Euro 6d` + road_nh3_impacts()$`LGV - Diesel - Euro 6d`)
    road_sia_impacts$`LGV - Diesel - Euro 7` <- (road_snox_impacts()$`LGV - Diesel - Euro 7` + road_so2_impacts()$`LGV - Diesel - Euro 7` + road_nh3_impacts()$`LGV - Diesel - Euro 7`)
    road_sia_impacts$`LGV - PHEV (Petrol)` <- (road_snox_impacts()$`LGV - PHEV (Petrol)` + road_so2_impacts()$`LGV - PHEV (Petrol)` + road_nh3_impacts()$`LGV - PHEV (Petrol)`)
    road_sia_impacts$`LGV - PHEV (Diesel)` <- (road_snox_impacts()$`LGV - PHEV (Diesel)` + road_so2_impacts()$`LGV - PHEV (Diesel)` + road_nh3_impacts()$`LGV - PHEV (Diesel)`)
    road_sia_impacts$`LGV - Hydrogen Fuel Cell` <- (road_snox_impacts()$`LGV - Hydrogen Fuel Cell` + road_so2_impacts()$`LGV - Hydrogen Fuel Cell` + road_nh3_impacts()$`LGV - Hydrogen Fuel Cell`)
    road_sia_impacts$`LGV - BEV` <- (road_snox_impacts()$`LGV - BEV` + road_so2_impacts()$`LGV - BEV` + road_nh3_impacts()$`LGV - BEV`)
    road_sia_impacts$`HGV - CNG - Euro 1` <- (road_snox_impacts()$`HGV - CNG - Euro 1` + road_so2_impacts()$`HGV - CNG - Euro 1` + road_nh3_impacts()$`HGV - CNG - Euro 1`)
    road_sia_impacts$`HGV - CNG - Euro 2` <- (road_snox_impacts()$`HGV - CNG - Euro 2` + road_so2_impacts()$`HGV - CNG - Euro 2` + road_nh3_impacts()$`HGV - CNG - Euro 2`)
    road_sia_impacts$`HGV - CNG - Euro 3` <- (road_snox_impacts()$`HGV - CNG - Euro 3` + road_so2_impacts()$`HGV - CNG - Euro 3` + road_nh3_impacts()$`HGV - CNG - Euro 3`)
    road_sia_impacts$`HGV - CNG - EEV` <- (road_snox_impacts()$`HGV - CNG - EEV` + road_so2_impacts()$`HGV - CNG - EEV` + road_nh3_impacts()$`HGV - CNG - EEV`)
    road_sia_impacts$`HGV - Diesel - Euro 1` <- (road_snox_impacts()$`HGV - Diesel - Euro 1` + road_so2_impacts()$`HGV - Diesel - Euro 1` + road_nh3_impacts()$`HGV - Diesel - Euro 1`)
    road_sia_impacts$`HGV - Diesel - Euro 2` <- (road_snox_impacts()$`HGV - Diesel - Euro 2` + road_so2_impacts()$`HGV - Diesel - Euro 2` + road_nh3_impacts()$`HGV - Diesel - Euro 2`)
    road_sia_impacts$`HGV - Diesel - Euro 3` <- (road_snox_impacts()$`HGV - Diesel - Euro 3` + road_so2_impacts()$`HGV - Diesel - Euro 3` + road_nh3_impacts()$`HGV - Diesel - Euro 3`)
    road_sia_impacts$`HGV - Diesel - Euro 4` <- (road_snox_impacts()$`HGV - Diesel - Euro 4` + road_so2_impacts()$`HGV - Diesel - Euro 4` + road_nh3_impacts()$`HGV - Diesel - Euro 4`)
    road_sia_impacts$`HGV - Diesel - Euro 5` <- (road_snox_impacts()$`HGV - Diesel - Euro 5` + road_so2_impacts()$`HGV - Diesel - Euro 5` + road_nh3_impacts()$`HGV - Diesel - Euro 5`)
    road_sia_impacts$`HGV - Diesel - Euro 6` <- (road_snox_impacts()$`HGV - Diesel - Euro 6` + road_so2_impacts()$`HGV - Diesel - Euro 6` + road_nh3_impacts()$`HGV - Diesel - Euro 6`)
    road_sia_impacts$`HGV - Diesel - Euro 7` <- (road_snox_impacts()$`HGV - Diesel - Euro 7` + road_so2_impacts()$`HGV - Diesel - Euro 7` + road_nh3_impacts()$`HGV - Diesel - Euro 7`)
    road_sia_impacts$`HGV - PHEV (Diesel)` <- (road_snox_impacts()$`HGV - PHEV (Diesel)` + road_so2_impacts()$`HGV - PHEV (Diesel)` + road_nh3_impacts()$`HGV - PHEV (Diesel)`)
    road_sia_impacts$`HGV - Hydrogen Fuel Cell` <- (road_snox_impacts()$`HGV - Hydrogen Fuel Cell` + road_so2_impacts()$`HGV - Hydrogen Fuel Cell` + road_nh3_impacts()$`HGV - Hydrogen Fuel Cell`)
    road_sia_impacts$`HGV - BEV` <- (road_snox_impacts()$`HGV - BEV` + road_so2_impacts()$`HGV - BEV` + road_nh3_impacts()$`HGV - BEV`)
    road_sia_impacts$`Bus - CNG - Euro 1` <- (road_snox_impacts()$`Bus - CNG - Euro 1` + road_so2_impacts()$`Bus - CNG - Euro 1` + road_nh3_impacts()$`Bus - CNG - Euro 1`)
    road_sia_impacts$`Bus - CNG - Euro 2` <- (road_snox_impacts()$`Bus - CNG - Euro 2` + road_so2_impacts()$`Bus - CNG - Euro 2` + road_nh3_impacts()$`Bus - CNG - Euro 2`)
    road_sia_impacts$`Bus - CNG - Euro 3` <- (road_snox_impacts()$`Bus - CNG - Euro 3` + road_so2_impacts()$`Bus - CNG - Euro 3` + road_nh3_impacts()$`Bus - CNG - Euro 3`)
    road_sia_impacts$`Bus - CNG - EEV` <- (road_snox_impacts()$`Bus - CNG - EEV` + road_so2_impacts()$`Bus - CNG - EEV` + road_nh3_impacts()$`Bus - CNG - EEV`)
    road_sia_impacts$`Bus - Diesel - Euro 1` <- (road_snox_impacts()$`Bus - Diesel - Euro 1` + road_so2_impacts()$`Bus - Diesel - Euro 1` + road_nh3_impacts()$`Bus - Diesel - Euro 1`)
    road_sia_impacts$`Bus - Diesel - Euro 2` <- (road_snox_impacts()$`Bus - Diesel - Euro 2` + road_so2_impacts()$`Bus - Diesel - Euro 2` + road_nh3_impacts()$`Bus - Diesel - Euro 2`)
    road_sia_impacts$`Bus - Diesel - Euro 3` <- (road_snox_impacts()$`Bus - Diesel - Euro 3` + road_so2_impacts()$`Bus - Diesel - Euro 3` + road_nh3_impacts()$`Bus - Diesel - Euro 3`)
    road_sia_impacts$`Bus - Diesel - Euro 4` <- (road_snox_impacts()$`Bus - Diesel - Euro 4` + road_so2_impacts()$`Bus - Diesel - Euro 4` + road_nh3_impacts()$`Bus - Diesel - Euro 4`)
    road_sia_impacts$`Bus - Diesel - Euro 5` <- (road_snox_impacts()$`Bus - Diesel - Euro 5` + road_so2_impacts()$`Bus - Diesel - Euro 5` + road_nh3_impacts()$`Bus - Diesel - Euro 5`)
    road_sia_impacts$`Bus - Diesel - Euro 6` <- (road_snox_impacts()$`Bus - Diesel - Euro 6` + road_so2_impacts()$`Bus - Diesel - Euro 6` + road_nh3_impacts()$`Bus - Diesel - Euro 6`)
    road_sia_impacts$`Bus - Diesel - Euro 7` <- (road_snox_impacts()$`Bus - Diesel - Euro 7` + road_so2_impacts()$`Bus - Diesel - Euro 7` + road_nh3_impacts()$`Bus - Diesel - Euro 7`)
    road_sia_impacts$`Bus - PHEV (Diesel)` <- (road_snox_impacts()$`Bus - PHEV (Diesel)` + road_so2_impacts()$`Bus - PHEV (Diesel)` + road_nh3_impacts()$`Bus - PHEV (Diesel)`)
    road_sia_impacts$`Bus - Hydrogen Fuel Cell` <- (road_snox_impacts()$`Bus - Hydrogen Fuel Cell` + road_so2_impacts()$`Bus - Hydrogen Fuel Cell` + road_nh3_impacts()$`Bus - Hydrogen Fuel Cell`)
    road_sia_impacts$`Bus - BEV` <- (road_snox_impacts()$`Bus - BEV` + road_so2_impacts()$`Bus - BEV` + road_nh3_impacts()$`Bus - BEV`)
    road_sia_impacts$`Motorcycle - Petrol - Euro 1` <- (road_snox_impacts()$`Motorcycle - Petrol - Euro 1` + road_so2_impacts()$`Motorcycle - Petrol - Euro 1` + road_nh3_impacts()$`Motorcycle - Petrol - Euro 1`)
    road_sia_impacts$`Motorcycle - Petrol - Euro 2` <- (road_snox_impacts()$`Motorcycle - Petrol - Euro 2` + road_so2_impacts()$`Motorcycle - Petrol - Euro 2` + road_nh3_impacts()$`Motorcycle - Petrol - Euro 2`)
    road_sia_impacts$`Motorcycle - Petrol - Euro 3` <- (road_snox_impacts()$`Motorcycle - Petrol - Euro 3` + road_so2_impacts()$`Motorcycle - Petrol - Euro 3` + road_nh3_impacts()$`Motorcycle - Petrol - Euro 3`)
    road_sia_impacts$`Motorcycle - Petrol - Euro 4` <- (road_snox_impacts()$`Motorcycle - Petrol - Euro 4` + road_so2_impacts()$`Motorcycle - Petrol - Euro 4` + road_nh3_impacts()$`Motorcycle - Petrol - Euro 4`)
    road_sia_impacts$`Motorcycle - Petrol - Euro 5` <- (road_snox_impacts()$`Motorcycle - Petrol - Euro 5` + road_so2_impacts()$`Motorcycle - Petrol - Euro 5` + road_nh3_impacts()$`Motorcycle - Petrol - Euro 5`)
    road_sia_impacts$`Motorcycle - Hydrogen Fuel Cell` <- (road_snox_impacts()$`Motorcycle - Hydrogen Fuel Cell` + road_so2_impacts()$`Motorcycle - Hydrogen Fuel Cell` + road_nh3_impacts()$`Motorcycle - Hydrogen Fuel Cell`)
    road_sia_impacts$`Motorcycle - Electric` <- (road_snox_impacts()$`Motorcycle - Electric` + road_so2_impacts()$`Motorcycle - Electric` + road_nh3_impacts()$`Motorcycle - Electric`)
    road_sia_impacts$`Total Impacts` <-  rowSums(road_sia_impacts[, 2:88], na.rm = TRUE)
    
    
    return(road_sia_impacts)
    
  })
  
  
  ##########################################################################################################################################################
  
  # Road Transport Total PM2.5 Impacts
  
  # Road Transport Total PM2.5 Impacts - sum of SIA and PPM2.5
  
  
  road_tpm25_impacts <- reactive({
    
    req(road_ppm25_impacts())
    req(road_sia_impacts())

    road_tpm25_impacts <- road_ppm25_impacts()[ , 1:88]
    
    road_tpm25_impacts$`Car - Petrol - Euro 1` <- (road_ppm25_impacts()$`Car - Petrol - Euro 1` + road_sia_impacts()$`Car - Petrol - Euro 1`)
    road_tpm25_impacts$`Car - Petrol - Euro 2` <- (road_ppm25_impacts()$`Car - Petrol - Euro 2` + road_sia_impacts()$`Car - Petrol - Euro 2`)
    road_tpm25_impacts$`Car - Petrol - Euro 3` <- (road_ppm25_impacts()$`Car - Petrol - Euro 3` + road_sia_impacts()$`Car - Petrol - Euro 3`)
    road_tpm25_impacts$`Car - Petrol - Euro 4` <- (road_ppm25_impacts()$`Car - Petrol - Euro 4` + road_sia_impacts()$`Car - Petrol - Euro 4`)
    road_tpm25_impacts$`Car - Petrol - Euro 5a` <- (road_ppm25_impacts()$`Car - Petrol - Euro 5a` + road_sia_impacts()$`Car - Petrol - Euro 5a`)
    road_tpm25_impacts$`Car - Petrol - Euro 5b` <- (road_ppm25_impacts()$`Car - Petrol - Euro 5b` + road_sia_impacts()$`Car - Petrol - Euro 5b`)
    road_tpm25_impacts$`Car - Petrol - Euro 6b` <- (road_ppm25_impacts()$`Car - Petrol - Euro 6b` + road_sia_impacts()$`Car - Petrol - Euro 6b`)
    road_tpm25_impacts$`Car - Petrol - Euro 6c` <- (road_ppm25_impacts()$`Car - Petrol - Euro 6c` + road_sia_impacts()$`Car - Petrol - Euro 6c`)
    road_tpm25_impacts$`Car - Petrol - Euro 6d-Temp` <- (road_ppm25_impacts()$`Car - Petrol - Euro 6d-Temp` + road_sia_impacts()$`Car - Petrol - Euro 6d-Temp`)
    road_tpm25_impacts$`Car - Petrol - Euro 6d` <- (road_ppm25_impacts()$`Car - Petrol - Euro 6d` + road_sia_impacts()$`Car - Petrol - Euro 6d`)
    road_tpm25_impacts$`Car - Petrol - Euro 7` <- (road_ppm25_impacts()$`Car - Petrol - Euro 7` + road_sia_impacts()$`Car - Petrol - Euro 7`)
    road_tpm25_impacts$`Car - Diesel - Euro 1` <- (road_ppm25_impacts()$`Car - Diesel - Euro 1` + road_sia_impacts()$`Car - Diesel - Euro 1`)
    road_tpm25_impacts$`Car - Diesel - Euro 2` <- (road_ppm25_impacts()$`Car - Diesel - Euro 2` + road_sia_impacts()$`Car - Diesel - Euro 2`)
    road_tpm25_impacts$`Car - Diesel - Euro 3` <- (road_ppm25_impacts()$`Car - Diesel - Euro 3` + road_sia_impacts()$`Car - Diesel - Euro 3`)
    road_tpm25_impacts$`Car - Diesel - Euro 4` <- (road_ppm25_impacts()$`Car - Diesel - Euro 4` + road_sia_impacts()$`Car - Diesel - Euro 4`)
    road_tpm25_impacts$`Car - Diesel - Euro 5a` <- (road_ppm25_impacts()$`Car - Diesel - Euro 5a` + road_sia_impacts()$`Car - Diesel - Euro 5a`)
    road_tpm25_impacts$`Car - Diesel - Euro 5b` <- (road_ppm25_impacts()$`Car - Diesel - Euro 5b` + road_sia_impacts()$`Car - Diesel - Euro 5b`)
    road_tpm25_impacts$`Car - Diesel - Euro 6b` <- (road_ppm25_impacts()$`Car - Diesel - Euro 6b` + road_sia_impacts()$`Car - Diesel - Euro 6b`)
    road_tpm25_impacts$`Car - Diesel - Euro 6c` <- (road_ppm25_impacts()$`Car - Diesel - Euro 6c` + road_sia_impacts()$`Car - Diesel - Euro 6c`)
    road_tpm25_impacts$`Car - Diesel - Euro 6d-Temp` <- (road_ppm25_impacts()$`Car - Diesel - Euro 6d-Temp` + road_sia_impacts()$`Car - Diesel - Euro 6d-Temp`)
    road_tpm25_impacts$`Car - Diesel - Euro 6d` <- (road_ppm25_impacts()$`Car - Diesel - Euro 6d` + road_sia_impacts()$`Car - Diesel - Euro 6d`)
    road_tpm25_impacts$`Car - Diesel - Euro 7` <- (road_ppm25_impacts()$`Car - Diesel - Euro 7` + road_sia_impacts()$`Car - Diesel - Euro 7`)
    road_tpm25_impacts$`Car - PHEV (Petrol)` <- (road_ppm25_impacts()$`Car - PHEV (Petrol)` + road_sia_impacts()$`Car - PHEV (Petrol)`)
    road_tpm25_impacts$`Car - PHEV (Diesel)` <- (road_ppm25_impacts()$`Car - PHEV (Diesel)` + road_sia_impacts()$`Car - PHEV (Diesel)`)
    road_tpm25_impacts$`Car - Hydrogen Fuel Cell` <- (road_ppm25_impacts()$`Car - Hydrogen Fuel Cell` + road_sia_impacts()$`Car - Hydrogen Fuel Cell`)
    road_tpm25_impacts$`Car - BEV` <- (road_ppm25_impacts()$`Car - BEV` + road_sia_impacts()$`Car - BEV`)
    road_tpm25_impacts$`LGV - Petrol - Euro 1` <- (road_ppm25_impacts()$`LGV - Petrol - Euro 1` + road_sia_impacts()$`LGV - Petrol - Euro 1`)
    road_tpm25_impacts$`LGV - Petrol - Euro 2` <- (road_ppm25_impacts()$`LGV - Petrol - Euro 2` + road_sia_impacts()$`LGV - Petrol - Euro 2`)
    road_tpm25_impacts$`LGV - Petrol - Euro 3` <- (road_ppm25_impacts()$`LGV - Petrol - Euro 3` + road_sia_impacts()$`LGV - Petrol - Euro 3`)
    road_tpm25_impacts$`LGV - Petrol - Euro 4` <- (road_ppm25_impacts()$`LGV - Petrol - Euro 4` + road_sia_impacts()$`LGV - Petrol - Euro 4`)
    road_tpm25_impacts$`LGV - Petrol - Euro 5a` <- (road_ppm25_impacts()$`LGV - Petrol - Euro 5a` + road_sia_impacts()$`LGV - Petrol - Euro 5a`)
    road_tpm25_impacts$`LGV - Petrol - Euro 5b` <- (road_ppm25_impacts()$`LGV - Petrol - Euro 5b` + road_sia_impacts()$`LGV - Petrol - Euro 5b`)
    road_tpm25_impacts$`LGV - Petrol - Euro 6b` <- (road_ppm25_impacts()$`LGV - Petrol - Euro 6b` + road_sia_impacts()$`LGV - Petrol - Euro 6b`)
    road_tpm25_impacts$`LGV - Petrol - Euro 6c` <- (road_ppm25_impacts()$`LGV - Petrol - Euro 6c` + road_sia_impacts()$`LGV - Petrol - Euro 6c`)
    road_tpm25_impacts$`LGV - Petrol - Euro 6d-Temp` <- (road_ppm25_impacts()$`LGV - Petrol - Euro 6d-Temp` + road_sia_impacts()$`LGV - Petrol - Euro 6d-Temp`)
    road_tpm25_impacts$`LGV - Petrol - Euro 6d` <- (road_ppm25_impacts()$`LGV - Petrol - Euro 6d` + road_sia_impacts()$`LGV - Petrol - Euro 6d`)
    road_tpm25_impacts$`LGV - Petrol - Euro 7` <- (road_ppm25_impacts()$`LGV - Petrol - Euro 7` + road_sia_impacts()$`LGV - Petrol - Euro 7`)
    road_tpm25_impacts$`LGV - Diesel - Euro 1` <- (road_ppm25_impacts()$`LGV - Diesel - Euro 1` + road_sia_impacts()$`LGV - Diesel - Euro 1`)
    road_tpm25_impacts$`LGV - Diesel - Euro 2` <- (road_ppm25_impacts()$`LGV - Diesel - Euro 2` + road_sia_impacts()$`LGV - Diesel - Euro 2`)
    road_tpm25_impacts$`LGV - Diesel - Euro 3` <- (road_ppm25_impacts()$`LGV - Diesel - Euro 3` + road_sia_impacts()$`LGV - Diesel - Euro 3`)
    road_tpm25_impacts$`LGV - Diesel - Euro 4` <- (road_ppm25_impacts()$`LGV - Diesel - Euro 4` + road_sia_impacts()$`LGV - Diesel - Euro 4`)
    road_tpm25_impacts$`LGV - Diesel - Euro 5a` <- (road_ppm25_impacts()$`LGV - Diesel - Euro 5a` + road_sia_impacts()$`LGV - Diesel - Euro 5a`)
    road_tpm25_impacts$`LGV - Diesel - Euro 5b` <- (road_ppm25_impacts()$`LGV - Diesel - Euro 5b` + road_sia_impacts()$`LGV - Diesel - Euro 5b`)
    road_tpm25_impacts$`LGV - Diesel - Euro 6b` <- (road_ppm25_impacts()$`LGV - Diesel - Euro 6b` + road_sia_impacts()$`LGV - Diesel - Euro 6b`)
    road_tpm25_impacts$`LGV - Diesel - Euro 6c` <- (road_ppm25_impacts()$`LGV - Diesel - Euro 6c` + road_sia_impacts()$`LGV - Diesel - Euro 6c`)
    road_tpm25_impacts$`LGV - Diesel - Euro 6d-Temp` <- (road_ppm25_impacts()$`LGV - Diesel - Euro 6d-Temp` + road_sia_impacts()$`LGV - Diesel - Euro 6d-Temp`)
    road_tpm25_impacts$`LGV - Diesel - Euro 6d` <- (road_ppm25_impacts()$`LGV - Diesel - Euro 6d` + road_sia_impacts()$`LGV - Diesel - Euro 6d`)
    road_tpm25_impacts$`LGV - Diesel - Euro 7` <- (road_ppm25_impacts()$`LGV - Diesel - Euro 7` + road_sia_impacts()$`LGV - Diesel - Euro 7`)
    road_tpm25_impacts$`LGV - PHEV (Petrol)` <- (road_ppm25_impacts()$`LGV - PHEV (Petrol)` + road_sia_impacts()$`LGV - PHEV (Petrol)`)
    road_tpm25_impacts$`LGV - PHEV (Diesel)` <- (road_ppm25_impacts()$`LGV - PHEV (Diesel)` + road_sia_impacts()$`LGV - PHEV (Diesel)`)
    road_tpm25_impacts$`LGV - Hydrogen Fuel Cell` <- (road_ppm25_impacts()$`LGV - Hydrogen Fuel Cell` + road_sia_impacts()$`LGV - Hydrogen Fuel Cell`)
    road_tpm25_impacts$`LGV - BEV` <- (road_ppm25_impacts()$`LGV - BEV` + road_sia_impacts()$`LGV - BEV`)
    road_tpm25_impacts$`HGV - CNG - Euro 1` <- (road_ppm25_impacts()$`HGV - CNG - Euro 1` + road_sia_impacts()$`HGV - CNG - Euro 1`)
    road_tpm25_impacts$`HGV - CNG - Euro 2` <- (road_ppm25_impacts()$`HGV - CNG - Euro 2` + road_sia_impacts()$`HGV - CNG - Euro 2`)
    road_tpm25_impacts$`HGV - CNG - Euro 3` <- (road_ppm25_impacts()$`HGV - CNG - Euro 3` + road_sia_impacts()$`HGV - CNG - Euro 3`)
    road_tpm25_impacts$`HGV - CNG - EEV` <- (road_ppm25_impacts()$`HGV - CNG - EEV` + road_sia_impacts()$`HGV - CNG - EEV`)
    road_tpm25_impacts$`HGV - Diesel - Euro 1` <- (road_ppm25_impacts()$`HGV - Diesel - Euro 1` + road_sia_impacts()$`HGV - Diesel - Euro 1`)
    road_tpm25_impacts$`HGV - Diesel - Euro 2` <- (road_ppm25_impacts()$`HGV - Diesel - Euro 2` + road_sia_impacts()$`HGV - Diesel - Euro 2`)
    road_tpm25_impacts$`HGV - Diesel - Euro 3` <- (road_ppm25_impacts()$`HGV - Diesel - Euro 3` + road_sia_impacts()$`HGV - Diesel - Euro 3`)
    road_tpm25_impacts$`HGV - Diesel - Euro 4` <- (road_ppm25_impacts()$`HGV - Diesel - Euro 4` + road_sia_impacts()$`HGV - Diesel - Euro 4`)
    road_tpm25_impacts$`HGV - Diesel - Euro 5` <- (road_ppm25_impacts()$`HGV - Diesel - Euro 5` + road_sia_impacts()$`HGV - Diesel - Euro 5`)
    road_tpm25_impacts$`HGV - Diesel - Euro 6` <- (road_ppm25_impacts()$`HGV - Diesel - Euro 6` + road_sia_impacts()$`HGV - Diesel - Euro 6`)
    road_tpm25_impacts$`HGV - Diesel - Euro 7` <- (road_ppm25_impacts()$`HGV - Diesel - Euro 7` + road_sia_impacts()$`HGV - Diesel - Euro 7`)
    road_tpm25_impacts$`HGV - PHEV (Diesel)` <- (road_ppm25_impacts()$`HGV - PHEV (Diesel)` + road_sia_impacts()$`HGV - PHEV (Diesel)`)
    road_tpm25_impacts$`HGV - Hydrogen Fuel Cell` <- (road_ppm25_impacts()$`HGV - Hydrogen Fuel Cell` + road_sia_impacts()$`HGV - Hydrogen Fuel Cell`)
    road_tpm25_impacts$`HGV - BEV` <- (road_ppm25_impacts()$`HGV - BEV` + road_sia_impacts()$`HGV - BEV`)
    road_tpm25_impacts$`Bus - CNG - Euro 1` <- (road_ppm25_impacts()$`Bus - CNG - Euro 1` + road_sia_impacts()$`Bus - CNG - Euro 1`)
    road_tpm25_impacts$`Bus - CNG - Euro 2` <- (road_ppm25_impacts()$`Bus - CNG - Euro 2` + road_sia_impacts()$`Bus - CNG - Euro 2`)
    road_tpm25_impacts$`Bus - CNG - Euro 3` <- (road_ppm25_impacts()$`Bus - CNG - Euro 3` + road_sia_impacts()$`Bus - CNG - Euro 3`)
    road_tpm25_impacts$`Bus - CNG - EEV` <- (road_ppm25_impacts()$`Bus - CNG - EEV` + road_sia_impacts()$`Bus - CNG - EEV`)
    road_tpm25_impacts$`Bus - Diesel - Euro 1` <- (road_ppm25_impacts()$`Bus - Diesel - Euro 1` + road_sia_impacts()$`Bus - Diesel - Euro 1`)
    road_tpm25_impacts$`Bus - Diesel - Euro 2` <- (road_ppm25_impacts()$`Bus - Diesel - Euro 2` + road_sia_impacts()$`Bus - Diesel - Euro 2`)
    road_tpm25_impacts$`Bus - Diesel - Euro 3` <- (road_ppm25_impacts()$`Bus - Diesel - Euro 3` + road_sia_impacts()$`Bus - Diesel - Euro 3`)
    road_tpm25_impacts$`Bus - Diesel - Euro 4` <- (road_ppm25_impacts()$`Bus - Diesel - Euro 4` + road_sia_impacts()$`Bus - Diesel - Euro 4`)
    road_tpm25_impacts$`Bus - Diesel - Euro 5` <- (road_ppm25_impacts()$`Bus - Diesel - Euro 5` + road_sia_impacts()$`Bus - Diesel - Euro 5`)
    road_tpm25_impacts$`Bus - Diesel - Euro 6` <- (road_ppm25_impacts()$`Bus - Diesel - Euro 6` + road_sia_impacts()$`Bus - Diesel - Euro 6`)
    road_tpm25_impacts$`Bus - Diesel - Euro 7` <- (road_ppm25_impacts()$`Bus - Diesel - Euro 7` + road_sia_impacts()$`Bus - Diesel - Euro 7`)
    road_tpm25_impacts$`Bus - PHEV (Diesel)` <- (road_ppm25_impacts()$`Bus - PHEV (Diesel)` + road_sia_impacts()$`Bus - PHEV (Diesel)`)
    road_tpm25_impacts$`Bus - Hydrogen Fuel Cell` <- (road_ppm25_impacts()$`Bus - Hydrogen Fuel Cell` + road_sia_impacts()$`Bus - Hydrogen Fuel Cell`)
    road_tpm25_impacts$`Bus - BEV` <- (road_ppm25_impacts()$`Bus - BEV` + road_sia_impacts()$`Bus - BEV`)
    road_tpm25_impacts$`Motorcycle - Petrol - Euro 1` <- (road_ppm25_impacts()$`Motorcycle - Petrol - Euro 1` + road_sia_impacts()$`Motorcycle - Petrol - Euro 1`)
    road_tpm25_impacts$`Motorcycle - Petrol - Euro 2` <- (road_ppm25_impacts()$`Motorcycle - Petrol - Euro 2` + road_sia_impacts()$`Motorcycle - Petrol - Euro 2`)
    road_tpm25_impacts$`Motorcycle - Petrol - Euro 3` <- (road_ppm25_impacts()$`Motorcycle - Petrol - Euro 3` + road_sia_impacts()$`Motorcycle - Petrol - Euro 3`)
    road_tpm25_impacts$`Motorcycle - Petrol - Euro 4` <- (road_ppm25_impacts()$`Motorcycle - Petrol - Euro 4` + road_sia_impacts()$`Motorcycle - Petrol - Euro 4`)
    road_tpm25_impacts$`Motorcycle - Petrol - Euro 5` <- (road_ppm25_impacts()$`Motorcycle - Petrol - Euro 5` + road_sia_impacts()$`Motorcycle - Petrol - Euro 5`)
    road_tpm25_impacts$`Motorcycle - Hydrogen Fuel Cell` <- (road_ppm25_impacts()$`Motorcycle - Hydrogen Fuel Cell` + road_sia_impacts()$`Motorcycle - Hydrogen Fuel Cell`)
    road_tpm25_impacts$`Motorcycle - Electric` <- (road_ppm25_impacts()$`Motorcycle - Electric` + road_sia_impacts()$`Motorcycle - Electric`)
    road_tpm25_impacts$`Total Impacts` <-  rowSums(road_tpm25_impacts[, 2:88], na.rm = TRUE)
    
    
    return(road_tpm25_impacts)
    
  })
  
  # Plot Output
  
  output$road_tpm25 <- renderPlotly({
    
    req(road_tpm25_impacts())
    
    long_road_tpm25_impacts <- melt(road_tpm25_impacts()[ , 1:89], id.vars = "Year", variable.name = "Source", value.name = "Impacts", na.rm = TRUE)
    
    p <- ggplot(long_road_tpm25_impacts, aes(Year, Impacts, col = Source)) +
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
  
  
  
  ###################################################################################################
  
  ###################################################################################################
  
  # Damage Costs - using /-1000 to get units in ng m-3, but also to flip units so savings pp are +ve and losses pp are -ve
  
  # Electricity Generation NOx Impacts - damage costs per change in PWMC per person - currently deals with primary NOx only
  
  output$Elec_PWMC_Costs_nox <- renderValueBox({
    
    req(df_elec_nox_impacts())
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
     elec_pwmc_value_nox <- valueBox(
       
       round((((last(df_elec_nox_impacts()$`Total Impact`)-first(df_elec_nox_impacts()$`Total Impact`))) * (damage_costs_nox/-1000)), 4), 
               "Electricity NOx Savings (£ per person)", icon = icon("bolt"), color = "purple")
     
     return(elec_pwmc_value_nox)
      
      
    }
    
    else {
      
      elec_pwmc_value_nox <- valueBox(
        
        round((((last(df_elec_nox_impacts()$`Total Impact`)-first(df_elec_nox_impacts()$`Total Impact`))) * (damage_costs_nox/-1000)), 4), 
        "Electricity NOx Savings (£ per person per TWh)", icon = icon("bolt"), color = "purple")
      
      return(elec_pwmc_value_nox)
      
    }
    
    
  })
  

################################################################################
# Hydrogen Generation NOx Impacts - damage costs per change in PWMC per person - currently deals with primary NOx only

output$Hydrogen_PWMC_Costs_nox <- renderValueBox({
  
  req(hyd_nox_impacts())
  
  if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
    
    hyd_pwmc_value_nox <- valueBox(
      
      round((((last(hyd_nox_impacts()$`Total Impact`)-first(hyd_nox_impacts()$`Total Impact`))) * (damage_costs_nox/-1000)), 4), 
      "Hydrogen NOx Savings (£ per person)", icon = icon("atom"), color = "green")
    
    return(hyd_pwmc_value_nox)
    
    
  }
  
  else {
    
    hyd_pwmc_value_nox <- valueBox(
      
      round((((last(hyd_nox_impacts()$`Total Impact per TWh`)-first(hyd_nox_impacts()$`Total Impact per TWh`))) * (damage_costs_nox/-1000)), 4), 
      "Hydrogen NOx Savings (£ per person per TWh)", icon = icon("atom"), color = "green")
    
    return(hyd_pwmc_value_nox)
    
  }
  
  
})
  

  ################################################################################
  # Building Heating NOx Impacts - damage costs - currently deals with primary NOx only
  
  output$Heating_PWMC_Costs_nox <- renderValueBox({
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      heat_pwmc_value_nox <- valueBox(
        
        round(((((last(df_dh_nox_impacts()$`Total Impact`)+last(df_ph_nox_impacts()$`Total Impact`))-(first(df_dh_nox_impacts()$`Total Impact`)+first(df_ph_nox_impacts()$`Total Impact`))) * (damage_costs_nox/-1000))), 4), 
        "Heating NOx Savings (£ per person)", icon = icon("house-fire"), color = "blue")
      
      return(heat_pwmc_value_nox)
      
      
    }
    
    else {
      
      heat_pwmc_value_nox <- valueBox(
        
        round(((((last(df_dh_nox_impacts()$`Total Impact per TWh`)+last(df_ph_nox_impacts()$`Total Impact per TWh`))-(first(df_dh_nox_impacts()$`Total Impact per TWh`)+first(df_ph_nox_impacts()$`Total Impact per TWh`))) * (damage_costs_nox/-1000))), 4), 
        "Heating NOx Savings (£ per person per TWh)", icon = icon("house-fire"), color = "blue")
      
      return(heat_pwmc_value_nox)
      
    }
    
    
  })
  
  ################################################################################
  # Industry NOx Impacts - damage costs - currently deals with primary NOx only
  
  output$Industry_PWMC_Costs_nox <- renderValueBox({
    
    req(input_ind_file()) # Needed to prevent initial error (not dealbreaker but ugly!)
    req(ironsteel_nox_impacts())
    req(nfm_nox_impacts())
    req(chem_nox_impacts())
    req(pap_nox_impacts())
    req(food_nox_impacts())
    req(min_nox_impacts())
    req(text_nox_impacts())
    req(con_nox_impacts())
    req(other_nox_impacts())
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      ind_pwmc_value_nox <- valueBox(
        
        round(((((last(ironsteel_nox_impacts()$`Total Impact`)+last(nfm_nox_impacts()$`Total Impact`)+last(chem_nox_impacts()$`Total Impact`)+last(pap_nox_impacts()$`Total Impact`)+last(food_nox_impacts()$`Total Impact`)+last(min_nox_impacts()$`Total Impact`)+last(text_nox_impacts()$`Total Impact`)+last(con_nox_impacts()$`Total Impact`)+last(other_nox_impacts()$`Total Impact`))-(first(ironsteel_nox_impacts()$`Total Impact`)+first(nfm_nox_impacts()$`Total Impact`)+first(chem_nox_impacts()$`Total Impact`)+first(pap_nox_impacts()$`Total Impact`)+first(food_nox_impacts()$`Total Impact`)+first(min_nox_impacts()$`Total Impact`)+first(text_nox_impacts()$`Total Impact`)+first(con_nox_impacts()$`Total Impact`)+first(other_nox_impacts()$`Total Impact`))) * (damage_costs_nox/-1000))), 4), 
        "Industry NOx Savings (£ per person)", icon = icon("industry"), color = "orange")
      
      return(ind_pwmc_value_nox)
      
      
    }
    
    else {
      
      ind_pwmc_value_nox <- valueBox(
        
        round(((((last(ironsteel_nox_impacts()$`Total Impact per TWh`)+last(nfm_nox_impacts()$`Total Impact per TWh`)+last(chem_nox_impacts()$`Total Impact per TWh`)+last(pap_nox_impacts()$`Total Impact per TWh`)+last(food_nox_impacts()$`Total Impact per TWh`)+last(min_nox_impacts()$`Total Impact per TWh`)+last(text_nox_impacts()$`Total Impact per TWh`)+last(con_nox_impacts()$`Total Impact per TWh`)+last(other_nox_impacts()$`Total Impact per TWh`))-(first(ironsteel_nox_impacts()$`Total Impact per TWh`)+first(nfm_nox_impacts()$`Total Impact per TWh`)+first(chem_nox_impacts()$`Total Impact per TWh`)+first(pap_nox_impacts()$`Total Impact per TWh`)+first(food_nox_impacts()$`Total Impact per TWh`)+first(min_nox_impacts()$`Total Impact per TWh`)+first(text_nox_impacts()$`Total Impact per TWh`)+first(con_nox_impacts()$`Total Impact per TWh`)+first(other_nox_impacts()$`Total Impact per TWh`))) * (damage_costs_nox/-1000))), 4), 
        "Industry NOx Savings (£ per person per TWh)", icon = icon("industry"), color = "orange")
      
      return(ind_pwmc_value_nox)
      
    }
    
    
  })

  
  #################################################################################################
  
  # Electricity Generation PM2.5 Impacts - damage costs per change in PWMC per person - currently deals with primary PM2.5 only
  
  output$Elec_PWMC_Costs_pm25 <- renderValueBox({
    
    req(df_elec_pm25_impacts())
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      elec_pwmc_value_pm25 <- valueBox(
        
        round((((last(df_elec_pm25_impacts()$`Total Impact`)-first(df_elec_pm25_impacts()$`Total Impact`))) * (damage_costs_pm25/-1000)), 4), 
        "Electricity PM2.5 Savings (£ per person)", icon = icon("bolt"), color = "purple")
      
      return(elec_pwmc_value_pm25)
      
      
    }
    
    else {
      
      elec_pwmc_value_pm25 <- valueBox(
        
        round((((last(df_elec_pm25_impacts()$`Total Impact`)-first(df_elec_pm25_impacts()$`Total Impact`))) * (damage_costs_pm25/-1000)), 4), 
        "Electricity PM2.5 Savings (£ per person per TWh)", icon = icon("bolt"), color = "purple")
      
      return(elec_pwmc_value_pm25)
      
    }
    
    
  })
  
  
  ################################################################################
  # Hydrogen Generation PM2.5 Impacts - damage costs per change in PWMC per person - currently deals with primary PM2.5 only
  
  output$Hydrogen_PWMC_Costs_pm25 <- renderValueBox({
    
    req(hyd_pm25_impacts())
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      hyd_pwmc_value_pm25 <- valueBox(
        
        round((((last(hyd_pm25_impacts()$`Total Impact`)-first(hyd_pm25_impacts()$`Total Impact`))) * (damage_costs_pm25/-1000)), 4), 
        "Hydrogen PM2.5 Savings (£ per person)", icon = icon("atom"), color = "green")
      
      return(hyd_pwmc_value_pm25)
      
      
    }
    
    else {
      
      hyd_pwmc_value_pm25 <- valueBox(
        
        round((((last(hyd_pm25_impacts()$`Total Impact per TWh`)-first(hyd_pm25_impacts()$`Total Impact per TWh`))) * (damage_costs_pm25/-1000)), 4), 
        "Hydrogen PM2.5 Savings (£ per person per TWh)", icon = icon("atom"), color = "green")
      
      return(hyd_pwmc_value_pm25)
      
    }
    
    
  })
  
   ################################################################################
  # Building Heating PM2.5 Impacts - damage costs - currently deals with primary PM2.5 only
  
  output$Heating_PWMC_Costs_pm25 <- renderValueBox({
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      heat_pwmc_value_pm25 <- valueBox(
        
        round(((((last(df_dh_pm25_impacts()$`Total Impact`)+last(df_ph_pm25_impacts()$`Total Impact`))-(first(df_dh_pm25_impacts()$`Total Impact`)+first(df_ph_pm25_impacts()$`Total Impact`))) * (damage_costs_pm25/-1000))), 4), 
        "Heating PM2.5 Savings (£ per person)", icon = icon("house-fire"), color = "blue")
      
      return(heat_pwmc_value_pm25)
      
      
    }
    
    else {
      
      heat_pwmc_value_pm25 <- valueBox(
        
        round(((((last(df_dh_pm25_impacts()$`Total Impact per TWh`)+last(df_ph_pm25_impacts()$`Total Impact per TWh`))-(first(df_dh_pm25_impacts()$`Total Impact per TWh`)+first(df_ph_pm25_impacts()$`Total Impact per TWh`))) * (damage_costs_pm25/-1000))), 4), 
        "Heating PM2.5 Savings (£ per person per TWh)", icon = icon("house-fire"), color = "blue")
      
      return(heat_pwmc_value_pm25)
      
    }
    
    
  })
  
  ################################################################################
  # Industry PM2.5 Impacts - damage costs - currently deals with primary PM2.5 only
  
  output$Industry_PWMC_Costs_pm25 <- renderValueBox({
    
    req(input_ind_file()) # Needed to prevent initial error (not dealbreaker but ugly!)
    req(ironsteel_pm25_impacts())
    req(nfm_pm25_impacts())
    req(chem_pm25_impacts())
    req(pap_pm25_impacts())
    req(food_pm25_impacts())
    req(min_pm25_impacts())
    req(text_pm25_impacts())
    req(con_pm25_impacts())
    req(other_pm25_impacts())
    
    if(input$absolute_or_perUnit == "Absolute emissions/impacts") {
      
      ind_pwmc_value_pm25 <- valueBox(
        
        round(((((last(ironsteel_pm25_impacts()$`Total Impact`)+last(nfm_pm25_impacts()$`Total Impact`)+last(chem_pm25_impacts()$`Total Impact`)+last(pap_pm25_impacts()$`Total Impact`)+last(food_pm25_impacts()$`Total Impact`)+last(min_pm25_impacts()$`Total Impact`)+last(text_pm25_impacts()$`Total Impact`)+last(con_pm25_impacts()$`Total Impact`)+last(other_pm25_impacts()$`Total Impact`))-(first(ironsteel_pm25_impacts()$`Total Impact`)+first(nfm_pm25_impacts()$`Total Impact`)+first(chem_pm25_impacts()$`Total Impact`)+first(pap_pm25_impacts()$`Total Impact`)+first(food_pm25_impacts()$`Total Impact`)+first(min_pm25_impacts()$`Total Impact`)+first(text_pm25_impacts()$`Total Impact`)+first(con_pm25_impacts()$`Total Impact`)+first(other_pm25_impacts()$`Total Impact`))) * (damage_costs_pm25/-1000))), 4), 
        "Industry PM2.5 Savings (£ per person)", icon = icon("industry"), color = "orange")
      
      return(ind_pwmc_value_pm25)
      
      
    }
    
    else {
      
      ind_pwmc_value_pm25 <- valueBox(
        
        round(((((last(ironsteel_pm25_impacts()$`Total Impact per TWh`)+last(nfm_pm25_impacts()$`Total Impact per TWh`)+last(chem_pm25_impacts()$`Total Impact per TWh`)+last(pap_pm25_impacts()$`Total Impact per TWh`)+last(food_pm25_impacts()$`Total Impact per TWh`)+last(min_pm25_impacts()$`Total Impact per TWh`)+last(text_pm25_impacts()$`Total Impact per TWh`)+last(con_pm25_impacts()$`Total Impact per TWh`)+last(other_pm25_impacts()$`Total Impact per TWh`))-(first(ironsteel_pm25_impacts()$`Total Impact per TWh`)+first(nfm_pm25_impacts()$`Total Impact per TWh`)+first(chem_pm25_impacts()$`Total Impact per TWh`)+first(pap_pm25_impacts()$`Total Impact per TWh`)+first(food_pm25_impacts()$`Total Impact per TWh`)+first(min_pm25_impacts()$`Total Impact per TWh`)+first(text_pm25_impacts()$`Total Impact per TWh`)+first(con_pm25_impacts()$`Total Impact per TWh`)+first(other_pm25_impacts()$`Total Impact per TWh`))) * (damage_costs_pm25/-1000))), 4), 
        "Industry PM2.5 Savings (£ per person per TWh)", icon = icon("industry"), color = "orange")
      
      return(ind_pwmc_value_pm25)
      
    }
    
    
  })

}

shinyApp(ui = ui, server = server)