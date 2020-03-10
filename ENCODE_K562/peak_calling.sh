## Using Homer for peak calling
## see Nick's email for more detailed explanations (or Homer website)
# http://homer.ucsd.edu/homer/ngs/tagDir.html
# http://homer.ucsd.edu/homer/ngs/ucsc.html
# http://homer.ucsd.edu/homer/ngs/peaks.html
# currently only have input and MLLT1 IP (2 replicates for each)

# create tag directory for each bam file (all on one line)
makeTagDirectory tag_input/ /ifs/research-groups/botnar/proj013/src/ENCODE_MLLT1_K562/deduplicated/input_1.bam /ifs/research-groups/botnar/proj013/src/ENCODE_MLLT1_K562/deduplicated/input_2.bam
makeTagDirectory tag_IP/ /ifs/research-groups/botnar/proj013/src/ENCODE_MLLT1_K562/deduplicated/IP_1.bam /ifs/research-groups/botnar/proj013/src/ENCODE_MLLT1_K562/deduplicated/IP_2.bam

# download bedGraphtoBigWig programme first from UCSC http://hgdownload.cse.ucsc.edu/admin/exe/
wget http://hgdownload.cse.ucsc.edu/admin/exe/linux.x86_64.v385/bedGraphToBigWig

# put in src/homer/bin folder and change permission to make utility executable - afterwards can see file name is in green, can run
chmod +x /ifs/research-groups/botnar/proj013/src/homer/bin/bedGraphToBigWig

# make BigWig file to view in genome browser (one line)
# Homer will put a text file in the tag directory that you can use to link to the bigwig in UCSC (just paste the contents of the file into the ‘add custom track’ box on UCSC). 
makeBigWig.pl chip/ hg19 -webdir /ifs/research-groups/botnar/proj013/web/public/bigwigs/ -url http://cgat.org/downloads/botnar/proj013/public/bigwigs

# call peaks from tag directory (filtering based on input)
findPeaks tag_IP/ -style factor -i tag_input/ > IP_peaks.txt

# convert peak text file to bed file format
# have to manually delete header and column names - use nano
pos2bed.pl IP_peaks.txt > IP_peaks.bed

# overlap peaks to generate Venn diagram - currently don't have any, but will do DMSO v SGC
mergePeaks -d given IP_peaks.txt <otherfile.bed> -venn overlap.venn.txt > overlap.peak.txt

# annotate peak file with nearest gene and distance to TSS
annotatePeaks.pl IP_peaks.txt hg19 -annStats IP_peaks.stats.txt > IP_peaks.ann.txt

# annote peak file with number of reads under peak in each tag directory (-d)
annotePeaks.pl IP_peaks.txt hg19 -d tag_IP/ <other tag folders eg DMSO and SGC> > IP_peaks.quant.txt
