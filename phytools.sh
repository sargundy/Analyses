R

remotes::install_github("liamrevell/phytools")

library(phytools)
library(mapdata)

# read tree & excel files
latlog_data_BConly <- read_excel("OAmericanus_CRSequences_NCBI_latlog_and_namessonly_BConly.xlsx")
OAmericanus_CRSequences_NCBI_BC_only.tree <- read.tree("OAmericanus_CRSequences_NCBI_BC_only.nwk")

# remove ">" from excel names
latlog_data_BConly$NAME <- gsub(">", "", latlog_data_BConly$NAME)

# check if all names in tree match excel
all(OAmericanus_CRSequences_NCBI_BC_only.tree$tip.label %in% latlog_data_BConly$NAME)

# reorder excel names to match tree tip order
latlog_data_BConly <- latlog_data_BConly[match(OAmericanus_CRSequences_NCBI_BC_only.tree$tip.label, latlog_data_BConly$NAME), ]

# Check if the lengths are the same
length(OAmericanus_CRSequences_NCBI_BC_only.tree$tip.label)
nrow(latlog_data_BConly)  # Lat/long data row count

# Verify if they are still in the same order
identical(OAmericanus_CRSequences_NCBI_BC_only.tree$tip.label, latlog_data_BConly$NAME)

obj <- phylo.to.map(OAmericanus_CRSequences_NCBI_BC_only.tree, latlog_data_BConly, plot = FALSE)
