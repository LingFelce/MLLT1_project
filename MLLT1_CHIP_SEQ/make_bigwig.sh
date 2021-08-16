# change to unix from windows (dos)
dos2unix make_bigwig.sh

#!/bin/bash
#SBATCH --partition=batch
#SBATCH --job-name=bigwig
#SBATCH --ntasks=8
#SBATCH --mem=50G
#SBATCH --time=00-06:00:00
#SBATCH --output=%j_%x.out
#SBATCH --error=%j_%x.err

cd /datashare/lfelce/ChIP-Seq/tag_directories/

module load homer
module load ucsctools

makeBigWig.pl MCF_DMSO_24H_INPUT/ hg38 -webdir /datashare/lfelce/ChIP-seq/bigwigs/ -url http://datashare.molbiol.ox.ac.uk/public/lfelce/ChIP-seq/bigwigs/

makeBigWig.pl MCF_DMSO_24H_IP/ hg38 -webdir /datashare/lfelce/ChIP-seq/bigwigs/ -url http://datashare.molbiol.ox.ac.uk/public/lfelce/ChIP-seq/bigwigs/

makeBigWig.pl MCF_DMSO_7D_INPUT/ hg38 -webdir /datashare/lfelce/ChIP-seq/bigwigs/ -url http://datashare.molbiol.ox.ac.uk/public/lfelce/ChIP-seq/bigwigs/

makeBigWig.pl MCF_DMSO_7D_IP/ hg38 -webdir /datashare/lfelce/ChIP-seq/bigwigs/ -url http://datashare.molbiol.ox.ac.uk/public/lfelce/ChIP-seq/bigwigs/

makeBigWig.pl MCF_SGC_24H_INPUT/ hg38 -webdir /datashare/lfelce/ChIP-seq/bigwigs/ -url http://datashare.molbiol.ox.ac.uk/public/lfelce/ChIP-seq/bigwigs/

makeBigWig.pl MCF_SGC_24H_IP/ hg38 -webdir /datashare/lfelce/ChIP-seq/bigwigs/ -url http://datashare.molbiol.ox.ac.uk/public/lfelce/ChIP-seq/bigwigs/

makeBigWig.pl MCF_SGC_7D_INPUT/ hg38 -webdir /datashare/lfelce/ChIP-seq/bigwigs/ -url http://datashare.molbiol.ox.ac.uk/public/lfelce/ChIP-seq/bigwigs/

makeBigWig.pl MCF_SGC_7D_IP/ hg38 -webdir /datashare/lfelce/ChIP-seq/bigwigs/ -url http://datashare.molbiol.ox.ac.uk/public/lfelce/ChIP-seq/bigwigs/

# do the same from SUM tag directories
# should have probably done separate script for each tag directory but too lazy

+--------------------------------------------------------------+
|   This is the CCB job profiler for your job. For help with   |
|   the results, please contact genmail@molbiol.ox.ac.uk       |
+--------------------------------------------------------------+
REQUESTED    : 0-06:00:00
JOB RUN TIME : Days 0, Hours 0, Minutes 5, Seconds 23
UTILISATION  : 1.49537037037%
DEBUG        : 21600 323 1.49537037037
+--------------------------------------------------------------+
|                    LOW TIME UTILISATION                      |
|   Requesting roughly the correct amount of time (e.g. an     |
|   hour, a day or a week) can help your job start sooner.     |
+--------------------------------------------------------------+
+--------------------------------------------------------------+
|                         CPU Profiling                        |
+--------------------------------------------------------------+
REQUESTED    : 8 CPU cores
MAX USAGE    : 2.66 CPU cores
UTILISATION  : 19.8798611111% of allocated CPU over job time
DEBUG        : 8 2.66 19.8798611111 
+--------------------------------------------------------------+
|                         LOW CPU USAGE                        |
|   Please request fewer CPUs. This is generally safe and      |
|   will allow more jobs to run at once.                       |
+--------------------------------------------------------------+

Max|                    *    **                              ** 
   |    **        **    **   **                              ** 
   |   ****      ****   **  ****      ***       *    ***     ** 
 C |   *************** **********    ********  ***  *******  ***
 P |  ****************************   ********* **** ************
 U |************************************************************
   |************************************************************
 % |************************************************************
   |************************************************************
   |************************************************************
Min+------------------------------------------------------------
   Start                      Job Time                       End

+--------------------------------------------------------------+
|                       Memory Profiling                       |
+--------------------------------------------------------------+
REQUESTED    : 50.0GB
MAX USAGE    : 204620.0 KB, 199.82 MB, 0.2 GB
UTILISATION  : 0.159007178413% of allocated memory over job time
DEBUG        : 50.0 0.2 0.159007178413 
+--------------------------------------------------------------+
|                        LOW MEMORY USAGE                      |
|   Requesting an additional 25% to 50% memory is typically a  |
|   sufficient safety margin for your jobs.                    |
+--------------------------------------------------------------+

Max|           *                           **                   
   |          ***                          **                   
   |         ****                          ***                  
 M |        *****                         ****                  
 e |        *****                         ****            *     
 m |        ******              **   *********           **     
 o |**************   **  **********************  ***********  **
 r |*************** ********************************************
 y |************************************************************
   |************************************************************
Min+------------------------------------------------------------
   Start                      Job Time                       End


Loading homer/20201202
  Loading requirement: htslib/1.10 samtools/1.10 R-base/4.1.0 gsl/2.6
    hdf5/1.10.7 R-cbrg/current

	Visualization fragment length = 113
	Output file: MCF_DMSO_24H_INPUT/MCF_DMSO_24H_INPUT.ucsc.bigWig
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
	Creating bigWig from bedGraph MCF_DMSO_24H_INPUT/MCF_DMSO_24H_INPUT.ucsc.bigWig
mv: cannot move ‘MCF_DMSO_24H_INPUT/MCF_DMSO_24H_INPUT.ucsc.bigWig’ to ‘/datashare/lfelce/ChIP-seq/bigwigs//MCF_DMSO_24H_INPUT.ucsc.bigWig’: No such file or directory

	If you want to upload these tracks to the WashU Epigenome Browser, use:
		http://datashare.molbiol.ox.ac.uk/public/lfelce/ChIP-seq/bigwigs/MCF_DMSO_24H_INPUT.ucsc.bigWig


	Visualization fragment length = 178
	Output file: MCF_DMSO_24H_IP/MCF_DMSO_24H_IP.ucsc.bigWig
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
	Creating bigWig from bedGraph MCF_DMSO_24H_IP/MCF_DMSO_24H_IP.ucsc.bigWig
mv: cannot move ‘MCF_DMSO_24H_IP/MCF_DMSO_24H_IP.ucsc.bigWig’ to ‘/datashare/lfelce/ChIP-seq/bigwigs//MCF_DMSO_24H_IP.ucsc.bigWig’: No such file or directory

	If you want to upload these tracks to the WashU Epigenome Browser, use:
		http://datashare.molbiol.ox.ac.uk/public/lfelce/ChIP-seq/bigwigs/MCF_DMSO_24H_IP.ucsc.bigWig


	Visualization fragment length = 144
	Output file: MCF_DMSO_7D_INPUT/MCF_DMSO_7D_INPUT.ucsc.bigWig
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
	Creating bigWig from bedGraph MCF_DMSO_7D_INPUT/MCF_DMSO_7D_INPUT.ucsc.bigWig
mv: cannot move ‘MCF_DMSO_7D_INPUT/MCF_DMSO_7D_INPUT.ucsc.bigWig’ to ‘/datashare/lfelce/ChIP-seq/bigwigs//MCF_DMSO_7D_INPUT.ucsc.bigWig’: No such file or directory

	If you want to upload these tracks to the WashU Epigenome Browser, use:
		http://datashare.molbiol.ox.ac.uk/public/lfelce/ChIP-seq/bigwigs/MCF_DMSO_7D_INPUT.ucsc.bigWig


	Visualization fragment length = 139
	Output file: MCF_DMSO_7D_IP/MCF_DMSO_7D_IP.ucsc.bigWig
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
	Creating bigWig from bedGraph MCF_DMSO_7D_IP/MCF_DMSO_7D_IP.ucsc.bigWig
mv: cannot move ‘MCF_DMSO_7D_IP/MCF_DMSO_7D_IP.ucsc.bigWig’ to ‘/datashare/lfelce/ChIP-seq/bigwigs//MCF_DMSO_7D_IP.ucsc.bigWig’: No such file or directory

	If you want to upload these tracks to the WashU Epigenome Browser, use:
		http://datashare.molbiol.ox.ac.uk/public/lfelce/ChIP-seq/bigwigs/MCF_DMSO_7D_IP.ucsc.bigWig


	Visualization fragment length = 117
	Output file: MCF_SGC_24H_INPUT/MCF_SGC_24H_INPUT.ucsc.bigWig
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
	Creating bigWig from bedGraph MCF_SGC_24H_INPUT/MCF_SGC_24H_INPUT.ucsc.bigWig
mv: cannot move ‘MCF_SGC_24H_INPUT/MCF_SGC_24H_INPUT.ucsc.bigWig’ to ‘/datashare/lfelce/ChIP-seq/bigwigs//MCF_SGC_24H_INPUT.ucsc.bigWig’: No such file or directory

	If you want to upload these tracks to the WashU Epigenome Browser, use:
		http://datashare.molbiol.ox.ac.uk/public/lfelce/ChIP-seq/bigwigs/MCF_SGC_24H_INPUT.ucsc.bigWig


	Visualization fragment length = 159
	Output file: MCF_SGC_24H_IP/MCF_SGC_24H_IP.ucsc.bigWig
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
	Creating bigWig from bedGraph MCF_SGC_24H_IP/MCF_SGC_24H_IP.ucsc.bigWig
mv: cannot move ‘MCF_SGC_24H_IP/MCF_SGC_24H_IP.ucsc.bigWig’ to ‘/datashare/lfelce/ChIP-seq/bigwigs//MCF_SGC_24H_IP.ucsc.bigWig’: No such file or directory

	If you want to upload these tracks to the WashU Epigenome Browser, use:
		http://datashare.molbiol.ox.ac.uk/public/lfelce/ChIP-seq/bigwigs/MCF_SGC_24H_IP.ucsc.bigWig


	Visualization fragment length = 121
	Output file: MCF_SGC_7D_INPUT/MCF_SGC_7D_INPUT.ucsc.bigWig
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
	Creating bigWig from bedGraph MCF_SGC_7D_INPUT/MCF_SGC_7D_INPUT.ucsc.bigWig
mv: cannot move ‘MCF_SGC_7D_INPUT/MCF_SGC_7D_INPUT.ucsc.bigWig’ to ‘/datashare/lfelce/ChIP-seq/bigwigs//MCF_SGC_7D_INPUT.ucsc.bigWig’: No such file or directory

	If you want to upload these tracks to the WashU Epigenome Browser, use:
		http://datashare.molbiol.ox.ac.uk/public/lfelce/ChIP-seq/bigwigs/MCF_SGC_7D_INPUT.ucsc.bigWig


	Visualization fragment length = 159
	Output file: MCF_SGC_7D_IP/MCF_SGC_7D_IP.ucsc.bigWig
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
	Creating bigWig from bedGraph MCF_SGC_7D_IP/MCF_SGC_7D_IP.ucsc.bigWig
mv: cannot move ‘MCF_SGC_7D_IP/MCF_SGC_7D_IP.ucsc.bigWig’ to ‘/datashare/lfelce/ChIP-seq/bigwigs//MCF_SGC_7D_IP.ucsc.bigWig’: No such file or directory

	If you want to upload these tracks to the WashU Epigenome Browser, use:
		http://datashare.molbiol.ox.ac.uk/public/lfelce/ChIP-seq/bigwigs/MCF_SGC_7D_IP.ucsc.bigWig


+--------------------------------------------------------------+
|   This is the CCB job profiler for your job. For help with   |
|   the results, please contact genmail@molbiol.ox.ac.uk       |
+--------------------------------------------------------------+
REQUESTED    : 0-06:00:00
JOB RUN TIME : Days 0, Hours 0, Minutes 17, Seconds 53
UTILISATION  : 4.96759259259%
DEBUG        : 21600 1073 4.96759259259
+--------------------------------------------------------------+
|                    LOW TIME UTILISATION                      |
|   Requesting roughly the correct amount of time (e.g. an     |
|   hour, a day or a week) can help your job start sooner.     |
+--------------------------------------------------------------+
+--------------------------------------------------------------+
|                         CPU Profiling                        |
+--------------------------------------------------------------+
REQUESTED    : 8 CPU cores
MAX USAGE    : 2.859 CPU cores
UTILISATION  : 19.0997881356% of allocated CPU over job time
DEBUG        : 8 2.859 19.0997881356 
+--------------------------------------------------------------+
|                         LOW CPU USAGE                        |
|   Please request fewer CPUs. This is generally safe and      |
|   will allow more jobs to run at once.                       |
+--------------------------------------------------------------+

Max|  *     *                                                   
   |  *     *                           *                       
   |  *     **                          **                      
 C |  **    ***      **      **    *    **      *      ***      
 P |  ***   *******  *****  *********  *******  **     ******** 
 U |  ****  ******** ****** ********** ************   **********
   |************************************************************
 % |************************************************************
   |************************************************************
   |************************************************************
Min+------------------------------------------------------------
   Start                      Job Time                       End

+--------------------------------------------------------------+
|                       Memory Profiling                       |
+--------------------------------------------------------------+
REQUESTED    : 50.0GB
MAX USAGE    : 290248.0 KB, 283.45 MB, 0.28 GB
UTILISATION  : 0.248470888299% of allocated memory over job time
DEBUG        : 50.0 0.28 0.248470888299 
+--------------------------------------------------------------+
|                        LOW MEMORY USAGE                      |
|   Requesting an additional 25% to 50% memory is typically a  |
|   sufficient safety margin for your jobs.                    |
+--------------------------------------------------------------+

Max|                                                           *
   |             *       *                   *    *           **
   |             **      *                   **   *          ***
 M |     *      ***     ***      *           **  **  *       ***
 e |    **      ***     ***      *  **       **  *****       ***
 m |    **      *****   *****    ** ****    ***  ******      ***
 o |**  ****** ******** *****   *********   *** ********     ***
 r |**************************  ************************     ***
 y |**************************  ************************ *  ****
   |************************************************************
Min+------------------------------------------------------------
   Start                      Job Time                       End



Loading homer/20201202
  Loading requirement: htslib/1.10 samtools/1.10 R-base/4.1.0 gsl/2.6
    hdf5/1.10.7 R-cbrg/current

	Visualization fragment length = 186
	Output file: SUM_DMSO_24H_INPUT/SUM_DMSO_24H_INPUT.ucsc.bigWig
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
	Creating bigWig from bedGraph SUM_DMSO_24H_INPUT/SUM_DMSO_24H_INPUT.ucsc.bigWig
mv: cannot move ‘SUM_DMSO_24H_INPUT/SUM_DMSO_24H_INPUT.ucsc.bigWig’ to ‘/datashare/lfelce/ChIP-seq/bigwigs//SUM_DMSO_24H_INPUT.ucsc.bigWig’: No such file or directory

	If you want to upload these tracks to the WashU Epigenome Browser, use:
		http://datashare.molbiol.ox.ac.uk/public/lfelce/ChIP-seq/bigwigs/SUM_DMSO_24H_INPUT.ucsc.bigWig


	Visualization fragment length = 186
	Output file: SUM_DMSO_24H_IP/SUM_DMSO_24H_IP.ucsc.bigWig
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
slurmstepd: error: _is_a_lwp: open() /proc/526/status failed: No such file or directory
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
	Creating bigWig from bedGraph SUM_DMSO_24H_IP/SUM_DMSO_24H_IP.ucsc.bigWig
mv: cannot move ‘SUM_DMSO_24H_IP/SUM_DMSO_24H_IP.ucsc.bigWig’ to ‘/datashare/lfelce/ChIP-seq/bigwigs//SUM_DMSO_24H_IP.ucsc.bigWig’: No such file or directory

	If you want to upload these tracks to the WashU Epigenome Browser, use:
		http://datashare.molbiol.ox.ac.uk/public/lfelce/ChIP-seq/bigwigs/SUM_DMSO_24H_IP.ucsc.bigWig


	Visualization fragment length = 161
	Output file: SUM_DMSO_7D_INPUT/SUM_DMSO_7D_INPUT.ucsc.bigWig
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
	Creating bigWig from bedGraph SUM_DMSO_7D_INPUT/SUM_DMSO_7D_INPUT.ucsc.bigWig
mv: cannot move ‘SUM_DMSO_7D_INPUT/SUM_DMSO_7D_INPUT.ucsc.bigWig’ to ‘/datashare/lfelce/ChIP-seq/bigwigs//SUM_DMSO_7D_INPUT.ucsc.bigWig’: No such file or directory

	If you want to upload these tracks to the WashU Epigenome Browser, use:
		http://datashare.molbiol.ox.ac.uk/public/lfelce/ChIP-seq/bigwigs/SUM_DMSO_7D_INPUT.ucsc.bigWig


	Visualization fragment length = 204
	Output file: SUM_DMSO_7D_IP/SUM_DMSO_7D_IP.ucsc.bigWig
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
	Creating bigWig from bedGraph SUM_DMSO_7D_IP/SUM_DMSO_7D_IP.ucsc.bigWig
mv: cannot move ‘SUM_DMSO_7D_IP/SUM_DMSO_7D_IP.ucsc.bigWig’ to ‘/datashare/lfelce/ChIP-seq/bigwigs//SUM_DMSO_7D_IP.ucsc.bigWig’: No such file or directory

	If you want to upload these tracks to the WashU Epigenome Browser, use:
		http://datashare.molbiol.ox.ac.uk/public/lfelce/ChIP-seq/bigwigs/SUM_DMSO_7D_IP.ucsc.bigWig


	Visualization fragment length = 177
	Output file: SUM_SGC_24H_INPUT/SUM_SGC_24H_INPUT.ucsc.bigWig
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
	Creating bigWig from bedGraph SUM_SGC_24H_INPUT/SUM_SGC_24H_INPUT.ucsc.bigWig
mv: cannot move ‘SUM_SGC_24H_INPUT/SUM_SGC_24H_INPUT.ucsc.bigWig’ to ‘/datashare/lfelce/ChIP-seq/bigwigs//SUM_SGC_24H_INPUT.ucsc.bigWig’: No such file or directory

	If you want to upload these tracks to the WashU Epigenome Browser, use:
		http://datashare.molbiol.ox.ac.uk/public/lfelce/ChIP-seq/bigwigs/SUM_SGC_24H_INPUT.ucsc.bigWig


	Visualization fragment length = 182
	Output file: SUM_SGC_24H_IP/SUM_SGC_24H_IP.ucsc.bigWig
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
	Creating bigWig from bedGraph SUM_SGC_24H_IP/SUM_SGC_24H_IP.ucsc.bigWig
mv: cannot move ‘SUM_SGC_24H_IP/SUM_SGC_24H_IP.ucsc.bigWig’ to ‘/datashare/lfelce/ChIP-seq/bigwigs//SUM_SGC_24H_IP.ucsc.bigWig’: No such file or directory

	If you want to upload these tracks to the WashU Epigenome Browser, use:
		http://datashare.molbiol.ox.ac.uk/public/lfelce/ChIP-seq/bigwigs/SUM_SGC_24H_IP.ucsc.bigWig


	Visualization fragment length = 123
	Output file: SUM_SGC_7D_INPUT/SUM_SGC_7D_INPUT.ucsc.bigWig
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
	Creating bigWig from bedGraph SUM_SGC_7D_INPUT/SUM_SGC_7D_INPUT.ucsc.bigWig
mv: cannot move ‘SUM_SGC_7D_INPUT/SUM_SGC_7D_INPUT.ucsc.bigWig’ to ‘/datashare/lfelce/ChIP-seq/bigwigs//SUM_SGC_7D_INPUT.ucsc.bigWig’: No such file or directory

	If you want to upload these tracks to the WashU Epigenome Browser, use:
		http://datashare.molbiol.ox.ac.uk/public/lfelce/ChIP-seq/bigwigs/SUM_SGC_7D_INPUT.ucsc.bigWig


	Visualization fragment length = 187
	Output file: SUM_SGC_7D_IP/SUM_SGC_7D_IP.ucsc.bigWig
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
	Creating bigWig from bedGraph SUM_SGC_7D_IP/SUM_SGC_7D_IP.ucsc.bigWig
mv: cannot move ‘SUM_SGC_7D_IP/SUM_SGC_7D_IP.ucsc.bigWig’ to ‘/datashare/lfelce/ChIP-seq/bigwigs//SUM_SGC_7D_IP.ucsc.bigWig’: No such file or directory

	If you want to upload these tracks to the WashU Epigenome Browser, use:
		http://datashare.molbiol.ox.ac.uk/public/lfelce/ChIP-seq/bigwigs/SUM_SGC_7D_IP.ucsc.bigWig



