library(DESeq2)

# Load count and metadata (example CSVs)
counts <- read.csv("data/counts_matrix.csv", row.names = 1)
colData <- read.csv("data/sample_metadata.csv", row.names = 1)

# DESeq2 pipeline
dds <- DESeqDataSetFromMatrix(countData = counts, colData = colData, design = ~ condition)
dds <- DESeq(dds)
res <- results(dds)

# Save result table
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
