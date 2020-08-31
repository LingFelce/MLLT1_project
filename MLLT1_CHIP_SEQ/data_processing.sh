# cat files separately in each folder in command line, then move into merge folder

## MCF-7 each line separate read file
cat MCF-DMSO-24h-input_S9_L001_R1_001.fastq.gz  MCF-DMSO-24h-input_S9_L002_R1_001.fastq.gz  MCF-DMSO-24h-input_S9_L003_R1_001.fastq.gz  MCF-DMSO-24h-input_S9_L004_R1_001.fastq.gz > MCF_DMSO_24H_INPUT_R1.fastq.gz
cat MCF-DMSO-24h-input_S9_L001_R2_001.fastq.gz  MCF-DMSO-24h-input_S9_L002_R2_001.fastq.gz  MCF-DMSO-24h-input_S9_L003_R2_001.fastq.gz  MCF-DMSO-24h-input_S9_L004_R2_001.fastq.gz > MCF_DMSO_24H_INPUT_R2.fastq.gz
cat MCF-SGC-24h-input_S10_L001_R1_001.fastq.gz  MCF-SGC-24h-input_S10_L002_R1_001.fastq.gz  MCF-SGC-24h-input_S10_L003_R1_001.fastq.gz  MCF-SGC-24h-input_S10_L004_R1_001.fastq.gz > MCF_SGC_24H_INPUT_R1.fastq.gz
cat MCF-SGC-24h-input_S10_L001_R2_001.fastq.gz  MCF-SGC-24h-input_S10_L002_R2_001.fastq.gz  MCF-SGC-24h-input_S10_L003_R2_001.fastq.gz  MCF-SGC-24h-input_S10_L004_R2_001.fastq.gz > MCF_SGC_24H_INPUT_R2.fastq.gz
cat MCF-DMSO-7d-input_S11_L001_R1_001.fastq.gz  MCF-DMSO-7d-input_S11_L002_R1_001.fastq.gz  MCF-DMSO-7d-input_S11_L003_R1_001.fastq.gz  MCF-DMSO-7d-input_S11_L004_R1_001.fastq.gz > MCF_DMSO_7D_INPUT_R1.fastq.gz
cat MCF-DMSO-7d-input_S11_L001_R2_001.fastq.gz  MCF-DMSO-7d-input_S11_L002_R2_001.fastq.gz  MCF-DMSO-7d-input_S11_L003_R2_001.fastq.gz  MCF-DMSO-7d-input_S11_L004_R2_001.fastq.gz > MCF_DMSO_7D_INPUT_R2.fastq.gz
cat MCF-SGC-7d-input_S12_L001_R1_001.fastq.gz  MCF-SGC-7d-input_S12_L002_R1_001.fastq.gz  MCF-SGC-7d-input_S12_L003_R1_001.fastq.gz  MCF-SGC-7d-input_S12_L004_R1_001.fastq.gz > MCF_SGC_7D_INPUT_R1.fastq.gz
cat MCF-SGC-7d-input_S12_L001_R2_001.fastq.gz  MCF-SGC-7d-input_S12_L002_R2_001.fastq.gz  MCF-SGC-7d-input_S12_L003_R2_001.fastq.gz  MCF-SGC-7d-input_S12_L004_R2_001.fastq.gz > MCF_SGC_7D_INPUT_R2.fastq.gz
cat MCF-DMSO-24h-IP_S13_L001_R1_001.fastq.gz  MCF-DMSO-24h-IP_S13_L002_R1_001.fastq.gz  MCF-DMSO-24h-IP_S13_L003_R1_001.fastq.gz  MCF-DMSO-24h-IP_S13_L004_R1_001.fastq.gz > MCF_DMSO_24H_IP_R1.fastq.gz
cat MCF-DMSO-24h-IP_S13_L001_R2_001.fastq.gz  MCF-DMSO-24h-IP_S13_L002_R2_001.fastq.gz  MCF-DMSO-24h-IP_S13_L003_R2_001.fastq.gz  MCF-DMSO-24h-IP_S13_L004_R2_001.fastq.gz > MCF_DMSO_24H_IP_R2.fastq.gz
cat MCF-SGC-24h-IP_S14_L001_R1_001.fastq.gz  MCF-SGC-24h-IP_S14_L002_R1_001.fastq.gz  MCF-SGC-24h-IP_S14_L003_R1_001.fastq.gz  MCF-SGC-24h-IP_S14_L004_R1_001.fastq.gz > MCF_SGC_24H_IP_R1.fastq.gz
cat MCF-SGC-24h-IP_S14_L001_R2_001.fastq.gz  MCF-SGC-24h-IP_S14_L002_R2_001.fastq.gz  MCF-SGC-24h-IP_S14_L003_R2_001.fastq.gz  MCF-SGC-24h-IP_S14_L004_R2_001.fastq.gz > MCF_SGC_24H_IP_R2.fastq.gz
cat MCF-DMSO-7d-IP_S15_L001_R1_001.fastq.gz  MCF-DMSO-7d-IP_S15_L002_R1_001.fastq.gz  MCF-DMSO-7d-IP_S15_L003_R1_001.fastq.gz  MCF-DMSO-7d-IP_S15_L004_R1_001.fastq.gz > MCF_DMSO_7D_IP_R1.fastq.gz
cat MCF-DMSO-7d-IP_S15_L001_R2_001.fastq.gz  MCF-DMSO-7d-IP_S15_L002_R2_001.fastq.gz  MCF-DMSO-7d-IP_S15_L003_R2_001.fastq.gz  MCF-DMSO-7d-IP_S15_L004_R2_001.fastq.gz > MCF_DMSO_7D_IP_R2.fastq.gz
cat MCF-SGC-7d-IP_S16_L001_R1_001.fastq.gz  MCF-SGC-7d-IP_S16_L002_R1_001.fastq.gz  MCF-SGC-7d-IP_S16_L003_R1_001.fastq.gz  MCF-SGC-7d-IP_S16_L004_R1_001.fastq.gz > MCF_SGC_7D_IP_R1.fastq.gz
cat MCF-SGC-7d-IP_S16_L001_R2_001.fastq.gz  MCF-SGC-7d-IP_S16_L002_R2_001.fastq.gz  MCF-SGC-7d-IP_S16_L003_R2_001.fastq.gz  MCF-SGC-7d-IP_S16_L004_R2_001.fastq.gz > MCF_SGC_7D_IP_R2.fastq.gz

## SUM159 used pipe so both reads in one line of code
cat SUM-DMSO-24h-input_S1_L001_R1_001.fastq.gz  SUM-DMSO-24h-input_S1_L002_R1_001.fastq.gz  SUM-DMSO-24h-input_S1_L003_R1_001.fastq.gz  SUM-DMSO-24h-input_S1_L004_R1_001.fastq.gz > SUM_DMSO_24H_INPUT_R1.fastq.gz | cat SUM-DMSO-24h-input_S1_L001_R2_001.fastq.gz  SUM-DMSO-24h-input_S1_L002_R2_001.fastq.gz  SUM-DMSO-24h-input_S1_L003_R2_001.fastq.gz  SUM-DMSO-24h-input_S1_L004_R2_001.fastq.gz > SUM_DMSO_24H_INPUT_R2.fastq.gz
cat SUM-DMSO-7d-input_S3_L001_R1_001.fastq.gz  SUM-DMSO-7d-input_S3_L002_R1_001.fastq.gz  SUM-DMSO-7d-input_S3_L003_R1_001.fastq.gz  SUM-DMSO-7d-input_S3_L004_R1_001.fastq.gz > SUM_DMSO_7D_INPUT_R1.fastq.gz | cat SUM-DMSO-7d-input_S3_L001_R2_001.fastq.gz  SUM-DMSO-7d-input_S3_L002_R2_001.fastq.gz  SUM-DMSO-7d-input_S3_L003_R2_001.fastq.gz  SUM-DMSO-7d-input_S3_L004_R2_001.fastq.gz > SUM_DMSO_7D_INPUT_R2.fastq.gz
cat SUM-SGC-24h-input_S2_L001_R1_001.fastq.gz  SUM-SGC-24h-input_S2_L002_R1_001.fastq.gz  SUM-SGC-24h-input_S2_L003_R1_001.fastq.gz  SUM-SGC-24h-input_S2_L004_R1_001.fastq.gz > SUM_SGC_24H_INPUT_R1.fastq.gz | cat SUM-SGC-24h-input_S2_L001_R2_001.fastq.gz  SUM-SGC-24h-input_S2_L002_R2_001.fastq.gz  SUM-SGC-24h-input_S2_L003_R2_001.fastq.gz  SUM-SGC-24h-input_S2_L004_R2_001.fastq.gz > SUM_SGC_24H_INPUT_R2.fastq.gz 
cat SUM-SGC-7d-input_S4_L001_R1_001.fastq.gz  SUM-SGC-7d-input_S4_L002_R1_001.fastq.gz  SUM-SGC-7d-input_S4_L003_R1_001.fastq.gz  SUM-SGC-7d-input_S4_L004_R1_001.fastq.gz > SUM_SGC_7D_INPUT_R1.fastq.gz | cat SUM-SGC-7d-input_S4_L001_R2_001.fastq.gz  SUM-SGC-7d-input_S4_L002_R2_001.fastq.gz  SUM-SGC-7d-input_S4_L003_R2_001.fastq.gz  SUM-SGC-7d-input_S4_L004_R2_001.fastq.gz > SUM_SGC_7D_INPUT_R2.fastq.gz
cat SUM-DMSO-24h-IP_S5_L001_R1_001.fastq.gz  SUM-DMSO-24h-IP_S5_L002_R1_001.fastq.gz  SUM-DMSO-24h-IP_S5_L003_R1_001.fastq.gz  SUM-DMSO-24h-IP_S5_L004_R1_001.fastq.gz > SUM_DMSO_24H_IP_R1.fastq.gz | cat SUM-DMSO-24h-IP_S5_L001_R2_001.fastq.gz  SUM-DMSO-24h-IP_S5_L002_R2_001.fastq.gz  SUM-DMSO-24h-IP_S5_L003_R2_001.fastq.gz  SUM-DMSO-24h-IP_S5_L004_R2_001.fastq.gz > SUM_DMSO_24H_IP_R2.fastq.gz
cat SUM-SGC-24h-IP_S6_L001_R1_001.fastq.gz  SUM-SGC-24h-IP_S6_L002_R1_001.fastq.gz  SUM-SGC-24h-IP_S6_L003_R1_001.fastq.gz  SUM-SGC-24h-IP_S6_L004_R1_001.fastq.gz > SUM_SGC_24H_IP_R1.fastq.gz | cat SUM-SGC-24h-IP_S6_L001_R2_001.fastq.gz  SUM-SGC-24h-IP_S6_L002_R2_001.fastq.gz  SUM-SGC-24h-IP_S6_L003_R2_001.fastq.gz  SUM-SGC-24h-IP_S6_L004_R2_001.fastq.gz > SUM_SGC_24H_IP_R2.fastq.gz
cat SUM-DMSO-7d-IP_S7_L001_R1_001.fastq.gz  SUM-DMSO-7d-IP_S7_L002_R1_001.fastq.gz  SUM-DMSO-7d-IP_S7_L003_R1_001.fastq.gz  SUM-DMSO-7d-IP_S7_L004_R1_001.fastq.gz > SUM_DMSO_7D_IP_R1.fastq.gz | cat SUM-DMSO-7d-IP_S7_L001_R2_001.fastq.gz  SUM-DMSO-7d-IP_S7_L002_R2_001.fastq.gz  SUM-DMSO-7d-IP_S7_L003_R2_001.fastq.gz  SUM-DMSO-7d-IP_S7_L004_R2_001.fastq.gz > SUM_DMSO_7D_IP_R2.fastq.gz
cat SUM-SGC-7d-IP_S8_L001_R1_001.fastq.gz  SUM-SGC-7d-IP_S8_L002_R1_001.fastq.gz  SUM-SGC-7d-IP_S8_L003_R1_001.fastq.gz  SUM-SGC-7d-IP_S8_L004_R1_001.fastq.gz > SUM_SGC_7D_IP_R1.fastq.gz | cat SUM-SGC-7d-IP_S8_L001_R2_001.fastq.gz  SUM-SGC-7d-IP_S8_L002_R2_001.fastq.gz  SUM-SGC-7d-IP_S8_L003_R2_001.fastq.gz  SUM-SGC-7d-IP_S8_L004_R2_001.fastq.gz > SUM_SGC_7D_IP_R2.fastq.gz

## also need to cat separately MCF-7 files from separate ChIP-Seq and merge them with existing MCF-7 files
cat DMSO-24h-input_S7_L001_R1_001.fastq.gz  DMSO-24h-input_S7_L002_R1_001.fastq.gz  DMSO-24h-input_S7_L003_R1_001.fastq.gz  DMSO-24h-input_S7_L004_R1_001.fastq.gz > DMSO_24H_INPUT_R1.fastq.gz | cat DMSO-24h-input_S7_L001_R2_001.fastq.gz  DMSO-24h-input_S7_L002_R2_001.fastq.gz  DMSO-24h-input_S7_L003_R2_001.fastq.gz  DMSO-24h-input_S7_L004_R2_001.fastq.gz > DMSO_24H_INPUT_R2.fastq.gz
cat DMSO-24h-IP_S11_L001_R1_001.fastq.gz  DMSO-24h-IP_S11_L002_R1_001.fastq.gz  DMSO-24h-IP_S11_L003_R1_001.fastq.gz  DMSO-24h-IP_S11_L004_R1_001.fastq.gz > DMSO_24H_IP_R1.fastq.gz | cat DMSO-24h-IP_S11_L001_R2_001.fastq.gz  DMSO-24h-IP_S11_L002_R2_001.fastq.gz  DMSO-24h-IP_S11_L003_R2_001.fastq.gz  DMSO-24h-IP_S11_L004_R2_001.fastq.gz > DMSO_24H_IP_R2.fastq.gz
cat DMSO-7d-input_S9_L001_R1_001.fastq.gz  DMSO-7d-input_S9_L002_R1_001.fastq.gz  DMSO-7d-input_S9_L003_R1_001.fastq.gz  DMSO-7d-input_S9_L004_R1_001.fastq.gz > DMSO_7D_INPUT_R1.fastq.gz | cat DMSO-7d-input_S9_L001_R2_001.fastq.gz  DMSO-7d-input_S9_L002_R2_001.fastq.gz  DMSO-7d-input_S9_L003_R2_001.fastq.gz  DMSO-7d-input_S9_L004_R2_001.fastq.gz > DMSO_7D_INPUT_R2.fastq.gz
cat DMSO-7d-IP_S13_L001_R1_001.fastq.gz  DMSO-7d-IP_S13_L002_R1_001.fastq.gz  DMSO-7d-IP_S13_L003_R1_001.fastq.gz  DMSO-7d-IP_S13_L004_R1_001.fastq.gz > DMSO_7D_IP_R1.fastq.gz | cat DMSO-7d-IP_S13_L001_R2_001.fastq.gz  DMSO-7d-IP_S13_L002_R2_001.fastq.gz  DMSO-7d-IP_S13_L003_R2_001.fastq.gz  DMSO-7d-IP_S13_L004_R2_001.fastq.gz > DMSO_7D_IP_R2.fastq.gz
cat SGC-24h-input_S8_L001_R1_001.fastq.gz  SGC-24h-input_S8_L002_R1_001.fastq.gz  SGC-24h-input_S8_L003_R1_001.fastq.gz  SGC-24h-input_S8_L004_R1_001.fastq.gz > SGC_24H_INPUT_R1.fastq.gz | cat SGC-24h-input_S8_L001_R2_001.fastq.gz  SGC-24h-input_S8_L002_R2_001.fastq.gz  SGC-24h-input_S8_L003_R2_001.fastq.gz  SGC-24h-input_S8_L004_R2_001.fastq.gz > SGC_24H_INPUT_R2.fastq.gz
cat SGC-24h-IP_S12_L001_R1_001.fastq.gz  SGC-24h-IP_S12_L002_R1_001.fastq.gz  SGC-24h-IP_S12_L003_R1_001.fastq.gz  SGC-24h-IP_S12_L004_R1_001.fastq.gz > SGC_24H_IP_R1.fastq.gz | cat SGC-24h-IP_S12_L001_R2_001.fastq.gz  SGC-24h-IP_S12_L002_R2_001.fastq.gz  SGC-24h-IP_S12_L003_R2_001.fastq.gz  SGC-24h-IP_S12_L004_R2_001.fastq.gz > SGC_24H_IP_R2.fastq.gz
cat SGC-7d-input_S10_L001_R1_001.fastq.gz  SGC-7d-input_S10_L002_R1_001.fastq.gz  SGC-7d-input_S10_L003_R1_001.fastq.gz  SGC-7d-input_S10_L004_R1_001.fastq.gz > SGC_7D_INPUT_R1.fastq.gz | cat SGC-7d-input_S10_L001_R2_001.fastq.gz  SGC-7d-input_S10_L002_R2_001.fastq.gz  SGC-7d-input_S10_L003_R2_001.fastq.gz  SGC-7d-input_S10_L004_R2_001.fastq.gz > SGC_7D_INPUT_R2.fastq.gz
cat SGC-7d-IP_S14_L001_R1_001.fastq.gz  SGC-7d-IP_S14_L002_R1_001.fastq.gz  SGC-7d-IP_S14_L003_R1_001.fastq.gz  SGC-7d-IP_S14_L004_R1_001.fastq.gz > SGC_7D_IP_R1.fastq.gz | cat SGC-7d-IP_S14_L001_R2_001.fastq.gz  SGC-7d-IP_S14_L002_R2_001.fastq.gz  SGC-7d-IP_S14_L003_R2_001.fastq.gz  SGC-7d-IP_S14_L004_R2_001.fastq.gz > SGC_7D_IP_R2.fastq.gz

## merge MCF-7 files together (save into new subfolder mcf_merge then move out into merge folder, and move original unmerged files into mcf_unmerged)
cat DMSO_24H_INPUT_R1.fastq.gz MCF_DMSO_24H_INPUT_R1.fastq.gz > mcf_merge/MCF_DMSO_24H_INPUT_R1.fastq.gz | cat DMSO_24H_INPUT_R2.fastq.gz MCF_DMSO_24H_INPUT_R2.fastq.gz > mcf_merge/MCF_DMSO_24H_INPUT_R2.fastq.gz
cat DMSO_24H_IP_R1.fastq.gz MCF_DMSO_24H_IP_R1.fastq.gz > mcf_merge/MCF_DMSO_24H_IP_R1.fastq.gz | cat DMSO_24H_IP_R2.fastq.gz MCF_DMSO_24H_IP_R2.fastq.gz > mcf_merge/MCF_DMSO_24H_IP_R2.fastq.gz
cat DMSO_7D_INPUT_R1.fastq.gz MCF_DMSO_7D_INPUT_R1.fastq.gz > mcf_merge/MCF_DMSO_7D_INPUT_R1.fastq.gz | cat DMSO_7D_INPUT_R2.fastq.gz MCF_DMSO_7D_INPUT_R2.fastq.gz > mcf_merge/MCF_DMSO_7D_INPUT_R2.fastq.gz
cat DMSO_7D_IP_R1.fastq.gz MCF_DMSO_7D_IP_R1.fastq.gz > mcf_merge/MCF_DMSO_7D_IP_R1.fastq.gz | cat DMSO_7D_IP_R2.fastq.gz MCF_DMSO_7D_IP_R2.fastq.gz > mcf_merge/MCF_DMSO_7D_IP_R2.fastq.gz
cat SGC_24H_INPUT_R1.fastq.gz MCF_SGC_24H_INPUT_R1.fastq.gz > mcf_merge/MCF_SGC_24H_INPUT_R1.fastq.gz | cat SGC_24H_INPUT_R2.fastq.gz MCF_SGC_24H_INPUT_R2.fastq.gz > mcf_merge/MCF_SGC_24H_INPUT_R2.fastq.gz
cat SGC_24H_IP_R1.fastq.gz MCF_SGC_24H_IP_R1.fastq.gz > mcf_merge/MCF_SGC_24H_IP_R1.fastq.gz | SGC_24H_IP_R2.fastq.gz MCF_SGC_24H_IP_R2.fastq.gz > mcf_merge/MCF_SGC_24H_IP_R2.fastq.gz
cat SGC_7D_INPUT_R1.fastq.gz MCF_SGC_7D_INPUT_R1.fastq.gz > mcf_merge/MCF_SGC_7D_INPUT_R1.fastq.gz | cat SGC_7D_INPUT_R2.fastq.gz MCF_SGC_7D_INPUT_R2.fastq.gz > mcf_merge/MCF_SGC_7D_INPUT_R2.fastq.gz
cat SGC_7D_IP_R1.fastq.gz MCF_SGC_7D_IP_R1.fastq.gz > mcf_merge/MCF_SGC_7D_IP_R1.fastq.gz | cat SGC_7D_IP_R2.fastq.gz MCF_SGC_7D_IP_R2.fastq.gz > mcf_merge/MCF_SGC_7D_IP_R2.fastq.gz

## checked md5sum - used output to type up soft links
md5sum *fastq.gz > md5sum.txt
md5sum -c md5sum.txt

MCF_DMSO_24H_INPUT_R1.fastq.gz: OK
MCF_DMSO_24H_INPUT_R2.fastq.gz: OK
MCF_DMSO_24H_IP_R1.fastq.gz: OK
MCF_DMSO_24H_IP_R2.fastq.gz: OK
MCF_DMSO_7D_INPUT_R1.fastq.gz: OK
MCF_DMSO_7D_INPUT_R2.fastq.gz: OK
MCF_DMSO_7D_IP_R1.fastq.gz: OK
MCF_DMSO_7D_IP_R2.fastq.gz: OK
MCF_SGC_24H_INPUT_R1.fastq.gz: OK
MCF_SGC_24H_INPUT_R2.fastq.gz: OK
MCF_SGC_24H_IP_R1.fastq.gz: OK
MCF_SGC_24H_IP_R2.fastq.gz: OK
MCF_SGC_7D_INPUT_R1.fastq.gz: OK
MCF_SGC_7D_INPUT_R2.fastq.gz: OK
MCF_SGC_7D_IP_R1.fastq.gz: OK
MCF_SGC_7D_IP_R2.fastq.gz: OK
SUM_DMSO_24H_INPUT_R1.fastq.gz: OK
SUM_DMSO_24H_INPUT_R2.fastq.gz: OK
SUM_DMSO_24H_IP_R1.fastq.gz: OK
SUM_DMSO_24H_IP_R2.fastq.gz: OK
SUM_DMSO_7D_INPUT_R1.fastq.gz: OK
SUM_DMSO_7D_INPUT_R2.fastq.gz: OK
SUM_DMSO_7D_IP_R1.fastq.gz: OK
SUM_DMSO_7D_IP_R2.fastq.gz: OK
SUM_SGC_24H_INPUT_R1.fastq.gz: OK
SUM_SGC_24H_INPUT_R2.fastq.gz: OK
SUM_SGC_24H_IP_R1.fastq.gz: OK
SUM_SGC_24H_IP_R2.fastq.gz: OK
SUM_SGC_7D_INPUT_R1.fastq.gz: OK
SUM_SGC_7D_INPUT_R2.fastq.gz: OK
SUM_SGC_7D_IP_R1.fastq.gz: OK
SUM_SGC_7D_IP_R2.fastq.gz: OK


## create soft links in src folder
ln -s /ifs/research-groups/botnar/proj013/backup/MLLT1_CHIP_SEQ/merge/MCF_DMSO_24H_INPUT_R1.fastq.gz
ln -s /ifs/research-groups/botnar/proj013/backup/MLLT1_CHIP_SEQ/merge/MCF_DMSO_24H_INPUT_R2.fastq.gz
ln -s /ifs/research-groups/botnar/proj013/backup/MLLT1_CHIP_SEQ/merge/MCF_DMSO_24H_IP_R1.fastq.gz
ln -s /ifs/research-groups/botnar/proj013/backup/MLLT1_CHIP_SEQ/merge/MCF_DMSO_24H_IP_R2.fastq.gz
ln -s /ifs/research-groups/botnar/proj013/backup/MLLT1_CHIP_SEQ/merge/MCF_DMSO_7D_INPUT_R1.fastq.gz
ln -s /ifs/research-groups/botnar/proj013/backup/MLLT1_CHIP_SEQ/merge/MCF_DMSO_7D_INPUT_R2.fastq.gz
ln -s /ifs/research-groups/botnar/proj013/backup/MLLT1_CHIP_SEQ/merge/MCF_DMSO_7D_IP_R1.fastq.gz
ln -s /ifs/research-groups/botnar/proj013/backup/MLLT1_CHIP_SEQ/merge/MCF_DMSO_7D_IP_R2.fastq.gz
ln -s /ifs/research-groups/botnar/proj013/backup/MLLT1_CHIP_SEQ/merge/MCF_SGC_24H_INPUT_R1.fastq.gz
ln -s /ifs/research-groups/botnar/proj013/backup/MLLT1_CHIP_SEQ/merge/MCF_SGC_24H_INPUT_R2.fastq.gz
ln -s /ifs/research-groups/botnar/proj013/backup/MLLT1_CHIP_SEQ/merge/MCF_SGC_24H_IP_R1.fastq.gz
ln -s /ifs/research-groups/botnar/proj013/backup/MLLT1_CHIP_SEQ/merge/MCF_SGC_24H_IP_R2.fastq.gz
ln -s /ifs/research-groups/botnar/proj013/backup/MLLT1_CHIP_SEQ/merge/MCF_SGC_7D_INPUT_R1.fastq.gz
ln -s /ifs/research-groups/botnar/proj013/backup/MLLT1_CHIP_SEQ/merge/MCF_SGC_7D_INPUT_R2.fastq.gz
ln -s /ifs/research-groups/botnar/proj013/backup/MLLT1_CHIP_SEQ/merge/MCF_SGC_7D_IP_R1.fastq.gz
ln -s /ifs/research-groups/botnar/proj013/backup/MLLT1_CHIP_SEQ/merge/MCF_SGC_7D_IP_R2.fastq.gz
ln -s /ifs/research-groups/botnar/proj013/backup/MLLT1_CHIP_SEQ/merge/SUM_DMSO_24H_INPUT_R1.fastq.gz
ln -s /ifs/research-groups/botnar/proj013/backup/MLLT1_CHIP_SEQ/merge/SUM_DMSO_24H_INPUT_R2.fastq.gz
ln -s /ifs/research-groups/botnar/proj013/backup/MLLT1_CHIP_SEQ/merge/SUM_DMSO_24H_IP_R1.fastq.gz
ln -s /ifs/research-groups/botnar/proj013/backup/MLLT1_CHIP_SEQ/merge/SUM_DMSO_24H_IP_R2.fastq.gz
ln -s /ifs/research-groups/botnar/proj013/backup/MLLT1_CHIP_SEQ/merge/SUM_DMSO_7D_INPUT_R1.fastq.gz
ln -s /ifs/research-groups/botnar/proj013/backup/MLLT1_CHIP_SEQ/merge/SUM_DMSO_7D_INPUT_R2.fastq.gz
ln -s /ifs/research-groups/botnar/proj013/backup/MLLT1_CHIP_SEQ/merge/SUM_DMSO_7D_IP_R1.fastq.gz
ln -s /ifs/research-groups/botnar/proj013/backup/MLLT1_CHIP_SEQ/merge/SUM_DMSO_7D_IP_R2.fastq.gz
ln -s /ifs/research-groups/botnar/proj013/backup/MLLT1_CHIP_SEQ/merge/SUM_SGC_24H_INPUT_R1.fastq.gz
ln -s /ifs/research-groups/botnar/proj013/backup/MLLT1_CHIP_SEQ/merge/SUM_SGC_24H_INPUT_R2.fastq.gz
ln -s /ifs/research-groups/botnar/proj013/backup/MLLT1_CHIP_SEQ/merge/SUM_SGC_24H_IP_R1.fastq.gz
ln -s /ifs/research-groups/botnar/proj013/backup/MLLT1_CHIP_SEQ/merge/SUM_SGC_24H_IP_R2.fastq.gz
ln -s /ifs/research-groups/botnar/proj013/backup/MLLT1_CHIP_SEQ/merge/SUM_SGC_7D_INPUT_R1.fastq.gz
ln -s /ifs/research-groups/botnar/proj013/backup/MLLT1_CHIP_SEQ/merge/SUM_SGC_7D_INPUT_R2.fastq.gz
ln -s /ifs/research-groups/botnar/proj013/backup/MLLT1_CHIP_SEQ/merge/SUM_SGC_7D_IP_R1.fastq.gz
ln -s /ifs/research-groups/botnar/proj013/backup/MLLT1_CHIP_SEQ/merge/SUM_SGC_7D_IP_R2.fastq.gz

## testing output of stderr to get alignment summary from bowtie2
# will look something like this
10000 reads; of these:
  10000 (100.00%) were paired; of these:
    650 (6.50%) aligned concordantly 0 times
    8823 (88.23%) aligned concordantly exactly 1 time
    527 (5.27%) aligned concordantly >1 times
    ----
    650 pairs aligned concordantly 0 times; of these:
      34 (5.23%) aligned discordantly 1 time
    ----
    616 pairs aligned 0 times concordantly or discordantly; of these:
      1232 mates make up the pairs; of these:
        660 (53.57%) aligned 0 times
        571 (46.35%) aligned exactly 1 time
        1 (0.08%) aligned >1 times
96.70% overall alignment rate

(bowtie2 --threads "$THREADS" --local -x "$tmpGenome" -q -1 "$tmp_fastq1" -2 "$tmp_fastq2" --met-file bowtie2_alignment-metrics.txt) 2>stats.txt # needs -S for .sam?

qsub -e <error.file> # redirect standard error to a file

## will test on 2 pairs of files to see if bowtie2 alignment summary works, need to get for calculating normalisation factor.

## still not able to get stderr bowtie2 alignment statistics - try several different options in command line to see if they work
## (should normally be printed to console)
## use smallest MCF-7 file for alignment, otherwise will take too long!

## still takes too long in command line - maybe make new python function in pipeline and run in test folder?

bowtie2 -x /ifs/mirror/genomes/bowtie/hg38 -1 MCF_SGC_24H_IP_R1.fastq.gz -2 MCF_SGC_24H_IP_R2.fastq.gz -S MCF_SGC_24H_IP.sam

bowtie2 -x /ifs/mirror/genomes/bowtie/hg38 -1 MCF_SGC_24H_IP_R1.fastq.gz -2 MCF_SGC_24H_IP_R2.fastq.gz --met-file test.txt -S MCF_SGC_24H_IP.sam

(bowtie2 -x /ifs/mirror/genomes/bowtie/hg38 -1 MCF_SGC_24H_IP_R1.fastq.gz -2 MCF_SGC_24H_IP_R2.fastq.gz --met-file test.txt -S MCF_SGC_24H_IP.sam) 2>stats.txt

## for drosophila genome, need reference index with file extensions .bt2 - only have .ebwt for dm3, which is for original bowtie not bowtie2. 
## use dm3.fa (soft link from genomes/bowtie folder) to create .bt2 indexes in MLLT1_CHIP_SEQ folder
bowtie2-build dm3.fa dm3

# then can test bowtie2 alignment output using drosophila genome, should be much quicker in command line

bowtie2 -x /ifs/research-groups/botnar/proj013/src/MLLT1_CHIP_SEQ/test/dm3 -1 MCF_SGC_24H_IP_R1.fastq.gz -2 MCF_SGC_24H_IP_R2.fastq.gz -S MCF_SGC_24H_IP.sam

