# DOT1L inhibition reveals a distinct subset of enhancers dependent on H3K79 methylation (ChIP-seq)
# https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE117864
# get SRR number for each sample, and type into ebi.ac.uk to download eg https://www.ebi.ac.uk/ena/data/view/SRR7620816
# SRR7620816 input_DMSO
# SRR7620817 IP_DMSO
# SRR7620818 input_EPZ (DOT1L inhibitor)
# SRR7620819 IP_EPZ 

# download files (shell script)
wget -q	ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR762/006/SRR7620816/SRR7620816_1.fastq.gz &
wget -q	ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR762/006/SRR7620816/SRR7620816_2.fastq.gz &
wget -q	ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR762/007/SRR7620817/SRR7620817_1.fastq.gz &
wget -q	ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR762/007/SRR7620817/SRR7620817_2.fastq.gz &
wget -q	ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR762/008/SRR7620818/SRR7620818_1.fastq.gz &
wget -q	ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR762/008/SRR7620818/SRR7620818_2.fastq.gz &
wget -q	ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR762/009/SRR7620819/SRR7620819_1.fastq.gz &
wget -q	ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR762/009/SRR7620819/SRR7620819_2.fastq.gz &

# create soft links and rename files to more useful names (shell script)
ln -s /ifs/research-groups/botnar/proj013/backup/GSE117864/SRR7620816_1.fastq.gz input_DMSO_1.fastq.gz
ln -s /ifs/research-groups/botnar/proj013/backup/GSE117864/SRR7620816_2.fastq.gz input_DMSO_2.fastq.gz
ln -s /ifs/research-groups/botnar/proj013/backup/GSE117864/SRR7620817_1.fastq.gz IP_DMSO_1.fastq.gz
ln -s /ifs/research-groups/botnar/proj013/backup/GSE117864/SRR7620817_2.fastq.gz IP_DMSO_2.fastq.gz
ln -s /ifs/research-groups/botnar/proj013/backup/GSE117864/SRR7620818_1.fastq.gz input_EPZ_1.fastq.gz
ln -s /ifs/research-groups/botnar/proj013/backup/GSE117864/SRR7620818_2.fastq.gz input_EPZ_2.fastq.gz
ln -s /ifs/research-groups/botnar/proj013/backup/GSE117864/SRR7620819_1.fastq.gz IP_EPZ_1.fastq.gz
ln -s /ifs/research-groups/botnar/proj013/backup/GSE117864/SRR7620819_2.fastq.gz IP_EPZ_2.fastq.gz

# copy links to src folder (in Terminal)
(cgat-flow) [lingf@cgat150 GSE117864]$ cp -d input_DMSO_1.fastq.gz /ifs/research-groups/botnar/proj013/src/GSE117864/
(cgat-flow) [lingf@cgat150 GSE117864]$ cp -d input_DMSO_2.fastq.gz /ifs/research-groups/botnar/proj013/src/GSE117864/
(cgat-flow) [lingf@cgat150 GSE117864]$ cp -d input_EPZ_1.fastq.gz /ifs/research-groups/botnar/proj013/src/GSE117864/
(cgat-flow) [lingf@cgat150 GSE117864]$ cp -d input_EPZ_2.fastq.gz /ifs/research-groups/botnar/proj013/src/GSE117864/
(cgat-flow) [lingf@cgat150 GSE117864]$ cp -d IP_DMSO_1.fastq.gz /ifs/research-groups/botnar/proj013/src/GSE117864/
(cgat-flow) [lingf@cgat150 GSE117864]$ cp -d IP_DMSO_2.fastq.gz /ifs/research-groups/botnar/proj013/src/GSE117864/
(cgat-flow) [lingf@cgat150 GSE117864]$ cp -d IP_EPZ_2.fastq.gz /ifs/research-groups/botnar/proj013/src/GSE117864/
(cgat-flow) [lingf@cgat150 GSE117864]$ cp -d IP_EPZ_1.fastq.gz /ifs/research-groups/botnar/proj013/src/GSE117864/
