# R3.5.1_Bioc3.8_DESeq2

This folder contains all data necessary to build and run a Singularity Container including R version 3.5.1, Bioconductor version 3.8 and Rstudio (including RStudio Server). The container inherits from Docker [bioconductor/release_core2:R3.5.1_Bioc3.8](https://github.com/Bioconductor/bioc_docker) which itself is depending on bioconductor/release_base2 and [rocker/rstudio:3.5.1](https://hub.docker.com/r/rocker/rstudio/).

Further information about Bioconductor Docker can be found [here](http://bioconductor.org/help/docker/). Documation about running Rocker with Singularity is available [here](https://www.rocker-project.org/use/singularity/).

## List of installed Bioconductor packages
* release_core2: BiocManager OrganismDbi ExperimentHub Biobase BiocParallel biomaRt Biostrings BSgenome ShortRead IRanges GenomicRanges GenomicAlignment GenomicFeatures SummarizedExperiment VariantAnnotation DelayedArray GSEABase Gviz graph RBGL Rgraphviz rmarkdown httr knitr BiocStyle
* R3.5.1_Bioc3.8: BiocInstaller devtools tidyverse dplyr ggplot2 gplots RColorBrewer scatterplot3d pheatmap
* DESeq2: Differential gene expression analysis based on the negative binomial distribution

## Useful commands

### Build the image
requires root privileges
```
sudo singularity build IMAGENAME.simp Singularity
```

### Run R from the command line
```
singularity run --bind /your/path/on/host/to/include IMAGENAME.simp
```

### Open a Bash shell on the container
```
singularity exec --bind /your/path/on/host/to/include IMAGENAME.simp bash
```

### Run RStudio server on the container (localhost port 8787, no password)
```
singularity exec --bind /your/path/on/host/to/include IMAGENAME.simp rserver --www-address=127.0.0.1
```

### Run RStudio server on the container with password authentication
```
PASSWORD='hereComesYourSuperSpecialPassword' singularity exec \
    --bind /your/path/on/host/to/include IMAGENAME.simp rserver \
    --auth-none=0 \
    --auth-pam-helper-path=pam-helper \
    --www-address=127.0.0.1
```

* [R3.5.1_Bioc3.8](R3.5.1_Bioc3.8/LICENSE) - bioconductor/release_core2 dependent container
singularity

### Prerequisites

Tested on singularity version 2.5.2
