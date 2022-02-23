library(dada2)
setwd("~/Desktop/HPC_project")

path <- "~/Desktop/HPC_project/data/Raw_data"
fnFs <- sort(list.files(path, pattern="_R1_001.fastq", full.names = TRUE))
fnRs <- sort(list.files(path, pattern="_R2_001.fastq", full.names = TRUE))

sample.names <- sapply(strsplit(basename(fnFs), "_R1_001.fastq.gz"),`[`, 1)

#plotQualityProfile(fnFs[1:2])
#plotQualityProfile(fnRs[1:2])

path <- "~/Desktop/HPC_project/data"
filtFs <- file.path(path, "filtered", paste0(sample.names, "_F_filt.fastq.gz"))
filtRs <- file.path(path, "filtered", paste0(sample.names, "_R_filt.fastq.gz"))
names(filtFs) <- sample.names
names(filtRs) <- sample.names

save.image("~/Desktop/HPC_project/data/workspaces/pre_filtering.RData")
