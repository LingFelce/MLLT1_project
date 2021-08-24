## Using Homer for peak calling

# loading IGV genome browser
module load bio/IGV
igv.sh

## MCF-7 

# create tag directory for each bam file (all on one line)
makeTagDirectory tag_MCF_DMSO_24H_INPUT /ifs/research-groups/botnar/proj013/src/MLLT1_CHIP_SEQ/deduplicated/MCF_DMSO_24H_INPUT.bam

Estimated genome size = 3087094256
	Estimated average read density = 0.002417 per bp
	Total Tags = 7460563.5
	Total Positions = 14768948
	Average tag length = 40.3
	Median tags per position = 0 (ideal: 1)
	Average tags per position = 0.008
	Fragment Length Estimate: 113
	Peak Width Estimate: 284
	Autocorrelation quality control metrics:
		Same strand fold enrichment: 1.2
		Diff strand fold enrichment: 1.3
		Same / Diff fold enrichment: 0.9

		Guessing sample is ChIP-Seq - may have low enrichment with lots of background

makeTagDirectory tag_MCF_DMSO_24H_IP /ifs/research-groups/botnar/proj013/src/MLLT1_CHIP_SEQ/deduplicated/MCF_DMSO_24H_IP.bam

Estimated genome size = 1890236023
	Estimated average read density = 0.001877 per bp
	Total Tags = 3548164.5
	Total Positions = 6901688
	Average tag length = 40.6
	Median tags per position = 0 (ideal: 1)
	Average tags per position = 0.022
	Fragment Length Estimate: 178
	Peak Width Estimate: 493
	Autocorrelation quality control metrics:
		Same strand fold enrichment: 1.2
		Diff strand fold enrichment: 1.4
		Same / Diff fold enrichment: 0.9

		Guessing sample is ChIP-Seq - may have low enrichment with lots of background

makeTagDirectory tag_MCF_SGC_24H_INPUT /ifs/research-groups/botnar/proj013/src/MLLT1_CHIP_SEQ/deduplicated/MCF_SGC_24H_INPUT.bam

Estimated genome size = 3015947285
	Estimated average read density = 0.002396 per bp
	Total Tags = 7226251.0
	Total Positions = 14284001
	Average tag length = 41.7
	Median tags per position = 0 (ideal: 1)
	Average tags per position = 0.014
	Fragment Length Estimate: 117
	Peak Width Estimate: 308
	Autocorrelation quality control metrics:
		Same strand fold enrichment: 1.3
		Diff strand fold enrichment: 1.4
		Same / Diff fold enrichment: 0.9

		Guessing sample is ChIP-Seq - may have low enrichment with lots of background

makeTagDirectory tag_MCF_SGC_24H_IP /ifs/research-groups/botnar/proj013/src/MLLT1_CHIP_SEQ/deduplicated/MCF_SGC_24H_IP.bam

Estimated genome size = 3086917295
	Estimated average read density = 0.000901 per bp
	Total Tags = 2782430.5
	Total Positions = 5454093
	Average tag length = 40.5
	Median tags per position = 0 (ideal: 1)
	Average tags per position = 0.017
	Fragment Length Estimate: 159
	Peak Width Estimate: 504
	Autocorrelation quality control metrics:
		Same strand fold enrichment: 1.7
		Diff strand fold enrichment: 1.8
		Same / Diff fold enrichment: 0.9

		Guessing sample is ChIP-Seq or unstranded RNA-Seq - autocorrelation looks good.

makeTagDirectory tag_MCF_DMSO_7D_INPUT /ifs/research-groups/botnar/proj013/src/MLLT1_CHIP_SEQ/deduplicated/MCF_DMSO_7D_INPUT.bam

Estimated genome size = 3086997000
	Estimated average read density = 0.001154 per bp
	Total Tags = 3560899.0
	Total Positions = 7077989
	Average tag length = 40.4
	Median tags per position = 0 (ideal: 1)
	Average tags per position = 0.005
	Fragment Length Estimate: 144
	Peak Width Estimate: 245
	Autocorrelation quality control metrics:
		Same strand fold enrichment: 1.3
		Diff strand fold enrichment: 1.5
		Same / Diff fold enrichment: 0.9

		Guessing sample is ChIP-Seq - may have low enrichment with lots of background

makeTagDirectory tag_MCF_DMSO_7D_IP /ifs/research-groups/botnar/proj013/src/MLLT1_CHIP_SEQ/deduplicated/MCF_DMSO_7D_IP.bam

Estimated genome size = 3087013732
	Estimated average read density = 0.001150 per bp
	Total Tags = 3550679.5
	Total Positions = 6990096
	Average tag length = 40.2
	Median tags per position = 0 (ideal: 1)
	Average tags per position = 0.014
	Fragment Length Estimate: 139
	Peak Width Estimate: 434
	Autocorrelation quality control metrics:
		Same strand fold enrichment: 1.9
		Diff strand fold enrichment: 2.0
		Same / Diff fold enrichment: 0.9

		Guessing sample is ChIP-Seq or unstranded RNA-Seq - autocorrelation looks good.

makeTagDirectory tag_MCF_SGC_7D_INPUT /ifs/research-groups/botnar/proj013/src/MLLT1_CHIP_SEQ/deduplicated/MCF_SGC_7D_INPUT.bam

Estimated genome size = 3086967446
	Estimated average read density = 0.001884 per bp
	Total Tags = 5815631.5
	Total Positions = 11508446
	Average tag length = 40.5
	Median tags per position = 0 (ideal: 1)
	Average tags per position = 0.008
	Fragment Length Estimate: 121
	Peak Width Estimate: 255
	Autocorrelation quality control metrics:
		Same strand fold enrichment: 1.2
		Diff strand fold enrichment: 1.4
		Same / Diff fold enrichment: 0.9

		Guessing sample is ChIP-Seq - may have low enrichment with lots of background

makeTagDirectory tag_MCF_SGC_7D_IP /ifs/research-groups/botnar/proj013/src/MLLT1_CHIP_SEQ/deduplicated/MCF_SGC_7D_IP.bam

Estimated genome size = 3086797212
	Estimated average read density = 0.001029 per bp
	Total Tags = 3176761.0
	Total Positions = 6242138
	Average tag length = 40.3
	Median tags per position = 0 (ideal: 1)
	Average tags per position = 0.015
	Fragment Length Estimate: 159
	Peak Width Estimate: 441
	Autocorrelation quality control metrics:
		Same strand fold enrichment: 1.9
		Diff strand fold enrichment: 2.0
		Same / Diff fold enrichment: 0.9

		Guessing sample is ChIP-Seq or unstranded RNA-Seq - autocorrelation looks good.

# tag directories (x8)
tag_MCF_DMSO_24H_INPUT  tag_MCF_DMSO_24H_IP  tag_MCF_DMSO_7D_INPUT  tag_MCF_DMSO_7D_IP  tag_MCF_SGC_24H_INPUT  tag_MCF_SGC_24H_IP  tag_MCF_SGC_7D_INPUT  tag_MCF_SGC_7D_IP

# remove _tag names
MCF_DMSO_24H_INPUT  MCF_DMSO_7D_INPUT  MCF_SGC_24H_INPUT  MCF_SGC_7D_INPUT
MCF_DMSO_24H_IP     MCF_DMSO_7D_IP     MCF_SGC_24H_IP     MCF_SGC_7D_IP

# make genome browser file - create bedGraph file
makeUCSCfile MCF_DMSO_24H_INPUT -o auto
makeUCSCfile MCF_DMSO_24H_IP -o auto
makeUCSCfile MCF_DMSO_7D_INPUT -o auto
makeUCSCfile MCF_DMSO_7D_IP -o auto
makeUCSCfile MCF_SGC_24H_INPUT -o auto
makeUCSCfile MCF_SGC_24H_IP -o auto
makeUCSCfile MCF_SGC_7D_INPUT -o auto
makeUCSCfile MCF_SGC_7D_IP -o auto

# open UCSC genome browser in NoMachine Firefox > select hg38 genome > add custom track > upload zipped file

# actually realised probably didn't need to create bedGraph, spotted my mistake in BigWig code - forgot to put / at end of -url!

# make BigWig file to view in genome browser (one line)
# Homer will put a text file in the tag directory that you can use to link to the bigwig in UCSC (just paste the contents of the file into the ‘add custom track’ box on UCSC). 

makeBigWig.pl MCF_DMSO_24H_INPUT/ hg38 -webdir /ifs/research-groups/botnar/proj013/web/public/bigwigs/ -url http://cgat.org/downloads/botnar/proj013/public/bigwigs/
makeBigWig.pl MCF_DMSO_24H_IP/ hg38 -webdir /ifs/research-groups/botnar/proj013/web/public/bigwigs/ -url http://cgat.org/downloads/botnar/proj013/public/bigwigs/
makeBigWig.pl MCF_DMSO_7D_INPUT/ hg38 -webdir /ifs/research-groups/botnar/proj013/web/public/bigwigs/ -url http://cgat.org/downloads/botnar/proj013/public/bigwigs/
makeBigWig.pl MCF_DMSO_7D_IP/ hg38 -webdir /ifs/research-groups/botnar/proj013/web/public/bigwigs/ -url http://cgat.org/downloads/botnar/proj013/public/bigwigs/
makeBigWig.pl MCF_SGC_24H_INPUT/ hg38 -webdir /ifs/research-groups/botnar/proj013/web/public/bigwigs/ -url http://cgat.org/downloads/botnar/proj013/public/bigwigs/
makeBigWig.pl MCF_SGC_24H_IP/ hg38 -webdir /ifs/research-groups/botnar/proj013/web/public/bigwigs/ -url http://cgat.org/downloads/botnar/proj013/public/bigwigs/
makeBigWig.pl MCF_SGC_7D_INPUT/ hg38 -webdir /ifs/research-groups/botnar/proj013/web/public/bigwigs/ -url http://cgat.org/downloads/botnar/proj013/public/bigwigs/
makeBigWig.pl MCF_SGC_7D_IP/ hg38 -webdir /ifs/research-groups/botnar/proj013/web/public/bigwigs/ -url http://cgat.org/downloads/botnar/proj013/public/bigwigs/

# call DMSO peaks from tag directory (filtering based on input)
findPeaks MCF_DMSO_24H_IP/ -style factor -i MCF_DMSO_24H_INPUT/ > MCF_MLLT1_DMSO_24H_FACTOR.txt
findPeaks MCF_DMSO_24H_IP/ -style histone -i MCF_DMSO_24H_INPUT/ > MCF_MLLT1_DMSO_24H_HISTONE.txt
findPeaks MCF_DMSO_7D_IP/ -style factor -i MCF_DMSO_7D_INPUT/ > MCF_MLLT1_DMSO_7D_FACTOR.txt
findPeaks MCF_DMSO_7D_IP/ -style histone -i MCF_DMSO_7D_INPUT/ > MCF_MLLT1_DMSO_7D_HISTONE.txt

# annotate peak file with number of reads under peak in each tag directory (-d)
annotatePeaks.pl MCF_MLLT1_DMSO_24H_FACTOR.txt hg38 -d MCF_DMSO_24H_IP/ MCF_SGC_24H_IP/ > MCF_MLLT1_PEAKS_24H_FACTOR.quant.txt
annotatePeaks.pl MCF_MLLT1_DMSO_24H_HISTONE.txt hg38 -d MCF_DMSO_24H_IP/ MCF_SGC_24H_IP/ > MCF_MLLT1_PEAKS_24H_HISTONE.quant.txt
annotatePeaks.pl MCF_MLLT1_DMSO_7D_FACTOR.txt hg38 -d MCF_DMSO_7D_IP/ MCF_SGC_7D_IP/ > MCF_MLLT1_PEAKS_7D_FACTOR.quant.txt
annotatePeaks.pl MCF_MLLT1_DMSO_7D_HISTONE.txt hg38 -d MCF_DMSO_7D_IP/ MCF_SGC_7D_IP/ > MCF_MLLT1_PEAKS_7D_HISTONE.quant.txt

# peak calling for SGC peaks
findPeaks MCF_SGC_24H_IP/ -style factor -i MCF_SGC_24H_INPUT/ > MCF_MLLT1_SGC_24H_FACTOR.txt
findPeaks MCF_SGC_7D_IP/ -style factor -i MCF_SGC_7D_INPUT/ > MCF_MLLT1_SGC_7D_FACTOR.txt

# annotate peak file with number of reads under peak in each tag directory
annotatePeaks.pl MCF_MLLT1_SGC_24H_FACTOR.txt hg38 -d MCF_SGC_24H_IP/ MCF_DMSO_24H_IP/ > MCF_MLLT1_SGC_PEAKS_24H_FACTOR.quant.txt
annotatePeaks.pl MCF_MLLT1_SGC_7D_FACTOR.txt hg38 -d MCF_SGC_7D_IP/ MCF_DMSO_7D_IP/ > MCF_MLLT1_SGC_PEAKS_7D_FACTOR.quant.txt


## SUM159

makeTagDirectory SUM_DMSO_24H_INPUT /ifs/research-groups/botnar/proj013/src/MLLT1_CHIP_SEQ/deduplicated/SUM_DMSO_24H_INPUT.bam
makeTagDirectory SUM_DMSO_24H_IP /ifs/research-groups/botnar/proj013/src/MLLT1_CHIP_SEQ/deduplicated/SUM_DMSO_24H_IP.bam
makeTagDirectory SUM_SGC_24H_INPUT /ifs/research-groups/botnar/proj013/src/MLLT1_CHIP_SEQ/deduplicated/SUM_SGC_24H_INPUT.bam
makeTagDirectory SUM_SGC_24H_IP /ifs/research-groups/botnar/proj013/src/MLLT1_CHIP_SEQ/deduplicated/SUM_SGC_24H_IP.bam

makeTagDirectory SUM_DMSO_7D_INPUT /ifs/research-groups/botnar/proj013/src/MLLT1_CHIP_SEQ/deduplicated/SUM_DMSO_7D_INPUT.bam
makeTagDirectory SUM_DMSO_7D_IP /ifs/research-groups/botnar/proj013/src/MLLT1_CHIP_SEQ/deduplicated/SUM_DMSO_7D_IP.bam
makeTagDirectory SUM_SGC_7D_INPUT /ifs/research-groups/botnar/proj013/src/MLLT1_CHIP_SEQ/deduplicated/SUM_SGC_7D_INPUT.bam
makeTagDirectory SUM_SGC_7D_IP /ifs/research-groups/botnar/proj013/src/MLLT1_CHIP_SEQ/deduplicated/SUM_SGC_7D_IP.bam

# make BigWig file to view in genome browser (one line)
# Homer will put a text file in the tag directory that you can use to link to the bigwig in UCSC (just paste the contents of the file into the ‘add custom track’ box on UCSC). 
# use -norm for SGC IP samples only (previously calculated from Drosophila ratio)

makeBigWig.pl SUM_DMSO_24H_INPUT/ hg38 -webdir /ifs/research-groups/botnar/proj013/web/public/bigwigs/ -url http://cgat.org/downloads/botnar/proj013/public/bigwigs/
makeBigWig.pl SUM_DMSO_24H_IP/ hg38 -webdir /ifs/research-groups/botnar/proj013/web/public/bigwigs/ -url http://cgat.org/downloads/botnar/proj013/public/bigwigs/
makeBigWig.pl SUM_DMSO_7D_INPUT/ hg38 -webdir /ifs/research-groups/botnar/proj013/web/public/bigwigs/ -url http://cgat.org/downloads/botnar/proj013/public/bigwigs/
makeBigWig.pl SUM_DMSO_7D_IP/ hg38 -webdir /ifs/research-groups/botnar/proj013/web/public/bigwigs/ -url http://cgat.org/downloads/botnar/proj013/public/bigwigs/
makeBigWig.pl SUM_SGC_24H_INPUT/ hg38 -webdir /ifs/research-groups/botnar/proj013/web/public/bigwigs/ -url http://cgat.org/downloads/botnar/proj013/public/bigwigs/
makeBigWig.pl SUM_SGC_24H_IP/ hg38 -norm 6672871.029 -webdir /ifs/research-groups/botnar/proj013/web/public/bigwigs/ -url http://cgat.org/downloads/botnar/proj013/public/bigwigs/
makeBigWig.pl SUM_SGC_7D_INPUT/ hg38 -webdir /ifs/research-groups/botnar/proj013/web/public/bigwigs/ -url http://cgat.org/downloads/botnar/proj013/public/bigwigs/
makeBigWig.pl SUM_SGC_7D_IP/ hg38 -norm 7550759.462 -webdir /ifs/research-groups/botnar/proj013/web/public/bigwigs/ -url http://cgat.org/downloads/botnar/proj013/public/bigwigs/

# call peaks from tag directory (filtering based on input)
findPeaks SUM_DMSO_24H_IP/ -style factor -i SUM_DMSO_24H_INPUT/ > SUM_MLLT1_DMSO_24H_FACTOR.txt
findPeaks SUM_DMSO_24H_IP/ -style histone -i SUM_DMSO_24H_INPUT/ > SUM_MLLT1_DMSO_24H_HISTONE.txt
findPeaks SUM_DMSO_7D_IP/ -style factor -i SUM_DMSO_7D_INPUT/ >SUM_MLLT1_DMSO_7D_FACTOR.txt
findPeaks SUM_DMSO_7D_IP/ -style histone -i SUM_DMSO_7D_INPUT/ > SUM_MLLT1_DMSO_7D_HISTONE.txt

# annotate peak file with number of reads under peak in each tag directory (-d)
annotatePeaks.pl SUM_MLLT1_DMSO_24H_FACTOR.txt hg38 -d SUM_DMSO_24H_IP/ SUM_SGC_24H_IP/ > SUM_MLLT1_PEAKS_24H_FACTOR.quant.txt
annotatePeaks.pl SUM_MLLT1_DMSO_24H_HISTONE.txt hg38 -d SUM_DMSO_24H_IP/ SUM_SGC_24H_IP/ > SUM_MLLT1_PEAKS_24H_HISTONE.quant.txt
annotatePeaks.pl SUM_MLLT1_DMSO_7D_FACTOR.txt hg38 -d SUM_DMSO_7D_IP/ SUM_SGC_7D_IP/ > SUM_MLLT1_PEAKS_7D_FACTOR.quant.txt
annotatePeaks.pl SUM_MLLT1_DMSO_7D_HISTONE.txt hg38 -d SUM_DMSO_7D_IP/ SUM_SGC_7D_IP/ > SUM_MLLT1_PEAKS_7D_HISTONE.quant.txt

# or if have to do separately with differently normalisation factors
annotatePeaks.pl SUM_MLLT1_DMSO_24H_FACTOR.txt hg38 -norm 6672871.029 -d SUM_DMSO_24H_IP/ SUM_SGC_24H_IP/ > SUM_MLLT1_PEAKS_24H_FACTOR_NORM.quant.txt
annotatePeaks.pl SUM_MLLT1_DMSO_7D_FACTOR.txt hg38 -norm 7550759.462 -d SUM_DMSO_7D_IP/ SUM_SGC_7D_IP/ > SUM_MLLT1_PEAKS_7D_FACTOR_NORM.quant.txt

# call SGC peaks
findPeaks SUM_SGC_24H_IP/ -style factor -i SUM_SGC_24H_INPUT/ > SUM_MLLT1_SGC_24H_FACTOR.txt
findPeaks SUM_SGC_7D_IP/ -style factor -i SUM_SGC_7D_INPUT/ >SUM_MLLT1_SGC_7D_FACTOR.txt

# annotate SGC peaks
annotatePeaks.pl SUM_MLLT1_SGC_24H_FACTOR.txt hg38 -norm 6672871.029 -d SUM_SGC_24H_IP/ SUM_DMSO_24H_IP/ > SUM_MLLT1_SGC_PEAKS_24H_FACTOR_NORM.quant.txt
annotatePeaks.pl SUM_MLLT1_SGC_7D_FACTOR.txt hg38 -norm 7550759.462 -d SUM_SGC_7D_IP/ SUM_DMSO_7D_IP/ > SUM_MLLT1_SGC_PEAKS_7D_FACTOR_NORM.quant.txt

# generating output for metaplot - average distribution of MLLT1 over peaks under both conditions
annotatePeaks.pl MCF_MLLT1_DMSO_24H_FACTOR.txt hg38 -d MCF_DMSO_24H_IP/ MCF_SGC_24H_IP/ -size 2000 -hist 100 > MCF_MLLT1_24H_average.txt 
annotatePeaks.pl MCF_MLLT1_DMSO_7D_FACTOR.txt hg38 -d MCF_DMSO_7D_IP/ MCF_SGC_7D_IP/ -size 2000 -hist 100 > MCF_MLLT1_7D_average.txt

annotatePeaks.pl SUM_MLLT1_DMSO_24H_FACTOR.txt hg38 -norm 6672871.029 -d SUM_DMSO_24H_IP/ SUM_SGC_24H_IP/ -size 2000 -hist 100 > SUM_MLLT1_24H_average.txt 
annotatePeaks.pl SUM_MLLT1_DMSO_7D_FACTOR.txt hg38 -norm 7550759.462 -d SUM_DMSO_7D_IP/ SUM_SGC_7D_IP/ -size 2000 -hist 100 > SUM_MLLT1_7D_average.txt

## redoing tags and bigwigs on CCB cluster

module load igv
igv

#!/bin/bash
#SBATCH --partition=batch
#SBATCH --job-name=tag
#SBATCH --ntasks=8
#SBATCH --mem=50G
#SBATCH --time=00-06:00:00
#SBATCH --output=%j_%x.out
#SBATCH --error=%j_%x.err

cd /datashare/lfelce/ChIP-Seq/bam/deduplicated/

module load homer
module load ucsctools

makeTagDirectory tag_MCF_DMSO_24H_IP /datashare/lfelce/ChIP-Seq/bam/deduplicated/MCF_DMSO_24H_IP.bam

Loading homer/20201202
  Loading requirement: htslib/1.10 samtools/1.10 R-base/4.1.0 gsl/2.6
    hdf5/1.10.7 R-cbrg/current
	Will parse file: /datashare/lfelce/ChIP-Seq/bam/deduplicated/MCF_DMSO_24H_IP.bam

	Creating directory: tag_MCF_DMSO_24H_IP and removing existing *.tags.tsv

	Treating /datashare/lfelce/ChIP-Seq/bam/deduplicated/MCF_DMSO_24H_IP.bam as a bam file
	Reading alignment file /datashare/lfelce/ChIP-Seq/bam/deduplicated/MCF_DMSO_24H_IP.bam

	Optimizing tag files...
	Estimated genome size = 3086939541
	Estimated average read density = 0.001741 per bp
	Total Tags = 5373525.5
	Total Positions = 10466427
	Average tag length = 40.6
	Median tags per position = 0 (ideal: 1)
	Average tags per position = 0.021
	Fragment Length Estimate: 177
	Peak Width Estimate: 514
	Autocorrelation quality control metrics:
		Same strand fold enrichment: 1.2
		Diff strand fold enrichment: 1.5
		Same / Diff fold enrichment: 0.8

		Guessing sample is ChIP-Seq - may have low enrichment with lots of background

+--------------------------------------------------------------+
|   This is the CCB job profiler for your job. For help with   |
|   the results, please contact genmail@molbiol.ox.ac.uk       |
+--------------------------------------------------------------+
REQUESTED    : 0-06:00:00
JOB RUN TIME : Days 0, Hours 0, Minutes 1, Seconds 43
UTILISATION  : 0.476851851852%
DEBUG        : 21600 103 0.476851851852
+--------------------------------------------------------------+
|                    LOW TIME UTILISATION                      |
|   Requesting roughly the correct amount of time (e.g. an     |
|   hour, a day or a week) can help your job start sooner.     |
+--------------------------------------------------------------+
+--------------------------------------------------------------+
|                         CPU Profiling                        |
+--------------------------------------------------------------+
REQUESTED    : 8 CPU cores
MAX USAGE    : 1.041 CPU cores
UTILISATION  : 7.3972826087% of allocated CPU over job time
DEBUG        : 8 1.041 7.3972826087 
+--------------------------------------------------------------+
|                         LOW CPU USAGE                        |
|   Please request fewer CPUs. This is generally safe and      |
|   will allow more jobs to run at once.                       |
+--------------------------------------------------------------+

Max|    ******  ********                                        
   |   *******************                                      
   |   *******************               *                      
 C |   *******************              **                   ***
 P |   *******************              **       ***************
 U |  ********************             *************************
   |  ********************        ******************************
 % |  *********************    *********************************
   |  ********************* ************************************
   |************************************************************
Min+------------------------------------------------------------
   Start                      Job Time                       End

+--------------------------------------------------------------+
|                       Memory Profiling                       |
+--------------------------------------------------------------+
REQUESTED    : 50.0GB
MAX USAGE    : 56856.0 KB, 55.52 MB, 0.05 GB
UTILISATION  : 0.0585993891177% of allocated memory over job time
DEBUG        : 50.0 0.05 0.0585993891177 
+--------------------------------------------------------------+
|                        LOW MEMORY USAGE                      |
|   Requesting an additional 25% to 50% memory is typically a  |
|   sufficient safety margin for your jobs.                    |
+--------------------------------------------------------------+

Max|                                       **                   
   |                                      *****  **   ****  *** 
   |                                      ********** ***********
 M |                                      **********************
 e |                   **                 **********************
 m |  *********************              ***********************
 o |************************************************************
 r |************************************************************
 y |************************************************************
   |************************************************************
Min+------------------------------------------------------------
   Start                      Job Time                       End


#!/bin/bash
#SBATCH --partition=batch
#SBATCH --job-name=bigwig
#SBATCH --ntasks=4
#SBATCH --mem=25G
#SBATCH --time=00-01:00:00
#SBATCH --output=%j_%x.out
#SBATCH --error=%j_%x.err

cd /datashare/lfelce/ChIP-Seq/tag_directories/

module load homer
module load ucsctools

makeBigWig.pl /datashare/lfelce/ChIP-Seq/tag_directories/tag_MCF_DMSO_24H_IP hg38 -webdir /datashare/lfelce/ChIP-seq/bigwigs/ -url http://datashare.molbiol.ox.ac.uk/public/lfelce/ChIP-seq/bigwigs/

Loading homer/20201202
  Loading requirement: htslib/1.10 samtools/1.10 R-base/4.1.0 gsl/2.6
    hdf5/1.10.7 R-cbrg/current

	Visualization fragment length = 177
	Output file: /datashare/lfelce/ChIP-Seq/tag_directories/tag_MCF_DMSO_24H_IP/tag_MCF_DMSO_24H_IP.ucsc.bigWig
	No need to remove tags to get desired file size
	Generating bedGraph for chr1
	Generating bedGraph for chr10
	Generating bedGraph for chr11
	Generating bedGraph for chr12
	Generating bedGraph for chr13
	Generating bedGraph for chr14
	Generating bedGraph for chr15
	Generating bedGraph for chr16
	Generating bedGraph for chr17
	Generating bedGraph for chr18
	Generating bedGraph for chr19
	Generating bedGraph for chr2
	Generating bedGraph for chr20
	Generating bedGraph for chr21
	Generating bedGraph for chr22
	Generating bedGraph for chr3
	Generating bedGraph for chr4
	Generating bedGraph for chr5
	Generating bedGraph for chr6
	Generating bedGraph for chr7
	Generating bedGraph for chr8
	Generating bedGraph for chr9
	Generating bedGraph for chrM
	Generating bedGraph for chrX
	Generating bedGraph for chrY
	Creating bigWig from bedGraph /datashare/lfelce/ChIP-Seq/tag_directories/tag_MCF_DMSO_24H_IP/tag_MCF_DMSO_24H_IP.ucsc.bigWig
mv: cannot move ‘/datashare/lfelce/ChIP-Seq/tag_directories/tag_MCF_DMSO_24H_IP/tag_MCF_DMSO_24H_IP.ucsc.bigWig’ to ‘/datashare/lfelce/ChIP-seq/bigwigs//tag_MCF_DMSO_24H_IP.ucsc.bigWig’: No such file or directory

	If you want to upload these tracks to the WashU Epigenome Browser, use:
		http://datashare.molbiol.ox.ac.uk/public/lfelce/ChIP-seq/bigwigs/tag_MCF_DMSO_24H_IP.ucsc.bigWig

+--------------------------------------------------------------+
|   This is the CCB job profiler for your job. For help with   |
|   the results, please contact genmail@molbiol.ox.ac.uk       |
+--------------------------------------------------------------+
REQUESTED    : 0-01:00:00
JOB RUN TIME : Days 0, Hours 0, Minutes 0, Seconds 54
UTILISATION  : 1.5%
DEBUG        : 3600 54 1.5
+--------------------------------------------------------------+
|                    LOW TIME UTILISATION                      |
|   Requesting roughly the correct amount of time (e.g. an     |
|   hour, a day or a week) can help your job start sooner.     |
+--------------------------------------------------------------+
+--------------------------------------------------------------+
|                         CPU Profiling                        |
+--------------------------------------------------------------+
REQUESTED    : 4 CPU cores
MAX USAGE    : 2.86 CPU cores
UTILISATION  : 32.3140625% of allocated CPU over job time
DEBUG        : 4 2.86 32.3140625 
+--------------------------------------------------------------+
|                         LOW CPU USAGE                        |
|   Please request fewer CPUs. This is generally safe and      |
|   will allow more jobs to run at once.                       |
+--------------------------------------------------------------+

Max|                         *                                  
   |                         *                                  
   |                         **                                 
 C |                         ***********                        
 P |                         ********************************** 
 U |      **                ************************************
   |    ********************************************************
 % |    ********************************************************
   |   *********************************************************
   |************************************************************
Min+------------------------------------------------------------
   Start                      Job Time                       End

+--------------------------------------------------------------+
|                       Memory Profiling                       |
+--------------------------------------------------------------+
REQUESTED    : 25.0GB
MAX USAGE    : 151516.0 KB, 147.96 MB, 0.14 GB
UTILISATION  : 0.286871274312% of allocated memory over job time
DEBUG        : 25.0 0.14 0.286871274312 
+--------------------------------------------------------------+
|                        LOW MEMORY USAGE                      |
|   Requesting an additional 25% to 50% memory is typically a  |
|   sufficient safety margin for your jobs.                    |
+--------------------------------------------------------------+

Max|                                                      ***   
   |                                                 *********  
   |                                                ************
 M |                                                ************
 e |                                               *************
 m |    *   *** ** ** ******************************************
 o |    ********************************************************
 r |   *********************************************************
 y |************************************************************
   |************************************************************
Min+------------------------------------------------------------
   Start                      Job Time                       End


