library(dada2)
load("/stor/progetti/p1026/p1026u21/HPC_project/data/workspaces/post_error_computing.RData")
dadaFs <- dada(filtFs, err=errF, multithread=TRUE)
dadaRs <- dada(filtRs, err=errR, multithread=TRUE)
dadaFs[[1]]
save.image("/stor/progetti/p1026/p1026u21/HPC_project/data/workspaces/post_sample_inference.RData")