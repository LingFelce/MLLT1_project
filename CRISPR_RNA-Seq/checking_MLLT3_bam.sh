# checking MLLT3 isn't knocked out in MCF-7 and SUM159 MLLT1 knockout cells using CRISPR RNA-Seq
# data analysed by Adam - fortunately he used hisat for alignment not kallisto, therefore bam files were generated
# /ifs/research-groups/botnar/proj023/analyses/mapping/hisat.dir as need .bam.bai files too

# run igv genome viewer
module load bio/IGV
igv.sh

# OR go to /ifs/apps/bio/IGV-2.8.0 and double click on igv.sh to run

# MCF-7 MLLT1 KO ok for clones
# need to check where in MLLT3 to actually look for knockout! 
