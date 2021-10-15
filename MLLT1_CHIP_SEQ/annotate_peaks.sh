# more metaplots - same as first metaplot but look specifically at genes up/downregulated from combined RNA-Seq results
# same code for MCF-7, just replace SUM/sum with MCF/mcf

#!/bin/bash
#SBATCH --partition=batch
#SBATCH --job-name=annotate_peaks
#SBATCH --ntasks=5
#SBATCH --mem=25G
#SBATCH --time=00-00:30:00


cd /stopgap/donglab/ling/t1-data/MLLT1/ChIP-Seq/analyses/

module load homer
module load ucsctools


annotatePeaks.pl tss hg38 \
-list mcf_shared_genes_7d_down_all.txt \
-d MCF_DMSO_24H_IP/ MCF_SGC_24H_IP/ -size 2000 -hist 100 > results/MCF_MLLT1_24H_down_degs_tss.txt 

annotatePeaks.pl tss hg38 \
-list mcf_shared_genes_7d_down_all.txt \
-d MCF_DMSO_7D_IP/ MCF_SGC_7D_IP/ -size 2000 -hist 100 > results/MCF_MLLT1_7D_down_degs_tss.txt

annotatePeaks.pl tss hg38 \
-list mcf_shared_genes_7d_up_all.txt \
-d MCF_DMSO_24H_IP/ MCF_SGC_24H_IP/ -size 2000 -hist 100 > results/MCF_MLLT1_24H_up_degs_tss.txt 

annotatePeaks.pl tss hg38 \
-list mcf_shared_genes_7d_up_all.txt \
-d MCF_DMSO_7D_IP/ MCF_SGC_7D_IP/ -size 2000 -hist 100 > results/MCF_MLLT1_7D_up_degs_tss.txt



# same as before but not histogram - want to plot boxplot

#!/bin/bash
#SBATCH --partition=batch
#SBATCH --job-name=annotate_peaks
#SBATCH --ntasks=5
#SBATCH --mem=25G
#SBATCH --time=00-00:30:00


cd /stopgap/donglab/ling/t1-data/MLLT1/ChIP-Seq/analyses/

module load homer
module load ucsctools


annotatePeaks.pl tss hg38 \
-list sum_shared_genes_7d_down_all.txt \
-d SUM_DMSO_24H_IP/ SUM_SGC_24H_IP/ -size 1000 > results/SUM_MLLT1_24H_down_degs_bp_tss.txt 

annotatePeaks.pl tss hg38 \
-list sum_shared_genes_7d_down_all.txt \
-d SUM_DMSO_7D_IP/ SUM_SGC_7D_IP/ -size 1000 > results/SUM_MLLT1_7D_down_degs_bp_tss.txt

annotatePeaks.pl tss hg38 \
-list sum_shared_genes_7d_up_all.txt \
-d SUM_DMSO_24H_IP/ SUM_SGC_24H_IP/ -size 1000 > results/SUM_MLLT1_24H_up_degs_bp_tss.txt 

annotatePeaks.pl tss hg38 \
-list sum_shared_genes_7d_up_all.txt \
-d SUM_DMSO_7D_IP/ SUM_SGC_7D_IP/ -size 1000 > results/SUM_MLLT1_7D_up_degs_bp_tss.txt

