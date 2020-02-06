# Making a tag directory from the bam file for homer to use for downstream functions:

makeTagDirectory BioCAP/ BioCAP.bam

# Using the tag directory to generate a bigwig for UCSC. Make sure you change both the webdir and url to point to your public folder! 
# Homer will put a text file in the tag directory that you can use to link to the bigwig in UCSC 
# (just paste the contents of the file into the ‘add custom track’ box on UCSC). 
# Obviously you’ll need to change the webdir and url for the CGAT server, hopefully you know/can ask David about this. 
# Because the bigwigs are so big you can’t directly upload them to UCSC, you have to link to them.

makeBigWig.pl BioCAP/ hg19 -webdir /public/ncrump/bigwigs/ -url http://sara.molbiol.ox.ac.uk/public/ncrump/bigwigs/

# Call peaks from the tag directory. Give homer the input tag directory and it will use it to look for enrichment over background. 
# You can set the style flag to histone or factor, depending on how punctate you think the peaks should be. 
# For ENL I would probably try -style factor and see how it looks on UCSC.
# If it’s not calling the broader peaks (if there are any) you could use -style histone and/or merge the two peak files together to 
# capture both punctate and broad peaks if necessary.

findPeaks BioCAP/ -style histone -i Input_BioCAP/ > BioCAP_peaks.txt

# Convert the homer outputted peak text file to bed file format (this puts the columns in the right order). 
# Note that you also need to manually delete the header and column names before UCSC will accept the bed file. 
# (Actually it occurs to me that this may be a CBRG custom script so probably won’t work for you - 
# but homer puts the columns in the wrong order for a bed file, so you’ll need to rearrange them before uploading to UCSC, 
# either in R or Excel…). UCSC has information on bed format here: https://genome.ucsc.edu/FAQ/FAQformat.html#format1

pos2bed.pl BioCAP_peaks.txt > BioCAP_peaks.bed

# Overlap the peaks between two bed files. The Venn file gives you the numbers of overlapping/non-overlapping peaks; 
# the output file lists all of the peaks individually and tells you what they overlap with. 
# Homer will accept either bed format (.bed) or homer format (.txt) peak files.

mergePeaks -d given BioCAP_peaks.txt MLL_AF4_Peaks_hg19.bed -venn BioCAP_MA4_overlap.venn.txt > BioCAP_MA4_overlap.peak.txt

# Annotate the peak file with the nearest gene and distance to the TSS.

annotatePeaks.pl BioCAP_peaks.txt hg19 -annStats BioCAP_peaks.stats.txt > BioCAP_peaks.ann.txt

# Annotate the peak file with the number of reads under the peak in each tag directory (given after the -d flag). 
# Note that this command will also give the nearest gene and distance to TSS, as above.

annotatePeaks.pl BioCAP_peaks.txt hg19 -d ../Tag/BioCAP/ ../Tag/MLL-N/ ../Tag/AF4-C/ > BioCAP_peaks.quant.txt
