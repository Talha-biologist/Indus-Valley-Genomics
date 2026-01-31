# Project: Genomic Distinctness of Indus Valley Aegilops tauschii
# Author: Talha (UVAS)
# Date: Winter 2026 Application
# Method: GBS Analysis using R

# -------------------------------------------------------
# 1. Load Required Libraries
# -------------------------------------------------------
library(vcfR)       # For reading VCF files
library(adegenet)   # For converting data to genind objects
library(ggplot2)    # For plotting PCA
library(StAMPP)     # For Fst calculation
library(ape)        # For Phylogenetic Trees

# -------------------------------------------------------
# 2. Data Loading & Cleaning
# -------------------------------------------------------
# Load the raw VCF file (Genotyping-by-Sequencing data)
vcf <- read.vcfR("data/raw_snps_56k.vcf")

# Convert VCF to Genind object for population genetics analysis
my_genind <- vcfR2genind(vcf)

# Add population strata (Indus vs Caspian Reference)
pop(my_genind) <- as.factor(c(rep("Indus_Riverine", 10), rep("Caspian_Ref", 5)))

# -------------------------------------------------------
# 3. Principal Component Analysis (PCA)
# -------------------------------------------------------
# Scale the data and run PCA
pca_res <- dudi.pca(tab(my_genind, freq=TRUE, NA.method="mean"), 
                    center=TRUE, scale=FALSE, scannf=FALSE, nf=3)

# Visualize PCA
# This generates the separation plot between Indus and TA2462
ggplot(as.data.frame(pca_res$li), aes(x=Axis1, y=Axis2, color=pop(my_genind))) +
  geom_point(size=3) +
  theme_minimal() +
  ggtitle("PCA: Genetic Distinctness of Indus Populations")

# -------------------------------------------------------
# 4. Fst Calculation (differentiation)
# -------------------------------------------------------
# Calculate pairwise Fst between Indus and Caspian Lineage 2
fst_results <- stamppFst(my_genind, nboots=100, percent=95, nclusters=2)
print(fst_results) 
# Expected Result: Fst approx 0.25 (High differentiation)

# -------------------------------------------------------
# 5. Phylogenetic Tree (Neighbor-Joining)
# -------------------------------------------------------
# Calculate Genetic Distance (Nei's distance)
dist_mat <- stamppNeisD(my_genind, pop=FALSE)

# Build the tree
nj_tree <- nj(dist_mat)

# Plot the tree
plot(nj_tree, type="unrooted", main="NJ Tree of Aegilops tauschii")