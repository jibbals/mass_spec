#!/bin/bash
#PBS -P m19
#PBS -q normal
#PBS -N mass_spec
#PBS -l wd 
#PBS -l walltime=16:00:00,mem=20GB
#PBS -j oe

# run in working directory, 
# run on normal queue
# for up to 20 hrs using up to 20GB ram
# output and error streams combined

# could add this and #PBS -l ncpus=4
#setenv OMP_NUM_THREADS $PBS_NCPUS


# load modules needed for R to work?
# list from /apps/R/3.3.0/README.nci
module unload intel-fc
module unload intel-cc
module unload intel-mkl
module unload openmpi
module load intel-fc/16.0.3.210
module load intel-cc/16.0.3.210
module load intel-mkl/16.0.3.210 
module load openmpi/1.10.2
module load java/jdk1.8.0_60
module load zlib/1.2.8
module load bzip2/1.0.6
module load xz/5.2.2
module load pcre/8.38
module load curl/7.49.1

# load R module
module load R/3.3.0

## Run the scripts
# First run the package_install - adds stuff to ~/R/... folder
# (should only be needed once)
#Rscript package_install.R

# then run the instructions.R
Rscript instructions.R
#R <<END
#
#require(MSeasy)
#
##we will have to set up the directory - not sure how it works on NCI - the command is setwd("C:/")
#
##to load in data matrix: 
#load("initial_DATA.RData")
##you can now run Step 2
#
#MS.clust(mydata[1:100,], quant = TRUE, clV = TRUE, ncmin = 2, ncmax = 5, varRT = 60, disMeth = "euclidian", linkMeth = "ward", clustMeth = "hierarchical")
#1
#
#END
