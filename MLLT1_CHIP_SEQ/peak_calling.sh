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

# call peaks from tag directory (filtering based on input)
findPeaks MCF_DMSO_24H_IP/ -style factor -i MCF_DMSO_24H_INPUT/ > MCF_MLLT1_DMSO_24H_FACTOR.txt
findPeaks MCF_DMSO_24H_IP/ -style histone -i MCF_DMSO_24H_INPUT/ > MCF_MLLT1_DMSO_24H_HISTONE.txt
findPeaks MCF_DMSO_7D_IP/ -style factor -i MCF_DMSO_7D_INPUT/ > MCF_MLLT1_DMSO_7D_FACTOR.txt
findPeaks MCF_DMSO_7D_IP/ -style histone -i MCF_DMSO_7D_INPUT/ > MCF_MLLT1_DMSO_7D_HISTONE.txt

# annotate peak file with number of reads under peak in each tag directory (-d)
annotatePeaks.pl MCF_MLLT1_DMSO_24H_FACTOR.txt hg38 -d MCF_DMSO_24H_IP/ MCF_SGC_24H_IP/ > MCF_MLLT1_PEAKS_24H_FACTOR.quant.txt
annotatePeaks.pl MCF_MLLT1_DMSO_24H_HISTONE.txt hg38 -d MCF_DMSO_24H_IP/ MCF_SGC_24H_IP/ > MCF_MLLT1_PEAKS_24H_HISTONE.quant.txt
annotatePeaks.pl MCF_MLLT1_DMSO_7D_FACTOR.txt hg38 -d MCF_DMSO_7D_IP/ MCF_SGC_7D_IP/ > MCF_MLLT1_PEAKS_7D_FACTOR.quant.txt
annotatePeaks.pl MCF_MLLT1_DMSO_7D_HISTONE.txt hg38 -d MCF_DMSO_7D_IP/ MCF_SGC_7D_IP/ > MCF_MLLT1_PEAKS_7D_HISTONE.quant.txt

## SUM159

makeTagDirectory SUM_DMSO_24H_INPUT /ifs/research-groups/botnar/proj013/src/MLLT1_CHIP_SEQ/deduplicated/SUM_DMSO_24H_INPUT.bam
makeTagDirectory SUM_DMSO_24H_IP /ifs/research-groups/botnar/proj013/src/MLLT1_CHIP_SEQ/deduplicated/SUM_DMSO_24H_IP.bam
makeTagDirectory SUM_SGC_24H_INPUT /ifs/research-groups/botnar/proj013/src/MLLT1_CHIP_SEQ/deduplicated/SUM_SGC_24H_INPUT.bam
makeTagDirectory SUM_SGC_24H_IP /ifs/research-groups/botnar/proj013/src/MLLT1_CHIP_SEQ/deduplicated/SUM_SGC_24H_IP.bam

makeTagDirectory SUM_DMSO_7D_INPUT /ifs/research-groups/botnar/proj013/src/MLLT1_CHIP_SEQ/deduplicated/SUM_DMSO_7D_INPUT.bam
makeTagDirectory SUM_DMSO_7D_IP /ifs/research-groups/botnar/proj013/src/MLLT1_CHIP_SEQ/deduplicated/SUM_DMSO_7D_IP.bam
makeTagDirectory SUM_SGC_7D_INPUT /ifs/research-groups/botnar/proj013/src/MLLT1_CHIP_SEQ/deduplicated/SUM_SGC_7D_INPUT.bam
makeTagDirectory SUM_SGC_7D_IP /ifs/research-groups/botnar/proj013/src/MLLT1_CHIP_SEQ/deduplicated/SUM_SGC_7D_IP.bam

