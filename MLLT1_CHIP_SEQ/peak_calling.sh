## Using Homer for peak calling


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
makeTagDirectory tag_MCF_DMSO_7D_IP /ifs/research-groups/botnar/proj013/src/MLLT1_CHIP_SEQ/deduplicated/MCF_DMSO_7D_IP.bam

makeTagDirectory tag_MCF_SGC_7D_INPUT /ifs/research-groups/botnar/proj013/src/MLLT1_CHIP_SEQ/deduplicated/MCF_SGC_7D_INPUT.bam
makeTagDirectory tag_MCF_SGC_7D_IP /ifs/research-groups/botnar/proj013/src/MLLT1_CHIP_SEQ/deduplicated/MCF_SGC_7D_IP.bam



### old code from here ###

# download bedGraphtoBigWig programme first from UCSC http://hgdownload.cse.ucsc.edu/admin/exe/
wget http://hgdownload.cse.ucsc.edu/admin/exe/linux.x86_64.v385/bedGraphToBigWig

# put in src/homer/bin folder and change permission to make utility executable - afterwards can see file name is in green, can run
chmod +x /ifs/research-groups/botnar/proj013/src/homer/bin/bedGraphToBigWig

# or use conda to install bedGraphToBigWig
conda install -c bioconda ucsc-bedgraphtobigwig

# make BigWig file to view in genome browser (one line)
# Homer will put a text file in the tag directory that you can use to link to the bigwig in UCSC (just paste the contents of the file into the ‘add custom track’ box on UCSC). 
makeBigWig.pl tag_IP/ hg19 -webdir /ifs/research-groups/botnar/proj013/web/public/bigwigs/ -url http://cgat.org/downloads/botnar/proj013/public/bigwigs

# call peaks from tag directory (filtering based on input)
findPeaks tag_IP/ -style factor -i tag_input/ > IP_peaks.txt

# convert peak text file to bed file format
pos2bed.pl IP_peaks.txt > IP_peaks.bed

# have to manually delete header and column names - use nano. Saved as IP_peaks_edit.bed

# overlap peaks to generate Venn diagram - currently don't have any, but will do DMSO v SGC
mergePeaks -d given IP_peaks.txt <otherfile.bed> -venn overlap.venn.txt > overlap.peak.txt

# annotate peak file with nearest gene and distance to TSS
annotatePeaks.pl IP_peaks.txt hg19 -annStats IP_peaks.stats.txt > IP_peaks.ann.txt

# annote peak file with number of reads under peak in each tag directory (-d)
annotePeaks.pl IP_peaks.txt hg19 -d tag_IP/ <other tag folders eg DMSO and SGC> > IP_peaks.quant.txt

## double check - download bed narrowPeak file (optimal IDR thresholded peaks, replicates 1, 2 mapping assembly hg19)
wget https://www.encodeproject.org/files/ENCFF197OGH/@@download/ENCFF197OGH.bed.gz

gunzip ENCFF197OGH.bed.gz

# annotate peak file
annotatePeaks.pl ENCFF197OGH.bed hg19 -annStats ENCFF197OGH.stats.txt > ENCFF197OGH.ann.txt

# didn't seem to have many peaks with -style factor, so try histone instead
# call peaks from tag directory (filtering based on input)
findPeaks tag_IP/ -style histone -i tag_input/ > IP_peaks_2.txt

# convert peak text file to bed file format
pos2bed.pl IP_peaks_2.txt > IP_peaks_2.bed

# have to manually delete header and column names - use nano. Saved as IP_peaks_edit_2.bed

# annotate peak file with nearest gene and distance to TSS
annotatePeaks.pl IP_peaks_2.txt hg19 -annStats IP_peaks_2.stats.txt > IP_peaks_2.ann.txt