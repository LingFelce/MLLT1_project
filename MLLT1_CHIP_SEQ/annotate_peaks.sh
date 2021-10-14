# more metaplots - same as first metaplot but look specifically at genes up/downregulated from combined RNA-Seq results
# same code for MCF-7, just replace SUM/sum with MCF/mcf

#!/bin/bash
#SBATCH --partition=batch
#SBATCH --job-name=annotate_peaks
#SBATCH --ntasks=8
#SBATCH --mem=25G
#SBATCH --time=00-00:30:00


cd /stopgap/donglab/ling/t1-data/MLLT1/ChIP-Seq/analyses/

module load homer
module load ucsctools


annotatePeaks.pl SUM_MLLT1_DMSO_24H_FACTOR.txt hg38 \
-list sum_shared_genes_7d_down_all.txt \
-d SUM_DMSO_24H_IP/ SUM_SGC_24H_IP/ -size 2000 -hist 100 > results/SUM_MLLT1_24H_down_degs.txt 

annotatePeaks.pl SUM_MLLT1_DMSO_7D_FACTOR.txt hg38 \
-list sum_shared_genes_7d_down_all.txt \
-d SUM_DMSO_7D_IP/ SUM_SGC_7D_IP/ -size 2000 -hist 100 > results/SUM_MLLT1_7D_down_degs.txt

annotatePeaks.pl SUM_MLLT1_DMSO_24H_FACTOR.txt hg38 \
-list sum_shared_genes_7d_up_all.txt \
-d SUM_DMSO_24H_IP/ SUM_SGC_24H_IP/ -size 2000 -hist 100 > results/SUM_MLLT1_24H_up_degs.txt 

annotatePeaks.pl SUM_MLLT1_DMSO_7D_FACTOR.txt hg38 \
-list sum_shared_genes_7d_up_all.txt \
-d SUM_DMSO_7D_IP/ SUM_SGC_7D_IP/ -size 2000 -hist 100 > results/SUM_MLLT1_7D_up_degs.txt


# same as before but not histogram - want to plot boxplot

#!/bin/bash
#SBATCH --partition=batch
#SBATCH --job-name=annotate_peaks
#SBATCH --ntasks=8
#SBATCH --mem=25G
#SBATCH --time=00-00:30:00


cd /stopgap/donglab/ling/t1-data/MLLT1/ChIP-Seq/analyses/

module load homer
module load ucsctools


annotatePeaks.pl SUM_MLLT1_DMSO_24H_FACTOR.txt hg38 \
-list sum_shared_genes_7d_down_all.txt \
-d SUM_DMSO_24H_IP/ SUM_SGC_24H_IP/ -size 1000 > results/SUM_MLLT1_24H_down_degs_bp.txt 

annotatePeaks.pl SUM_MLLT1_DMSO_7D_FACTOR.txt hg38 \
-list sum_shared_genes_7d_down_all.txt \
-d SUM_DMSO_7D_IP/ SUM_SGC_7D_IP/ -size 1000 > results/SUM_MLLT1_7D_down_degs_bp.txt

annotatePeaks.pl SUM_MLLT1_DMSO_24H_FACTOR.txt hg38 \
-list sum_shared_genes_7d_up_all.txt \
-d SUM_DMSO_24H_IP/ SUM_SGC_24H_IP/ -size 1000 > results/SUM_MLLT1_24H_up_degs_bp.txt 

annotatePeaks.pl SUM_MLLT1_DMSO_7D_FACTOR.txt hg38 \
-list sum_shared_genes_7d_up_all.txt \
-d SUM_DMSO_7D_IP/ SUM_SGC_7D_IP/ -size 1000 > results/SUM_MLLT1_7D_up_degs_bp.txt


