# Genomic Distinctness of Indigenous *Aegilops tauschii* from the Indus Valley

> **Researcher:** Talha (BS Biological Sciences, UVAS)  
> **Focus:** Population Genomics | Evolutionary Biology | Computational Biology  
> **Status:** Completed  

## 📌 Project Overview
*Aegilops tauschii*, the D-genome progenitor of wheat, is a critical reservoir for adaptive traits like heat and drought tolerance. Current synthetic wheat breeding relies heavily on "Lineage 2" (L2) accessions from the Caspian Sea (e.g., **TA2462**).

This project challenges the assumption that indigenous Pakistani *Aegilops* populations are redundant to this Caspian gene pool. Using **high-density Genotyping-by-Sequencing (GBS)** data, I analyzed **56,740 SNPs** to characterize the population structure of germplasm collected from the Indus Valley.

## 🔍 Key Findings
* **Distinct Lineage:** The Indus Valley population is genetically distinct from the global Caspian reference, with a **Fixation Index ($F_{ST}$) of 0.25**, comparable to subspecies-level differentiation.
* **Private Alleles:** Identified a substantial "reservoir" of unique alleles in the Indus population (Riverine lineage) that are absent in elite synthetic wheat parents.
* **Isolation by Distance:** A strong correlation ($r = 0.76$) between genetic and geographic distance suggests the Iranian Plateau acts as a significant barrier to gene flow.

## 📊 Visualizations (Results)
High-resolution plots generated via R are available in the `plots/` directory:

### Population Structure & Phylogeny
* **[PCA_Structure_Analysis.pdf](plots/PCA_Structure_Analysis.pdf):** Principal Component Analysis revealing a strict separation between the indigenous Indus Valley germplasm and the global Lineage 2 reference standards.
* **[Phylogenetic_Tree_NJ.pdf](plots/Phylogenetic_Tree_NJ.pdf):** Neighbor-Joining tree confirming the Indus population as a discrete evolutionary clade, distinct from the Caspian reference TA2462.

### Evolutionary History & Geography
* **[Isolation_By_Distance_plot.pdf](plots/Isolation_By_Distance_Plot.pdf):** Mantel test results showing a significant positive correlation ($P < 0.001$) between genetic differentiation and geographic distance.
* **[Private_Alleles_Discovery.pdf](plots/Private_Alleles_Discovery.pdf):** Quantification of unique adaptive alleles found exclusively in the Indus population.

### Advanced Genomic Metrics
* **[Runs_of_Homozygosity.pdf](plots/Runs_of_Homozygosity.pdf):** Analysis of ROH density to estimate historical inbreeding levels.
* **[Site_Frequency_Spectrum.pdf](plots/Site_Frequency_Spectrum.pdf):** SFS analysis used to infer demographic history and population expansion.
* **[Genomic_Diversity_Landscape_Plot.pdf](plots/Genomic_Diversity_Landscape.pdf):** Overview of nucleotide diversity (π) across the genome.

## 🛠️ Computational Workflow
The analysis was conducted using a custom pipeline integrating **Bash** and **R**:

1.  **SNP Discovery:**
    * **Alignment:** BWA-MEM to *Aegilops tauschii* reference (Aet v4.0).
    * **Variant Calling:** Stacks v2.5 pipeline.
    * **Filtering:** VCFtools (MAF > 0.05, Missing < 20%, Biallelic SNPs only).
2.  **Statistical Analysis (R):**
    * **Packages:** `vcfR`, `adegenet`, `SNPRelate`, `ggplot2`, `vegan`.
    * **Methods:** PCA, DAPC, Fst calculation, and Mantel Tests.

## 📂 Repository Structure
## 📜 Acknowledgments
* **Institution:** Department of Biological Sciences, University of Veterinary and Animal Sciences (UVAS), Lahore.
* **Germplasm Resources:** We thank the **Wheat Genetics Resource Center (WGRC)** and **CIMMYT** for providing the reference accessions (TA2462 and TA2461) used in this comparative study.
* **Conflict of Interest:** The research was conducted in the absence of any commercial or financial relationships.

## 📚 References
Key literature supporting this analysis:
* **Matsuoka et al. (2013):** Wheat evolution and domestication.
* **Trethowan & Mujeeb-Kazi (2008):** Novel germplasm resources for stress tolerance.
* **Wang et al. (2013):** *Aegilops tauschii* SNP diversity and D-genome origins.

---
### 📬 Contact
**Talha** Final Year BS Biological Sciences | UVAS, Lahore  
📧 [Ta357026@gmail.com]