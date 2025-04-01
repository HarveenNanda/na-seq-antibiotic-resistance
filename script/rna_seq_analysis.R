library(DESeq2)

# Load count data
counts <- read.csv("data/counts_matrix.csv", row.names = 1)
colData <- read.csv("data/sample_metadata.csv", row.names = 1)

# Create DESeq2 dataset
dds <- DESeqDataSetFromMatrix(countData = counts, colData = colData, design = ~ condition)
dds <- DESeq(dds)

# Results
res <- results(dds)
write.csv(res, "results/deseq2_results.csv")

# Volcano Plot
library(EnhancedVolcano)
png("results/volcano_plot.png")
EnhancedVolcano(res,
    lab = rownames(res),
    x = 'log2FoldChange',
    y = 'pvalue'
)
dev.off()
