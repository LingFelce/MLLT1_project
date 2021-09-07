#-----MLLT1 paper extra figures-----------------

#-----Volcano plots-----------------
setwd("/stopgap/donglab/ling/R/test/")

library(tidyverse)
library(data.table)
library(EnhancedVolcano)

# read in deg lists
# not 7h, 7 DAYS!!

mcf1 <- read.csv("/stopgap/donglab/ling/t1-data/MLLT1/analysis/MCF1_res.csv")
mcf2 <- read.csv("/stopgap/donglab/ling/t1-data/MLLT1/analysis/MCF2_res.csv")
sum1 <- read.csv("/stopgap/donglab/ling/t1-data/MLLT1/analysis/SUM1_res.csv")
sum2 <- read.csv("/stopgap/donglab/ling/t1-data/MLLT1/analysis/SUM2_res.csv")

mcf7h <- read.csv("/stopgap/donglab/ling/t1-data/MLLT1/analysis/MCF_DMSOvSGC_7D_res.csv")
mcf24h <- read.csv("/stopgap/donglab/ling/t1-data/MLLT1/analysis/MCF_DMSOvSGC_24H_res.csv")
sum7h <- read.csv("/stopgap/donglab/ling/t1-data/MLLT1/analysis/SUM_DMSOvSGC_7D_res.csv")
sum24h <- read.csv("/stopgap/donglab/ling/t1-data/MLLT1/analysis/SUM_DMSOvSGC_24H_res.csv")

EnhancedVolcano(mcf1, lab=mcf1$SYMBOL, x = "log2FoldChange", y = "padj",
                pCutoff = 0.05, FCcutoff = 1, pointSize = 2.0, labSize = 4.0)


EnhancedVolcano(mcf2, lab=mcf2$SYMBOL, x = "log2FoldChange", y = "padj",
                pCutoff = 0.05, FCcutoff = 1, pointSize = 2.0, labSize = 4.0)

EnhancedVolcano(sum1, lab=sum1$SYMBOL, x = "log2FoldChange", y = "padj",
                pCutoff = 0.05, FCcutoff = 1, pointSize = 2.0, labSize = 4.0)

EnhancedVolcano(sum2, lab=sum2$SYMBOL, x = "log2FoldChange", y = "padj",
                pCutoff = 0.05, FCcutoff = 1, pointSize = 2.0, labSize = 4.0)

EnhancedVolcano(mcf7h, lab=mcf7h$SYMBOL, x = "log2FoldChange", y = "padj",
                pCutoff = 0.05, FCcutoff = 1, pointSize = 2.0, labSize = 4.0)

EnhancedVolcano(mcf24h, lab=mcf24h$SYMBOL, x = "log2FoldChange", y = "padj",
                pCutoff = 0.05, FCcutoff = 1, pointSize = 2.0, labSize = 4.0)

EnhancedVolcano(sum7h, lab=sum7h$SYMBOL, x = "log2FoldChange", y = "padj",
                pCutoff = 0.05, FCcutoff = 1, pointSize = 2.0, labSize = 4.0)

EnhancedVolcano(sum24h, lab=sum24h$SYMBOL, x = "log2FoldChange", y = "padj",
                pCutoff = 0.05, FCcutoff = 1, pointSize = 2.0, labSize = 4.0)



#-----DEG low v high MLLT1 METABRIC patients-----------------
setwd("/stopgap/donglab/ling/t1-data/METABRIC/")
library(dplyr)
library(tidyverse)
library(gplots)
library(RColorBrewer)
library(pheatmap)
library(DESeq2)
library(pheatmap)
library(ggplot2)
library (stringi)
library(AnnotationDbi)
library(edgeR)
library(statmod)
library(BiocParallel)
library (limma)
library("genefilter")


# METABRIC dataset analysis


clinical_sample <-read.delim("data_clinical_sample.txt", header=TRUE)
clinical_patient <- read.delim("data_clinical_patient.txt", header=TRUE, na.strings = c("", "NA"))
expression_median <- read.delim("data_expression_median.txt", header=TRUE, na.strings = c("", "NA"))
gene_matrix <-  read.delim("data_gene_matrix.txt", header=TRUE)
mrna_median_all_sample_zscores <- read.delim("data_mRNA_median_all_sample_Zscores.txt", header=TRUE)
mrna_median_zscores <-  read.delim("data_mRNA_median_Zscores.txt", header=TRUE)
## important ones to use: clinical_patient for survival information and expression_median for gene expression matrix (ImSig uses TPM/FPKM not Z-scores) ##


# heatmap of interferon alpha and interferon gamma gene expression from Hallmark gene sets compared with MLLT1 expression
# want patient MLLT1 expressing low to high on x axis, y axis different genes from ifn a and ifn g
# upregulated core enriched genes only from Hallmark gene sets interferon alpha and interferon gamma response, inflammatory response
# read in gene list - 266 (including MLLT1)
ifn_genes <- read.csv("ifna_ifng_hallmark.csv", header=TRUE)
# # remove duplicated rows - 145 genes (also converts to character from vector?)
ifn_genes <-  ifn_genes[!duplicated(ifn_genes), ]

# want to use z-scores for simplicity
exp <- mrna_median_all_sample_zscores
# remove EntrezID
exp[2] <- NULL
# change . in patient IDs to - to match clinical data patient IDs
names(exp) <- gsub(x = names(exp), pattern = "\\.", replacement = "-")  
# remove any NA
exp <-  exp %>% na.omit()
# make gene symbols row names, and remove 1st column
rownames(exp) <- exp[,1]
exp[1] <- NULL

# Use just low and high expressing patients (from cBioPortal EXP>1 and EXP<-1)
# read in patient IDs
high_ids <- read.csv("high_patient_ids.csv", header=TRUE)
low_ids <- read.csv("low_patient_ids.csv", header=TRUE)
# convert to character by removing duplicates, then remove brca_metabric from each name
high_ids <-  high_ids[!duplicated(high_ids), ]
high_ids <- high_ids %>% str_replace("brca_metabric:", "")
low_ids <-  low_ids[!duplicated(low_ids), ]
low_ids <- low_ids %>% str_replace("brca_metabric:", "")

# ID table
high_ids <- as.data.frame(read.csv("high_patient_ids.csv", header=TRUE))
high_ids$mllt1 <- "High"
colnames(high_ids) <- c("Patient_ID", "MLLT1_status")
low_ids <- as.data.frame(read.csv("low_patient_ids.csv", header=TRUE))
low_ids$mllt1 <- "Low"
colnames(low_ids) <- c("Patient_ID", "MLLT1_status")
ids <- rbind(high_ids, low_ids)

er_neg <- read.csv("er_neg_ids.csv", header=TRUE)
er_pos <- read.csv("er_patient_ids.csv", header=TRUE)

ids$ER_status <- ifelse(ids$Patient_ID %in% er_pos$er_ids, "ER positive",
                        ifelse(ids$Patient_ID %in% er_neg$er_ids, "ER negative", ""))

table(ids$MLLT1_status)
table(ids$ER_status)

# all subtypes low and high MLLT1
# select antigen presentation and processing and MYC
# 575 patients
select_exp <- exp[c(high_ids, low_ids)]
sorted_select_exp <- select_exp[order(select_exp["MLLT1",]), drop=FALSE]
ag_exp <- sorted_select_exp[c("HLA-A", "HLA-B", "HLA-C", "TAP1", "MYC", "MLLT1"),]
mat <- data.matrix(ag_exp)
col.pan <- colorpanel(100, "green", "black", "red")
heatmap.2(mat, col=col.pan, Rowv=FALSE, Colv=FALSE, scale="column", trace="none", dendrogram="none", cexRow=1, cexCol=0.1, density.info="none")

# if read in ER positive IDs from .csv file - get 455 patients
# but if only look at 575 low/high patients, only 439 are ER positive
# just use 439 patients from total 575 low/high, otherwise will get too confusing

# ER positive low/high only
er_ids <- ids[ids$ER_status == "ER positive",]
er_ids <- er_ids$Patient_ID
er_ids <- er_ids %>% str_replace("brca_metabric:", "")
# select specific columns
er_exp <- exp[er_ids]
# select specific rows
hla_er_exp <- er_exp[c("HLA-A", "HLA-B", "HLA-C", "TAP1", "MYC", "MLLT1"),]
# sort by MLLT1 expression
sorted_hla_er_exp <- hla_er_exp[order(hla_er_exp["MLLT1",]), drop=FALSE]
# heatmap
mat <- data.matrix(sorted_hla_er_exp)
col.pan <- colorpanel(100, "green", "black", "red")
heatmap.2(mat, col=col.pan, Rowv=FALSE, Colv=FALSE, scale="column", trace="none", dendrogram="none", cexRow=0.9, cexCol=0.1, density.info="none")

# if read in ER negative IDs from .csv file - get 141 patients
# but if only look at 575 low/high patients, only 136 are ER negative
# just use 136 patients from total 575 low/high, otherwise will get too confusing

# ER negative low/high only
er_ids <- ids[ids$ER_status == "ER negative",]
er_ids <- er_ids$Patient_ID
er_ids <- er_ids %>% str_replace("brca_metabric:", "")
# select specific columns
er_exp <- exp[er_ids]
# select specific rows
hla_er_exp <- er_exp[c("HLA-A", "HLA-B", "HLA-C", "TAP1", "MYC", "MLLT1"),]
# sort by MLLT1 expression
sorted_hla_er_exp <- hla_er_exp[order(hla_er_exp["MLLT1",]), drop=FALSE]
# heatmap
mat <- data.matrix(sorted_hla_er_exp)
col.pan <- colorpanel(100, "green", "black", "red")
heatmap.2(mat, col=col.pan, Rowv=FALSE, Colv=FALSE, scale="column", trace="none", dendrogram="none", cexRow=0.9, cexCol=0.1, density.info="none")


