require(MSeasy)

#we will have to set up the directory - not sure how it works on NCI - the command is setwd("C:/")

#to load in data matrix: 
load("initial_DATA.RData")
#you can now run Step 2

MS.clust(mydata, quant = TRUE, clV = TRUE, ncmin = 10, ncmax = 2000, varRT = 60, disMeth = "euclidian", linkMeth = "ward", clustMeth = "hierarchical")

