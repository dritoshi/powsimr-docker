options(repos = "https://cran.ism.ac.jp/")
source("https://bioconductor.org/biocLite.R")

ipak <- function(pkg, repository = c("CRAN", "Bioconductor", "github")) {
    new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
    if (length(new.pkg)) {
        if (repository == "CRAN") {
            install.packages(new.pkg, dependencies = TRUE)
        }
        if (repository == "Bioconductor") {
            source("https://bioconductor.org/biocLite.R")
            biocLite(new.pkg, dependencies = TRUE, ask = FALSE)
        }
        if (repository == "github") {
            devtools::install_github(new.pkg, build_vignettes = FALSE, dependencies = TRUE)
        }
    }
}

biocLite("qvalue")

# CRAN PACKAGES
cranpackages <- c("methods", "stats", "matrixStats", "Rtsne", "moments", "minpack.lm", 
    "glmnet", "cluster", "mclust", "MASS", "gtools", "doParallel", "parallel", "fontBitstreamVera",
    "snow", "reshape2", "plyr", "dplyr", "tidyr", "tibble", "data.table", "ggplot2", 
    "grid", "ggthemes", "ggExtra", "cowplot", "scales", "cobs", "msir", "drc", 
    "DrImpute", "VGAM", "NBPSeq", "devtools", "Cairo")
ipak(cranpackages, repository = "CRAN")

# BIOCONDUCTOR
biocpackages <- c("S4Vectors", "DEDS", "AnnotationDbi", "Biobase", "BiocGenerics", 
    "SummarizedExperiment", "BiocParallel", "RUVSeq", "scran", "scater", "Linnorm", 
    "edgeR", "limma", "DESeq2", "baySeq", "NOISeq", "EBSeq", "DSS", "MAST", 
    "scde", "scDD", "ROTS", "monocle", "IHW", "scRNAseq", "MSnbase")
ipak(biocpackages, repository = "Bioconductor")

# GITHUB
githubpackages <- c("drisso/SingleCellExperiment", "nghiavtr/BPSC", "rhondabacher/SCnorm", "catavallejos/BASiCS")
ipak(githubpackages, repository = "github")

# After installing the dependencies, powsimR can be installed by using devtools as well.
devtools::install_github("bvieth/powsimR", build_vignettes = FALSE, dependencies = FALSE)
