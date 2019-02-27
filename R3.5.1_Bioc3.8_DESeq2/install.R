
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install("BiocInstaller", version = "3.8")

library(BiocInstaller)

# general packages
biocLite("devtools")
biocLite("tidyverse")
biocLite("dplyr")
biocLite("ggplot2")
biocLite("gplots")
biocLite("RColorBrewer")
biocLite("scatterplot3d")
biocLite("pheatmap")
biocLite("DESeq2")

# CRAN packages
install.packages("ggrepel", repo = "http://cran.wu.ac.at/", type = 'source')
