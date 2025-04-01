# RNA-Seq Analysis of Antibiotic Resistance in Bacteria

This project analyzes RNA-Seq data from *E. coli* strains exposed to antibiotics. The goal is to identify differentially expressed resistance genes using R and DESeq2.

## 🧪 Tools Used
- R, DESeq2
- GEO Sample Dataset: [GSE9006](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE9006)

## 📂 Folder Structure
- `scripts/`: Contains the R script for analysis
- `results/`: Output files (CSV, plots)

## 🚀 Steps
1. Import count and metadata
2. Run DESeq2 for differential gene expression
3. Plot volcano plot and heatmap

## 📊 Output
- `deseq2_results.csv`: DE genes
- `volcano_plot.png`: Significant gene visualization
- `heatmap.png`: Sample expression heatmap

## 💡 Skills Demonstrated
RNA-Seq analysis, R programming, data visualization, differential expression analysis
