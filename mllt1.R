#-----MLLT1 paper extra figures-----------------

#-----Bulk RNA-Seq volcano plots-----------------
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



#-----MLLT1 METABRIC patients-----------------
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


# input data
expression_median <- read.delim("data_expression_median.txt", header=TRUE, na.strings = c("", "NA"))
mrna_median_all_sample_zscores <- read.delim("data_mRNA_median_all_sample_Zscores.txt", header=TRUE)
## important ones to use: clinical_patient for survival information and expression_median for gene expression matrix (ImSig uses TPM/FPKM not Z-scores) ##

# want to use z-scores for heat maps for simplicity
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

# read in patient IDs (to select from expression matrix more easily not as dataframes)
high_ids <- read.csv("high_patient_ids.csv", header=TRUE)
low_ids <- read.csv("low_patient_ids.csv", header=TRUE)
# convert to character by removing duplicates, then remove brca_metabric from each name
high_ids <-  high_ids[!duplicated(high_ids), ]
high_ids <- high_ids %>% str_replace("brca_metabric:", "")
low_ids <-  low_ids[!duplicated(low_ids), ]
low_ids <- low_ids %>% str_replace("brca_metabric:", "")

#-----METABRIC heatmaps-----------------

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

#-----METABRIC DEG low v high-----------------
ids$Patient_ID <- ids$Patient_ID %>% str_replace("brca_metabric:", "")

# use median expression for DEG
exp <- expression_median
# remove EntrezID
exp[2] <- NULL
# change . in patient IDs to - to match clinical data patient IDs
names(exp) <- gsub(x = names(exp), pattern = "\\.", replacement = "-")  
# remove any NA
exp <-  exp %>% na.omit()
# make gene symbols row names, and remove 1st column
rownames(exp) <- exp[,1]
exp[1] <- NULL
select_exp <- exp[c(high_ids, low_ids)]

select_exp_2 <- as.data.frame(lapply(select_exp, as.integer))
rownames(select_exp_2) <- rownames(select_exp)
colnames(select_exp_2) <- colnames(select_exp)

# dds <- DESeqDataSetFromMatrix(select_exp_2, 
#                               colData = ids, 
#                               design = ~ MLLT1_status)
# 
# vsd <- vst(dds, blind=FALSE)
# select <- order(rowMeans(counts(dds, normalized=FALSE)), decreasing=TRUE)[1:200]
# df <- as.data.frame(colData(dds)[,"Condition"])
# annotation <- data.frame(Var1 = ids$MLLT1_status, Var2 = ids$ER_status)
# rownames(annotation) <- colnames(assay(vsd))
# pheatmap(assay(vsd)[select,], cluster_rows = FALSE, show_rownames = FALSE, cluster_cols = TRUE, annotation =annotation)

#-------METABRIC survival curves-------
library(RTCGA)
library(survminer)
library(survival)
library(data.table)
library(tidyverse)
library(dplyr)
library(ggplot2)

setwd("/stopgap/donglab/ling/t1-data/METABRIC/")

# input data
expression_median <- read.delim("data_expression_median.txt", header=TRUE, na.strings = c("", "NA"))
# mrna_median_all_sample_zscores <- read.delim("data_mRNA_median_all_sample_Zscores.txt", header=TRUE)
clin <- read.delim("data_clinical_patient.txt", header=TRUE)

# tidy up expression data
exp <- expression_median
# remove EntrezID
exp[2] <- NULL
# change . in patient IDs to - to match clinical data patient IDs
names(exp) <- gsub(x = names(exp), pattern = "\\.", replacement = "-")  
# remove any NA
exp <-  exp %>% na.omit()
# make gene symbols row names, and remove 1st column
rownames(exp) <- exp[,1]
exp[1] <- NULL
# transpose so patients are rows and genes are columns
exp <- as.data.frame(t(exp))

# tidy up clinical status
clin <- clin[-c(1:3),]
colnames(clin) <- clin[1,]
clin <- clin[-1,]

names(clin)[names(clin) == "OS_MONTHS"] <- "time"
clin$time <- as.numeric(clin$time)

# 0 = living, 1 = dead
clin$status <- ifelse(grepl("1", clin$OS_STATUS), "1",
                      ifelse(grepl("0", clin$OS_STATUS), "0", ""))
clin$status <- as.numeric(clin$status)

# interferon gene signature
ifn <- read.csv("/stopgap/donglab/ling/t1-data/METABRIC/ifna_ifng_hallmark.csv")

genes <- exp[,colnames(exp) %in% ifn$Gene,]
genes <- rownames_to_column(genes, var="PATIENT_ID")

# merge clinical and genes data
df <- clin[,c("PATIENT_ID", "time", "status")]
df <- merge(df, genes, by="PATIENT_ID")

res.cut <- surv_cutpoint(df, time = "time", event = "status", 
                         variables = colnames(df)[4:132])
summary(res.cut)

plot(res.cut, "MLLT1", palette = "npg")
plot(res.cut, "MYC", palette = "npg")
plot(res.cut, "HLA-A", palette = "npg")
plot(res.cut, "HLA-B", palette = "npg")
plot(res.cut, "HLA-C", palette = "npg")


res.cat <- surv_categorize(res.cut)
head(res.cat)

res.cat$`HLA-A` <- ifelse(res.cat$`HLA-A` > 5.7, "high", "low")
res.cat$`HLA-B` <- ifelse(res.cat$`HLA-B` > 12.23, "high", "low")
res.cat$`HLA-C` <- ifelse(res.cat$`HLA-C` > 8.17, "high", "low")

df2 <- res.cat
df2 <- ifelse(df2[3:131] == "high", 1, 
              ifelse(df2[3:131] == "low", 0, ""))

df2 <- as.data.frame(df2, nrow=1904)
df2[] <- lapply(df2, function(x) {
  if(is.character(x)) as.numeric(x) else x
})
sapply(df2, class)

# check MLLT1 low and high expression
# mlow <- df2[df2$MLLT1 == 0,]
# mhi <- df2[df2$MLLT1 == 1,]
# 
# ggplot(mlow, aes(x=rowSums(mlow))) +
#   geom_density()
# 
# ggplot(mhi, aes(x=rowSums(mhi))) +
#   geom_density()

# need to find good value to set - how many genes should be high?
# need to play around a bit
# if want to change settings, have to redo from df2 <- res.cat again
df2$ifn <- ifelse(rowSums(df2) > 64 & df2$MLLT1 == 0, "High IFN, Low MLLT1", 
           ifelse(rowSums(df2) < 64 & df2$MLLT1 == 1, "Low IFN, High MLLT1", 
           ifelse(rowSums(df2) > 64 & df2$MLLT1 == 1, "High IFN, High MLLT1",
           ifelse(rowSums(df2) < 64 & df2$MLLT1 == 0, "Low IFN, Low MLLT1", ""))))
table(df2$ifn)

res.cat$ifn <- df2$ifn

fit <- survfit(Surv(time, status) ~ifn, data = res.cat)
ggsurvplot(fit, risk.table = TRUE, conf.int = TRUE, pval = TRUE)


fit <- survfit(Surv(time, status) ~MLLT1, data = res.cat)
ggsurvplot(fit, risk.table = TRUE, conf.int = TRUE, pval = TRUE)

fit <- survfit(Surv(time, status) ~MYC, data = res.cat)
ggsurvplot(fit, risk.table = TRUE, conf.int = TRUE, pval = TRUE)




#-------METABRIC PCA-------

library(factoextra)
library(FactoMineR)

t_select_exp <- as.data.frame(t(select_exp))
t_select_exp <- rownames_to_column(t_select_exp, var="Patient_ID")
data <- merge(t_select_exp, ids, by = "Patient_ID")
data <- data[,c(1, 24362, 24363, 2:24360)]

data.pca <- PCA(data[,-c(1:3)], graph=FALSE)
print(data.pca)
fviz_pca_ind(data.pca,
             geom.ind = "point",
             pointshape = 20,
             col.ind = data$MLLT1_status,
             addEllipses = TRUE,
             legend.title = "MLLT1 status")

fviz_pca_ind(data.pca,
             geom.ind = "point",
             pointshape = 20,
             col.ind = data$ER_status,
             addEllipses = TRUE,
             legend.title = "ER status")

var <- as.data.frame(data.pca$var)
var <- rownames_to_column(var, var="Gene")
