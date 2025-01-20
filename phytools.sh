R

remotes::install_github("liamrevell/phytools")

library(phytools)
library(mapdata)
library(readxl)

# load tree and geo info
data <- read_excel("OAmericanus_CRSequences_NCBI_latlog_and_namessonly_TEST_ID.xlsx")
tree <- read.tree("OAmericanus_CRSequences_NCBI_TEST_ID.nwk")

# remove ">" if fasta format
latlog_data_BConly$NAME <- gsub(">", "", latlog_data_BConly$NAME)

# remove " signs from tree labels
tree$tip.label <- gsub("^'|'$", "", tree$tip.label)

# root tree
rooted_tree <- midpoint.root(tree)

# match sample IDs in geo data to tree tips
dataordered <- data[match(rooted_tree$tip.label, data$NAME), ]

# create coordinates matrix
coords_matrix <- as.matrix(dataordered[, c("LAT", "LONG")])

# assign sample IDs to matrix
rownames(coords_matrix) <- dataordered$NAME

# create map object
map <-phylo.to.map(rooted_tree,coords_matrix, plot=FALSE, direction="rightwards”)

# plot
plot.phylo.to.map(map, direction="rightwards”)
