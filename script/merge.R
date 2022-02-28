library(dada2)
load("/stor/progetti/p1026/p1026u21/HPC_project/data/workspaces/post_sample_inference.RData")

mergers <- mergePairs(dadaFs, filtFs, dadaRs, filtRs, verbose=TRUE)
# Inspect the merger data.frame from the first sample
head(mergers[[1]])

seqtab <- makeSequenceTable(mergers)
dim(seqtab)
# Inspect distribution of sequence lengths
table(nchar(getSequences(seqtab)))
save.image("/stor/progetti/p1026/p1026u21/HPC_project/data/workspaces/post_merging.RData")