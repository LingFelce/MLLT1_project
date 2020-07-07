# Only half the number of expected reads (less than 10 million per sample) so file sizes are small!
# Downloaded .fastq.gz files from BaseSpace using BaseSpace Sequence Hub Downloader
# Each file has 8 files -> 4 lanes x 2 reads
# Once downloaded locally, used Filezilla to transfer to cluster -> proj033/backup

## Used cat to merge lanes 1-4 for each read

# cat_MCF_24H.sh#

cat MCF_DMSO_24H_1-291432737/MCF-DMSO-24H-1_S1_L001_R1_001.fastq.gz MCF_DMSO_24H_1-291432737/MCF-DMSO-24H-1_S1_L002_R1_001.fastq.gz MCF_DMSO_24H_1-291432737/MCF-DMSO-24H-1_S1_L003_R1_001.fastq.gz MCF_DMSO_24H_1-291432737/MCF-DMSO-24H-1_S1_L004_R1_001.fastq.gz > merge/MCF_DMSO_24H_1_R1.fastq.gz
cat MCF_DMSO_24H_1-291432737/MCF-DMSO-24H-1_S1_L001_R2_001.fastq.gz MCF_DMSO_24H_1-291432737/MCF-DMSO-24H-1_S1_L002_R2_001.fastq.gz MCF_DMSO_24H_1-291432737/MCF-DMSO-24H-1_S1_L003_R2_001.fastq.gz MCF_DMSO_24H_1-291432737/MCF-DMSO-24H-1_S1_L004_R2_001.fastq.gz > merge/MCF_DMSO_24H_1_R2.fastq.gz

cat MCF_DMSO_24H_2-291439681/MCF-DMSO-24H-2_S2_L001_R1_001.fastq.gz MCF_DMSO_24H_2-291439681/MCF-DMSO-24H-2_S2_L002_R1_001.fastq.gz MCF_DMSO_24H_2-291439681/MCF-DMSO-24H-2_S2_L003_R1_001.fastq.gz MCF_DMSO_24H_2-291439681/MCF-DMSO-24H-2_S2_L004_R1_001.fastq.gz > merge/MCF_DMSO_24H_2_R1.fastq.gz
cat MCF_DMSO_24H_2-291439681/MCF-DMSO-24H-2_S2_L001_R2_001.fastq.gz MCF_DMSO_24H_2-291439681/MCF-DMSO-24H-2_S2_L002_R2_001.fastq.gz MCF_DMSO_24H_2-291439681/MCF-DMSO-24H-2_S2_L003_R2_001.fastq.gz MCF_DMSO_24H_2-291439681/MCF-DMSO-24H-2_S2_L004_R2_001.fastq.gz > merge/MCF_DMSO_24H_2_R2.fastq.gz

cat MCF_DMSO_24H_3-291448331/MCF-DMSO-24H-3_S3_L001_R1_001.fastq.gz MCF_DMSO_24H_3-291448331/MCF-DMSO-24H-3_S3_L002_R1_001.fastq.gz MCF_DMSO_24H_3-291448331/MCF-DMSO-24H-3_S3_L003_R1_001.fastq.gz MCF_DMSO_24H_3-291448331/MCF-DMSO-24H-3_S3_L004_R1_001.fastq.gz > merge/MCF_DMSO_24H_3_R1.fastq.gz
cat MCF_DMSO_24H_3-291448331/MCF-DMSO-24H-3_S3_L001_R2_001.fastq.gz MCF_DMSO_24H_3-291448331/MCF-DMSO-24H-3_S3_L002_R2_001.fastq.gz MCF_DMSO_24H_3-291448331/MCF-DMSO-24H-3_S3_L003_R2_001.fastq.gz MCF_DMSO_24H_3-291448331/MCF-DMSO-24H-3_S3_L004_R2_001.fastq.gz > merge/MCF_DMSO_24H_3_R2.fastq.gz

cat MCF_SGC_24H_1-291429690/MCF-SGC-24H-1_S4_L001_R1_001.fastq.gz MCF_SGC_24H_1-291429690/MCF-SGC-24H-1_S4_L002_R1_001.fastq.gz MCF_SGC_24H_1-291429690/MCF-SGC-24H-1_S4_L003_R1_001.fastq.gz MCF_SGC_24H_1-291429690/MCF-SGC-24H-1_S4_L004_R1_001.fastq.gz > merge/MCF_SGC_24H_1_R1.fastq.gz
cat MCF_SGC_24H_1-291429690/MCF-SGC-24H-1_S4_L001_R2_001.fastq.gz MCF_SGC_24H_1-291429690/MCF-SGC-24H-1_S4_L002_R2_001.fastq.gz MCF_SGC_24H_1-291429690/MCF-SGC-24H-1_S4_L003_R2_001.fastq.gz MCF_SGC_24H_1-291429690/MCF-SGC-24H-1_S4_L004_R2_001.fastq.gz > merge/MCF_SGC_24H_1_R2.fastq.gz

cat MCF_SGC_24H_2-291442634/MCF-SGC-24H-2_S5_L001_R1_001.fastq.gz MCF_SGC_24H_2-291442634/MCF-SGC-24H-2_S5_L002_R1_001.fastq.gz MCF_SGC_24H_2-291442634/MCF-SGC-24H-2_S5_L003_R1_001.fastq.gz MCF_SGC_24H_2-291442634/MCF-SGC-24H-2_S5_L004_R1_001.fastq.gz > merge/MCF_SGC_24H_2_R1.fastq.gz
cat MCF_SGC_24H_2-291442634/MCF-SGC-24H-2_S5_L001_R2_001.fastq.gz MCF_SGC_24H_2-291442634/MCF-SGC-24H-2_S5_L002_R2_001.fastq.gz	MCF_SGC_24H_2-291442634/MCF-SGC-24H-2_S5_L003_R2_001.fastq.gz MCF_SGC_24H_2-291442634/MCF-SGC-24H-2_S5_L004_R2_001.fastq.gz > merge/MCF_SGC_24H_2_R2.fastq.gz

cat MCF_SGC_24H_3-291432741/MCF-SGC-24H-3_S6_L001_R1_001.fastq.gz MCF_SGC_24H_3-291432741/MCF-SGC-24H-3_S6_L002_R1_001.fastq.gz MCF_SGC_24H_3-291432741/MCF-SGC-24H-3_S6_L003_R1_001.fastq.gz MCF_SGC_24H_3-291432741/MCF-SGC-24H-3_S6_L004_R1_001.fastq.gz > merge/MCF_SGC_24H_3_R1.fastq.gz
cat MCF_SGC_24H_3-291432741/MCF-SGC-24H-3_S6_L001_R2_001.fastq.gz MCF_SGC_24H_3-291432741/MCF-SGC-24H-3_S6_L002_R2_001.fastq.gz MCF_SGC_24H_3-291432741/MCF-SGC-24H-3_S6_L003_R2_001.fastq.gz MCF_SGC_24H_3-291432741/MCF-SGC-24H-3_S6_L004_R2_001.fastq.gz > merge/MCF_SGC_24H_3_R2.fastq.gz

# cat_MCF_7D.sh (subsequently renamed folders)

cat MCF_DMSO_7D_1/MCF-DMSO-7D-1_S7_L001_R1_001.fastq.gz MCF_DMSO_7D_1/MCF-DMSO-7D-1_S7_L002_R1_001.fastq.gz MCF_DMSO_7D_1/MCF-DMSO-7D-1_S7_L003_R1_001.fastq.gz MCF_DMSO_7D_1/MCF-DMSO-7D-1_S7_L004_R1_001.fastq.gz > merge/MCF_DMSO_7D_1_R1.fastq.gz
cat MCF_DMSO_7D_1/MCF-DMSO-7D-1_S7_L001_R2_001.fastq.gz MCF_DMSO_7D_1/MCF-DMSO-7D-1_S7_L002_R2_001.fastq.gz MCF_DMSO_7D_1/MCF-DMSO-7D-1_S7_L003_R2_001.fastq.gz MCF_DMSO_7D_1/MCF-DMSO-7D-1_S7_L004_R2_001.fastq.gz > merge/MCF_DMSO_7D_1_R2.fastq.gz

cat MCF_DMSO_7D_2/MCF-DMSO-7D-2_S8_L001_R1_001.fastq.gz MCF_DMSO_7D_2/MCF-DMSO-7D-2_S8_L002_R1_001.fastq.gz MCF_DMSO_7D_2/MCF-DMSO-7D-2_S8_L003_R1_001.fastq.gz MCF_DMSO_7D_2/MCF-DMSO-7D-2_S8_L004_R1_001.fastq.gz > merge/MCF_DMSO_7D_2_R1.fastq.gz
cat MCF_DMSO_7D_2/MCF-DMSO-7D-2_S8_L001_R2_001.fastq.gz	MCF_DMSO_7D_2/MCF-DMSO-7D-2_S8_L002_R2_001.fastq.gz MCF_DMSO_7D_2/MCF-DMSO-7D-2_S8_L003_R2_001.fastq.gz MCF_DMSO_7D_2/MCF-DMSO-7D-2_S8_L004_R2_001.fastq.gz > merge/MCF_DMSO_7D_2_R2.fastq.gz

cat MCF_DMSO_7D_3/MCF-DMSO-7D-3_S9_L001_R1_001.fastq.gz MCF_DMSO_7D_3/MCF-DMSO-7D-3_S9_L002_R1_001.fastq.gz MCF_DMSO_7D_3/MCF-DMSO-7D-3_S9_L003_R1_001.fastq.gz MCF_DMSO_7D_3/MCF-DMSO-7D-3_S9_L004_R1_001.fastq.gz > merge/MCF_DMSO_7D_3_R1.fastq.gz
cat MCF_DMSO_7D_3/MCF-DMSO-7D-3_S9_L001_R2_001.fastq.gz	MCF_DMSO_7D_3/MCF-DMSO-7D-3_S9_L002_R2_001.fastq.gz MCF_DMSO_7D_3/MCF-DMSO-7D-3_S9_L003_R2_001.fastq.gz MCF_DMSO_7D_3/MCF-DMSO-7D-3_S9_L004_R2_001.fastq.gz > merge/MCF_DMSO_7D_3_R2.fastq.gz

cat MCF_SGC_7D_1/MCF-SGC-7D-1_S10_L001_R1_001.fastq.gz MCF_SGC_7D_1/MCF-SGC-7D-1_S10_L002_R1_001.fastq.gz MCF_SGC_7D_1/MCF-SGC-7D-1_S10_L003_R1_001.fastq.gz MCF_SGC_7D_1/MCF-SGC-7D-1_S10_L004_R1_001.fastq.gz > merge/MCF_SGC_7D_1_R1.fastq.gz
cat MCF_SGC_7D_1/MCF-SGC-7D-1_S10_L001_R2_001.fastq.gz MCF_SGC_7D_1/MCF-SGC-7D-1_S10_L002_R2_001.fastq.gz MCF_SGC_7D_1/MCF-SGC-7D-1_S10_L003_R2_001.fastq.gz MCF_SGC_7D_1/MCF-SGC-7D-1_S10_L004_R2_001.fastq.gz > merge/MCF_SGC_7D_1_R2.fastq.gz

cat MCF_SGC_7D_2/MCF-SGC-7D-2_S11_L001_R1_001.fastq.gz MCF_SGC_7D_2/MCF-SGC-7D-2_S11_L002_R1_001.fastq.gz MCF_SGC_7D_2/MCF-SGC-7D-2_S11_L003_R1_001.fastq.gz MCF_SGC_7D_2/MCF-SGC-7D-2_S11_L004_R1_001.fastq.gz > merge/MCF_SGC_7D_2_R1.fastq.gz
cat MCF_SGC_7D_2/MCF-SGC-7D-2_S11_L001_R2_001.fastq.gz MCF_SGC_7D_2/MCF-SGC-7D-2_S11_L002_R2_001.fastq.gz MCF_SGC_7D_2/MCF-SGC-7D-2_S11_L003_R2_001.fastq.gz MCF_SGC_7D_2/MCF-SGC-7D-2_S11_L004_R2_001.fastq.gz > merge/MCF_SGC_7D_2_R2.fastq.gz

cat MCF_SGC_7D_3/MCF-SGC-7D-3_S12_L001_R1_001.fastq.gz MCF_SGC_7D_3/MCF-SGC-7D-3_S12_L002_R1_001.fastq.gz MCF_SGC_7D_3/MCF-SGC-7D-3_S12_L003_R1_001.fastq.gz MCF_SGC_7D_3/MCF-SGC-7D-3_S12_L004_R1_001.fastq.gz > merge/MCF_SGC_7D_3_R1.fastq.gz
cat MCF_SGC_7D_3/MCF-SGC-7D-3_S12_L001_R2_001.fastq.gz MCF_SGC_7D_3/MCF-SGC-7D-3_S12_L002_R2_001.fastq.gz MCF_SGC_7D_3/MCF-SGC-7D-3_S12_L003_R2_001.fastq.gz MCF_SGC_7D_3/MCF-SGC-7D-3_S12_L004_R2_001.fastq.gz > merge/MCF_SGC_7D_3_R2.fastq.gz

# cat_SUM_24H.sh

cat SUM_DMSO_24H_1/SUM-DMSO-24H-1_S13_L001_R1_001.fastq.gz SUM_DMSO_24H_1/SUM-DMSO-24H-1_S13_L002_R1_001.fastq.gz SUM_DMSO_24H_1/SUM-DMSO-24H-1_S13_L003_R1_001.fastq.gz SUM_DMSO_24H_1/SUM-DMSO-24H-1_S13_L004_R1_001.fastq.gz > merge/SUM_DMSO_24H_1_R1.fastq.gz
cat SUM_DMSO_24H_1/SUM-DMSO-24H-1_S13_L001_R2_001.fastq.gz SUM_DMSO_24H_1/SUM-DMSO-24H-1_S13_L002_R2_001.fastq.gz SUM_DMSO_24H_1/SUM-DMSO-24H-1_S13_L003_R2_001.fastq.gz SUM_DMSO_24H_1/SUM-DMSO-24H-1_S13_L004_R2_001.fastq.gz > merge/SUM_DMSO_24H_1_R2.fastq.gz

cat SUM_DMSO_24H_2/SUM-DMSO-24H-2_S14_L001_R1_001.fastq.gz SUM_DMSO_24H_2/SUM-DMSO-24H-2_S14_L002_R1_001.fastq.gz SUM_DMSO_24H_2/SUM-DMSO-24H-2_S14_L003_R1_001.fastq.gz SUM_DMSO_24H_2/SUM-DMSO-24H-2_S14_L004_R1_001.fastq.gz > merge/SUM_DMSO_24H_2_R1.fastq.gz
cat SUM_DMSO_24H_2/SUM-DMSO-24H-2_S14_L001_R2_001.fastq.gz SUM_DMSO_24H_2/SUM-DMSO-24H-2_S14_L002_R2_001.fastq.gz SUM_DMSO_24H_2/SUM-DMSO-24H-2_S14_L003_R2_001.fastq.gz SUM_DMSO_24H_2/SUM-DMSO-24H-2_S14_L004_R2_001.fastq.gz > merge/SUM_DMSO_24H_2_R2.fastq.gz

cat SUM_DMSO_24H_3/SUM-DMSO-24H-3_S15_L001_R1_001.fastq.gz SUM_DMSO_24H_3/SUM-DMSO-24H-3_S15_L002_R1_001.fastq.gz SUM_DMSO_24H_3/SUM-DMSO-24H-3_S15_L003_R1_001.fastq.gz SUM_DMSO_24H_3/SUM-DMSO-24H-3_S15_L004_R1_001.fastq.gz > merge/SUM_DMSO_24H_3_R1.fastq.gz
cat SUM_DMSO_24H_3/SUM-DMSO-24H-3_S15_L001_R2_001.fastq.gz SUM_DMSO_24H_3/SUM-DMSO-24H-3_S15_L002_R2_001.fastq.gz SUM_DMSO_24H_3/SUM-DMSO-24H-3_S15_L003_R2_001.fastq.gz SUM_DMSO_24H_3/SUM-DMSO-24H-3_S15_L004_R2_001.fastq.gz > merge/SUM_DMSO_24H_3_R2.fastq.gz

cat SUM_SGC_24H_1/SUM-SGC-24H-1_S16_L001_R1_001.fastq.gz SUM_SGC_24H_1/SUM-SGC-24H-1_S16_L002_R1_001.fastq.gz SUM_SGC_24H_1/SUM-SGC-24H-1_S16_L003_R1_001.fastq.gz SUM_SGC_24H_1/SUM-SGC-24H-1_S16_L004_R1_001.fastq.gz > merge/SUM_SGC_24H_1_R1.fastq.gz
cat SUM_SGC_24H_1/SUM-SGC-24H-1_S16_L001_R2_001.fastq.gz SUM_SGC_24H_1/SUM-SGC-24H-1_S16_L002_R2_001.fastq.gz SUM_SGC_24H_1/SUM-SGC-24H-1_S16_L003_R2_001.fastq.gz SUM_SGC_24H_1/SUM-SGC-24H-1_S16_L004_R2_001.fastq.gz > merge/SUM_SGC_24H_1_R2.fastq.gz

cat SUM_SGC_24H_2/SUM-SGC-24H-2_S17_L001_R1_001.fastq.gz SUM_SGC_24H_2/SUM-SGC-24H-2_S17_L002_R1_001.fastq.gz SUM_SGC_24H_2/SUM-SGC-24H-2_S17_L003_R1_001.fastq.gz SUM_SGC_24H_2/SUM-SGC-24H-2_S17_L004_R1_001.fastq.gz > merge/SUM_SGC_24H_2_R1.fastq.gz
cat SUM_SGC_24H_2/SUM-SGC-24H-2_S17_L001_R2_001.fastq.gz SUM_SGC_24H_2/SUM-SGC-24H-2_S17_L002_R2_001.fastq.gz SUM_SGC_24H_2/SUM-SGC-24H-2_S17_L003_R2_001.fastq.gz SUM_SGC_24H_2/SUM-SGC-24H-2_S17_L004_R2_001.fastq.gz > merge/SUM_SGC_24H_2_R2.fastq.gz

cat SUM_SGC_24H_3/SUM-SGC-24H-3_S18_L001_R1_001.fastq.gz SUM_SGC_24H_3/SUM-SGC-24H-3_S18_L002_R1_001.fastq.gz SUM_SGC_24H_3/SUM-SGC-24H-3_S18_L003_R1_001.fastq.gz SUM_SGC_24H_3/SUM-SGC-24H-3_S18_L004_R1_001.fastq.gz > merge/SUM_SGC_24H_3_R1.fastq.gz
cat SUM_SGC_24H_3/SUM-SGC-24H-3_S18_L001_R2_001.fastq.gz SUM_SGC_24H_3/SUM-SGC-24H-3_S18_L002_R2_001.fastq.gz SUM_SGC_24H_3/SUM-SGC-24H-3_S18_L003_R2_001.fastq.gz SUM_SGC_24H_3/SUM-SGC-24H-3_S18_L004_R2_001.fastq.gz > merge/SUM_SGC_24H_3_R2.fastq.gz

# cat_SUM_7D.sh

cat SUM_DMSO_7D_1/SUM-DMSO-7D-1_S19_L001_R1_001.fastq.gz SUM_DMSO_7D_1/SUM-DMSO-7D-1_S19_L002_R1_001.fastq.gz SUM_DMSO_7D_1/SUM-DMSO-7D-1_S19_L003_R1_001.fastq.gz SUM_DMSO_7D_1/SUM-DMSO-7D-1_S19_L004_R1_001.fastq.gz > merge/SUM_DMSO_7D_1_R1.fastq.gz
cat SUM_DMSO_7D_1/SUM-DMSO-7D-1_S19_L001_R2_001.fastq.gz SUM_DMSO_7D_1/SUM-DMSO-7D-1_S19_L002_R2_001.fastq.gz SUM_DMSO_7D_1/SUM-DMSO-7D-1_S19_L003_R2_001.fastq.gz SUM_DMSO_7D_1/SUM-DMSO-7D-1_S19_L004_R2_001.fastq.gz > merge/SUM_DMSO_7D_1_R2.fastq.gz

cat SUM_DMSO_7D_2/SUM-DMSO-7D-2_S20_L001_R1_001.fastq.gz SUM_DMSO_7D_2/SUM-DMSO-7D-2_S20_L002_R1_001.fastq.gz SUM_DMSO_7D_2/SUM-DMSO-7D-2_S20_L003_R1_001.fastq.gz SUM_DMSO_7D_2/SUM-DMSO-7D-2_S20_L004_R1_001.fastq.gz > merge/SUM_DMSO_7D_2_R1.fastq.gz
cat SUM_DMSO_7D_2/SUM-DMSO-7D-2_S20_L001_R2_001.fastq.gz SUM_DMSO_7D_2/SUM-DMSO-7D-2_S20_L002_R2_001.fastq.gz SUM_DMSO_7D_2/SUM-DMSO-7D-2_S20_L003_R2_001.fastq.gz SUM_DMSO_7D_2/SUM-DMSO-7D-2_S20_L004_R2_001.fastq.gz > merge/SUM_DMSO_7D_2_R2.fastq.gz

cat SUM_DMSO_7D_3/SUM-DMSO-7D-3_S21_L001_R1_001.fastq.gz SUM_DMSO_7D_3/SUM-DMSO-7D-3_S21_L002_R1_001.fastq.gz SUM_DMSO_7D_3/SUM-DMSO-7D-3_S21_L003_R1_001.fastq.gz SUM_DMSO_7D_3/SUM-DMSO-7D-3_S21_L004_R1_001.fastq.gz > merge/SUM_DMSO_7D_3_R1.fastq.gz
cat SUM_DMSO_7D_3/SUM-DMSO-7D-3_S21_L001_R2_001.fastq.gz SUM_DMSO_7D_3/SUM-DMSO-7D-3_S21_L002_R2_001.fastq.gz SUM_DMSO_7D_3/SUM-DMSO-7D-3_S21_L003_R2_001.fastq.gz SUM_DMSO_7D_3/SUM-DMSO-7D-3_S21_L004_R2_001.fastq.gz > merge/SUM_DMSO_7D_3_R2.fastq.gz

cat SUM_SGC_7D_1/SUM-SGC-7D-1_S22_L001_R1_001.fastq.gz SUM_SGC_7D_1/SUM-SGC-7D-1_S22_L002_R1_001.fastq.gz SUM_SGC_7D_1/SUM-SGC-7D-1_S22_L003_R1_001.fastq.gz SUM_SGC_7D_1/SUM-SGC-7D-1_S22_L004_R1_001.fastq.gz > merge/SUM_SGC_7D_1_R1.fastq.gz
cat SUM_SGC_7D_1/SUM-SGC-7D-1_S22_L001_R2_001.fastq.gz SUM_SGC_7D_1/SUM-SGC-7D-1_S22_L002_R2_001.fastq.gz SUM_SGC_7D_1/SUM-SGC-7D-1_S22_L003_R2_001.fastq.gz SUM_SGC_7D_1/SUM-SGC-7D-1_S22_L004_R2_001.fastq.gz > merge/SUM_SGC_7D_1_R2.fastq.gz

cat SUM_SGC_7D_2/SUM-SGC-7D-2_S23_L001_R1_001.fastq.gz SUM_SGC_7D_2/SUM-SGC-7D-2_S23_L002_R1_001.fastq.gz SUM_SGC_7D_2/SUM-SGC-7D-2_S23_L003_R1_001.fastq.gz SUM_SGC_7D_2/SUM-SGC-7D-2_S23_L004_R1_001.fastq.gz > merge/SUM_SGC_7D_2_R1.fastq.gz
cat SUM_SGC_7D_2/SUM-SGC-7D-2_S23_L001_R2_001.fastq.gz SUM_SGC_7D_2/SUM-SGC-7D-2_S23_L002_R2_001.fastq.gz SUM_SGC_7D_2/SUM-SGC-7D-2_S23_L003_R2_001.fastq.gz SUM_SGC_7D_2/SUM-SGC-7D-2_S23_L004_R2_001.fastq.gz > merge/SUM_SGC_7D_2_R2.fastq.gz

cat SUM_SGC_7D_3/SUM-SGC-7D-3_S24_L001_R1_001.fastq.gz SUM_SGC_7D_3/SUM-SGC-7D-3_S24_L002_R1_001.fastq.gz SUM_SGC_7D_3/SUM-SGC-7D-3_S24_L003_R1_001.fastq.gz SUM_SGC_7D_3/SUM-SGC-7D-3_S24_L004_R1_001.fastq.gz > merge/SUM_SGC_7D_3_R1.fastq.gz
cat SUM_SGC_7D_3/SUM-SGC-7D-3_S24_L001_R2_001.fastq.gz SUM_SGC_7D_3/SUM-SGC-7D-3_S24_L002_R2_001.fastq.gz SUM_SGC_7D_3/SUM-SGC-7D-3_S24_L003_R2_001.fastq.gz SUM_SGC_7D_3/SUM-SGC-7D-3_S24_L004_R2_001.fastq.gz > merge/SUM_SGC_7D_3_R2.fastq.gz

sh cat_MCF_24H.sh
sh cat_MCF_7D.sh
sh cat_SUM_24H.sh
sh cat_SUM_7D.sh

## Checked md5sum to see if merging went ok

md5sum *fastq.gz > md5sum.txt
md5sum -c md5sum.txt

MCF_DMSO_24H_1_R1.fastq.gz: OK
MCF_DMSO_24H_1_R2.fastq.gz: OK
MCF_DMSO_24H_2_R1.fastq.gz: OK
MCF_DMSO_24H_2_R2.fastq.gz: OK
MCF_DMSO_24H_3_R1.fastq.gz: OK
MCF_DMSO_24H_3_R2.fastq.gz: OK
MCF_DMSO_7D_1_R1.fastq.gz: OK
MCF_DMSO_7D_1_R2.fastq.gz: OK
MCF_DMSO_7D_2_R1.fastq.gz: OK
MCF_DMSO_7D_2_R2.fastq.gz: OK
MCF_DMSO_7D_3_R1.fastq.gz: OK
MCF_DMSO_7D_3_R2.fastq.gz: OK
MCF_SGC_24H_1_R1.fastq.gz: OK
MCF_SGC_24H_1_R2.fastq.gz: OK
MCF_SGC_24H_2_R1.fastq.gz: OK
MCF_SGC_24H_2_R2.fastq.gz: OK
MCF_SGC_24H_3_R1.fastq.gz: OK
MCF_SGC_24H_3_R2.fastq.gz: OK
MCF_SGC_7D_1_R1.fastq.gz: OK
MCF_SGC_7D_1_R2.fastq.gz: OK
MCF_SGC_7D_2_R1.fastq.gz: OK
MCF_SGC_7D_2_R2.fastq.gz: OK
MCF_SGC-7D_3_R1.fastq.gz: OK
MCF_SGC-7D_3_R2.fastq.gz: OK
SUM_DMSO_24H_1_R1.fastq.gz: OK
SUM_DMSO_24H_1_R2.fastq.gz: OK
SUM_DMSO_24H_2_R1.fastq.gz: OK
SUM_DMSO_24H_2_R2.fastq.gz: OK
SUM_DMSO_24H_3_R1.fastq.gz: OK
SUM_DMSO_24H_3_R2.fastq.gz: OK
SUM_DMSO_7D_1_R1.fastq.gz: OK
SUM_DMSO_7D_1_R2.fastq.gz: OK
SUM_DMSO_7D_2_R1.fastq.gz: OK
SUM_DMSO_7D_2_R2.fastq.gz: OK
SUM_DMSO_7D_3_R1.fastq.gz: OK
SUM_DMSO_7D_3_R2.fastq.gz: OK
SUM_SGC_24H_1_R1.fastq.gz: OK
SUM_SGC_24H_1_R2.fastq.gz: OK
SUM_SGC_24H_2_R1.fastq.gz: OK
SUM_SGC_24H_2_R2.fastq.gz: OK
SUM_SGC_24H_3_R1.fastq.gz: OK
SUM_SGC_24H_3_R2.fastq.gz: OK
SUM_SGC_7D_1_R1.fastq.gz: OK
SUM_SGC_7D_1_R2.fastq.gz: OK
SUM_SGC_7D_2_R1.fastq.gz: OK
SUM_SGC_7D_2_R2.fastq.gz: OK
SUM_SGC_7D_3_R1.fastq.gz: OK
SUM_SGC_7D_3_R2.fastq.gz: OK

# Create soft links to .fastq.gz files in src folder - link.sh file

ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/MCF_DMSO_24H_1_R1.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/MCF_DMSO_24H_1_R2.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/MCF_DMSO_24H_2_R1.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/MCF_DMSO_24H_2_R2.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/MCF_DMSO_24H_3_R1.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/MCF_DMSO_24H_3_R2.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/MCF_DMSO_7D_1_R1.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/MCF_DMSO_7D_1_R2.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/MCF_DMSO_7D_2_R1.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/MCF_DMSO_7D_2_R2.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/MCF_DMSO_7D_3_R1.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/MCF_DMSO_7D_3_R2.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/MCF_SGC_24H_1_R1.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/MCF_SGC_24H_1_R2.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/MCF_SGC_24H_2_R1.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/MCF_SGC_24H_2_R2.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/MCF_SGC_24H_3_R1.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/MCF_SGC_24H_3_R2.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/MCF_SGC_7D_1_R1.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/MCF_SGC_7D_1_R2.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/MCF_SGC_7D_2_R1.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/MCF_SGC_7D_2_R2.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/MCF_SGC-7D_3_R1.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/MCF_SGC-7D_3_R2.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/SUM_DMSO_24H_1_R1.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/SUM_DMSO_24H_1_R2.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/SUM_DMSO_24H_2_R1.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/SUM_DMSO_24H_2_R2.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/SUM_DMSO_24H_3_R1.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/SUM_DMSO_24H_3_R2.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/SUM_DMSO_7D_1_R1.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/SUM_DMSO_7D_1_R2.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/SUM_DMSO_7D_2_R1.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/SUM_DMSO_7D_2_R2.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/SUM_DMSO_7D_3_R1.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/SUM_DMSO_7D_3_R2.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/SUM_SGC_24H_1_R1.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/SUM_SGC_24H_1_R2.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/SUM_SGC_24H_2_R1.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/SUM_SGC_24H_2_R2.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/SUM_SGC_24H_3_R1.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/SUM_SGC_24H_3_R2.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/SUM_SGC_7D_1_R1.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/SUM_SGC_7D_1_R2.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/SUM_SGC_7D_2_R1.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/SUM_SGC_7D_2_R2.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/SUM_SGC_7D_3_R1.fastq.gz
ln -s /ifs/research-groups/botnar/proj033/backup/basespace_hub_downloader/merge/SUM_SGC_7D_3_R2.fastq.gz

# RNA sequencing repeated by Martin 28th May 2020
# .fast.qz files downloaded from Illumina BaseSpace using BaseSpace Hub Downloader onto Desktop, then transferred to cluster using FileZilla
# used folder proj033/backup/run_2
# used existing shell scripts to merge lanes - modified cat_MCF_24H.sh to shorten folder names like other .sh scripts
# merged files into merge folder
# generated md5sum file as before, and checked - all ok
# soft links in src folder - manually typed as didn't realise was saved in link.sh file. Changed MCF_SGC_7D_3 names, as used hyphens instead of underscore

# 7th July 2020
# use cat on merged fastq.gz files from both runs to combine reads for each sample, in order to increase read depth

cat basespace_hub_downloader/merge/MCF_DMSO_24H_1_R1.fastq.gz run_2/merge/MCF_DMSO_24H_1_R1.fastq.gz > combined_runs/MCF_DMSO_24H_1_R1.fastq.gz
cat basespace_hub_downloader/merge/MCF_DMSO_24H_1_R2.fastq.gz run_2/merge/MCF_DMSO_24H_1_R2.fastq.gz > combined_runs/MCF_DMSO_24H_1_R2.fastq.gz

cat basespace_hub_downloader/merge/MCF_DMSO_24H_2_R1.fastq.gz run_2/merge/MCF_DMSO_24H_2_R1.fastq.gz > combined_runs/MCF_DMSO_24H_2_R1.fastq.gz
cat basespace_hub_downloader/merge/MCF_DMSO_24H_2_R2.fastq.gz run_2/merge/MCF_DMSO_24H_2_R2.fastq.gz > combined_runs/MCF_DMSO_24H_2_R2.fastq.gz

cat basespace_hub_downloader/merge/MCF_DMSO_24H_3_R1.fastq.gz run_2/merge/MCF_DMSO_24H_3_R1.fastq.gz > combined_runs/MCF_DMSO_24H_3_R1.fastq.gz
cat basespace_hub_downloader/merge/MCF_DMSO_24H_3_R2.fastq.gz run_2/merge/MCF_DMSO_24H_3_R2.fastq.gz > combined_runs/MCF_DMSO_24H_3_R2.fastq.gz

cat basespace_hub_downloader/merge/MCF_SGC_24H_1_R1.fastq.gz run_2/merge/MCF_SGC_24H_1_R1.fastq.gz > combined_runs/MCF_SGC_24H_1_R1.fastq.gz
cat basespace_hub_downloader/merge/MCF_SGC_24H_1_R2.fastq.gz run_2/merge/MCF_SGC_24H_1_R2.fastq.gz > combined_runs/MCF_SGC_24H_1_R2.fastq.gz

cat basespace_hub_downloader/merge/MCF_SGC_24H_2_R1.fastq.gz run_2/merge/MCF_SGC_24H_2_R1.fastq.gz > combined_runs/MCF_SGC_24H_2_R1.fastq.gz
cat basespace_hub_downloader/merge/MCF_SGC_24H_2_R2.fastq.gz run_2/merge/MCF_SGC_24H_2_R2.fastq.gz > combined_runs/MCF_SGC_24H_2_R2.fastq.gz

cat basespace_hub_downloader/merge/MCF_SGC_24H_3_R1.fastq.gz run_2/merge/MCF_SGC_24H_3_R1.fastq.gz > combined_runs/MCF_SGC_24H_3_R1.fastq.gz
cat basespace_hub_downloader/merge/MCF_SGC_24H_3_R2.fastq.gz run_2/merge/MCF_SGC_24H_3_R2.fastq.gz > combined_runs/MCF_SGC_24H_3_R2.fastq.gz

cat basespace_hub_downloader/merge/MCF_DMSO_7D_1_R1.fastq.gz run_2/merge/MCF_DMSO_7D_1_R1.fastq.gz > combined_runs/MCF_DMSO_7D_1_R1.fastq.gz
cat basespace_hub_downloader/merge/MCF_DMSO_7D_1_R2.fastq.gz run_2/merge/MCF_DMSO_7D_1_R2.fastq.gz > combined_runs/MCF_DMSO_7D_1_R2.fastq.gz

cat basespace_hub_downloader/merge/MCF_DMSO_7D_2_R1.fastq.gz run_2/merge/MCF_DMSO_7D_2_R1.fastq.gz > combined_runs/MCF_DMSO_7D_2_R1.fastq.gz
cat basespace_hub_downloader/merge/MCF_DMSO_7D_2_R2.fastq.gz run_2/merge/MCF_DMSO_7D_2_R2.fastq.gz > combined_runs/MCF_DMSO_7D_2_R2.fastq.gz

cat basespace_hub_downloader/merge/MCF_DMSO_7D_3_R1.fastq.gz run_2/merge/MCF_DMSO_7D_3_R1.fastq.gz > combined_runs/MCF_DMSO_7D_3_R1.fastq.gz
cat basespace_hub_downloader/merge/MCF_DMSO_7D_3_R2.fastq.gz run_2/merge/MCF_DMSO_7D_3_R2.fastq.gz > combined_runs/MCF_DMSO_7D_3_R2.fastq.gz

cat basespace_hub_downloader/merge/MCF_SGC_7D_1_R1.fastq.gz run_2/merge/MCF_SGC_7D_1_R1.fastq.gz > combined_runs/MCF_SGC_7D_1_R1.fastq.gz
cat basespace_hub_downloader/merge/MCF_SGC_7D_1_R2.fastq.gz run_2/merge/MCF_SGC_7D_1_R2.fastq.gz > combined_runs/MCF_SGC_7D_1_R2.fastq.gz

cat basespace_hub_downloader/merge/MCF_SGC_7D_2_R1.fastq.gz run_2/merge/MCF_SGC_7D_2_R1.fastq.gz > combined_runs/MCF_SGC_7D_2_R1.fastq.gz
cat basespace_hub_downloader/merge/MCF_SGC_7D_2_R2.fastq.gz run_2/merge/MCF_SGC_7D_2_R2.fastq.gz > combined_runs/MCF_SGC_7D_2_R2.fastq.gz

cat basespace_hub_downloader/merge/MCF_SGC_7D_3_R1.fastq.gz run_2/merge/MCF_SGC_7D_3_R1.fastq.gz > combined_runs/MCF_SGC_7D_3_R1.fastq.gz
cat basespace_hub_downloader/merge/MCF_SGC_7D_3_R2.fastq.gz run_2/merge/MCF_SGC_7D_3_R2.fastq.gz > combined_runs/MCF_SGC_7D_3_R2.fastq.gz

cat basespace_hub_downloader/merge/SUM_DMSO_24H_1_R1.fastq.gz run_2/merge/SUM_DMSO_24H_1_R1.fastq.gz > combined_runs/SUM_DMSO_24H_1_R1.fastq.gz
cat basespace_hub_downloader/merge/SUM_DMSO_24H_1_R2.fastq.gz run_2/merge/SUM_DMSO_24H_1_R2.fastq.gz > combined_runs/SUM_DMSO_24H_1_R2.fastq.gz

cat basespace_hub_downloader/merge/SUM_DMSO_24H_2_R1.fastq.gz run_2/merge/SUM_DMSO_24H_2_R1.fastq.gz > combined_runs/SUM_DMSO_24H_2_R1.fastq.gz
cat basespace_hub_downloader/merge/SUM_DMSO_24H_2_R2.fastq.gz run_2/merge/SUM_DMSO_24H_2_R2.fastq.gz > combined_runs/SUM_DMSO_24H_2_R2.fastq.gz

cat basespace_hub_downloader/merge/SUM_DMSO_24H_3_R1.fastq.gz run_2/merge/SUM_DMSO_24H_3_R1.fastq.gz > combined_runs/SUM_DMSO_24H_3_R1.fastq.gz
cat basespace_hub_downloader/merge/SUM_DMSO_24H_3_R2.fastq.gz run_2/merge/SUM_DMSO_24H_3_R2.fastq.gz > combined_runs/SUM_DMSO_24H_3_R2.fastq.gz

cat basespace_hub_downloader/merge/SUM_SGC_24H_1_R1.fastq.gz run_2/merge/SUM_SGC_24H_1_R1.fastq.gz > combined_runs/SUM_SGC_24H_1_R1.fastq.gz
cat basespace_hub_downloader/merge/SUM_SGC_24H_1_R2.fastq.gz run_2/merge/SUM_SGC_24H_1_R2.fastq.gz > combined_runs/SUM_SGC_24H_1_R2.fastq.gz

cat basespace_hub_downloader/merge/SUM_SGC_24H_2_R1.fastq.gz run_2/merge/SUM_SGC_24H_2_R1.fastq.gz > combined_runs/SUM_SGC_24H_2_R1.fastq.gz
cat basespace_hub_downloader/merge/SUM_SGC_24H_2_R2.fastq.gz run_2/merge/SUM_SGC_24H_2_R2.fastq.gz > combined_runs/SUM_SGC_24H_2_R2.fastq.gz

cat basespace_hub_downloader/merge/SUM_SGC_24H_3_R1.fastq.gz run_2/merge/SUM_SGC_24H_3_R1.fastq.gz > combined_runs/SUM_SGC_24H_3_R1.fastq.gz
cat basespace_hub_downloader/merge/SUM_SGC_24H_3_R2.fastq.gz run_2/merge/SUM_SGC_24H_3_R2.fastq.gz > combined_runs/SUM_SGC_24H_3_R2.fastq.gz

cat basespace_hub_downloader/merge/SUM_DMSO_7D_1_R1.fastq.gz run_2/merge/SUM_DMSO_7D_1_R1.fastq.gz > combined_runs/SUM_DMSO_7D_1_R1.fastq.gz
cat basespace_hub_downloader/merge/SUM_DMSO_7D_1_R2.fastq.gz run_2/merge/SUM_DMSO_7D_1_R2.fastq.gz > combined_runs/SUM_DMSO_7D_1_R2.fastq.gz

cat basespace_hub_downloader/merge/SUM_DMSO_7D_2_R1.fastq.gz run_2/merge/SUM_DMSO_7D_2_R1.fastq.gz > combined_runs/SUM_DMSO_7D_2_R1.fastq.gz
cat basespace_hub_downloader/merge/SUM_DMSO_7D_2_R2.fastq.gz run_2/merge/SUM_DMSO_7D_2_R2.fastq.gz > combined_runs/SUM_DMSO_7D_2_R2.fastq.gz

cat basespace_hub_downloader/merge/SUM_DMSO_7D_3_R1.fastq.gz run_2/merge/SUM_DMSO_7D_3_R1.fastq.gz > combined_runs/SUM_DMSO_7D_3_R1.fastq.gz
cat basespace_hub_downloader/merge/SUM_DMSO_7D_3_R2.fastq.gz run_2/merge/SUM_DMSO_7D_3_R2.fastq.gz > combined_runs/SUM_DMSO_7D_3_R2.fastq.gz

cat basespace_hub_downloader/merge/SUM_SGC_7D_1_R1.fastq.gz run_2/merge/SUM_SGC_7D_1_R1.fastq.gz > combined_runs/SUM_SGC_7D_1_R1.fastq.gz
cat basespace_hub_downloader/merge/SUM_SGC_7D_1_R2.fastq.gz run_2/merge/SUM_SGC_7D_1_R2.fastq.gz > combined_runs/SUM_SGC_7D_1_R2.fastq.gz

cat basespace_hub_downloader/merge/SUM_SGC_7D_2_R1.fastq.gz run_2/merge/SUM_SGC_7D_2_R1.fastq.gz > combined_runs/SUM_SGC_7D_2_R1.fastq.gz
cat basespace_hub_downloader/merge/SUM_SGC_7D_2_R2.fastq.gz run_2/merge/SUM_SGC_7D_2_R2.fastq.gz > combined_runs/SUM_SGC_7D_2_R2.fastq.gz

cat basespace_hub_downloader/merge/SUM_SGC_7D_3_R1.fastq.gz run_2/merge/SUM_SGC_7D_3_R1.fastq.gz > combined_runs/SUM_SGC_7D_3_R1.fastq.gz
cat basespace_hub_downloader/merge/SUM_SGC_7D_3_R2.fastq.gz run_2/merge/SUM_SGC_7D_3_R2.fastq.gz > combined_runs/SUM_SGC_7D_3_R2.fastq.gz

# checked md5sums

# downsample - as libraries not equimolar when run on sequencer, some samples got more reads than others - 30 - 40 million reads vs under 20 million reads. 
# therefore use seqtk to randomly sample and select out 14 million reads per sample, save in new folder

# downsample.sh
seqtk sample -s100 combined_runs/MCF_DMSO_24H_1_R1.fastq.gz 14000000 > downsample/MCF_DMSO_24H_1_R1.fastq.gz 
seqtk sample -s100 combined_runs/MCF_DMSO_24H_1_R2.fastq.gz 14000000 > downsample/MCF_DMSO_24H_1_R2.fastq.gz

seqtk sample -s100 combined_runs/MCF_DMSO_24H_2_R1.fastq.gz 14000000 > downsample/MCF_DMSO_24H_2_R1.fastq.gz
seqtk sample -s100 combined_runs/MCF_DMSO_24H_2_R2.fastq.gz 14000000 > downsample/MCF_DMSO_24H_2_R2.fastq.gz

seqtk sample -s100 combined_runs/MCF_DMSO_24H_3_R1.fastq.gz 14000000 > downsample/MCF_DMSO_24H_3_R1.fastq.gz
seqtk sample -s100 combined_runs/MCF_DMSO_24H_3_R2.fastq.gz 14000000 > downsample/MCF_DMSO_24H_3_R2.fastq.gz

seqtk sample -s100 combined_runs/MCF_SGC_24H_1_R1.fastq.gz 14000000 > downsample/MCF_SGC_24H_1_R1.fastq.gz
seqtk sample -s100 combined_runs/MCF_SGC_24H_1_R2.fastq.gz 14000000 > downsample/MCF_SGC_24H_1_R2.fastq.gz

seqtk sample -s100 combined_runs/MCF_SGC_24H_2_R1.fastq.gz 14000000 > downsample/MCF_SGC_24H_2_R1.fastq.gz
seqtk sample -s100 combined_runs/MCF_SGC_24H_2_R2.fastq.gz 14000000 > downsample/MCF_SGC_24H_2_R2.fastq.gz

seqtk sample -s100 combined_runs/MCF_SGC_24H_3_R1.fastq.gz 14000000 > downsample/MCF_SGC_24H_3_R1.fastq.gz
seqtk sample -s100 combined_runs/MCF_SGC_24H_3_R2.fastq.gz 14000000 > downsample/MCF_SGC_24H_3_R2.fastq.gz

seqtk sample -s100 combined_runs/MCF_DMSO_7D_1_R1.fastq.gz 14000000 > downsample/MCF_DMSO_7D_1_R1.fastq.gz
seqtk sample -s100 combined_runs/MCF_DMSO_7D_1_R2.fastq.gz 14000000 > downsample/MCF_DMSO_7D_1_R2.fastq.gz

seqtk sample -s100 combined_runs/MCF_DMSO_7D_2_R1.fastq.gz 14000000 > downsample/MCF_DMSO_7D_2_R1.fastq.gz
seqtk sample -s100 combined_runs/MCF_DMSO_7D_2_R2.fastq.gz 14000000 > downsample/MCF_DMSO_7D_2_R2.fastq.gz

seqtk sample -s100 combined_runs/MCF_DMSO_7D_3_R1.fastq.gz 14000000 > downsample/MCF_DMSO_7D_3_R1.fastq.gz
seqtk sample -s100 combined_runs/MCF_DMSO_7D_3_R2.fastq.gz 14000000 > downsample/MCF_DMSO_7D_3_R2.fastq.gz

seqtk sample -s100 combined_runs/MCF_SGC_7D_1_R1.fastq.gz 14000000 > downsample/MCF_SGC_7D_1_R1.fastq.gz
seqtk sample -s100 combined_runs/MCF_SGC_7D_1_R2.fastq.gz 14000000 > downsample/MCF_SGC_7D_1_R2.fastq.gz

seqtk sample -s100 combined_runs/MCF_SGC_7D_2_R1.fastq.gz 14000000 > downsample/MCF_SGC_7D_2_R1.fastq.gz
seqtk sample -s100 combined_runs/MCF_SGC_7D_2_R2.fastq.gz 14000000 > downsample/MCF_SGC_7D_2_R2.fastq.gz

seqtk sample -s100 combined_runs/MCF_SGC_7D_3_R1.fastq.gz 14000000 > downsample/MCF_SGC_7D_3_R1.fastq.gz
seqtk sample -s100 combined_runs/MCF_SGC_7D_3_R2.fastq.gz 14000000 > downsample/MCF_SGC_7D_3_R2.fastq.gz


seqtk sample -s100 combined_runs/SUM_DMSO_24H_1_R1.fastq.gz 14000000 > downsample/SUM_DMSO_24H_1_R1.fastq.gz
seqtk sample -s100 combined_runs/SUM_DMSO_24H_1_R2.fastq.gz 14000000 > downsample/SUM_DMSO_24H_1_R2.fastq.gz

seqtk sample -s100 combined_runs/SUM_DMSO_24H_2_R1.fastq.gz 14000000 > downsample/SUM_DMSO_24H_2_R1.fastq.gz
seqtk sample -s100 combined_runs/SUM_DMSO_24H_2_R2.fastq.gz 14000000 > downsample/SUM_DMSO_24H_2_R2.fastq.gz

seqtk sample -s100 combined_runs/SUM_DMSO_24H_3_R1.fastq.gz 14000000 > downsample/SUM_DMSO_24H_3_R1.fastq.gz
seqtk sample -s100 combined_runs/SUM_DMSO_24H_3_R2.fastq.gz 14000000 > downsample/SUM_DMSO_24H_3_R2.fastq.gz

seqtk sample -s100 combined_runs/SUM_SGC_24H_1_R1.fastq.gz 14000000 > downsample/SUM_SGC_24H_1_R1.fastq.gz
seqtk sample -s100 combined_runs/SUM_SGC_24H_1_R2.fastq.gz 14000000 > downsample/SUM_SGC_24H_1_R2.fastq.gz

seqtk sample -s100 combined_runs/SUM_SGC_24H_2_R1.fastq.gz 14000000 > downsample/SUM_SGC_24H_2_R1.fastq.gz
seqtk sample -s100 combined_runs/SUM_SGC_24H_2_R2.fastq.gz 14000000 > downsample/SUM_SGC_24H_2_R2.fastq.gz

seqtk sample -s100 combined_runs/SUM_SGC_24H_3_R1.fastq.gz 14000000 > downsample/SUM_SGC_24H_3_R1.fastq.gz
seqtk sample -s100 combined_runs/SUM_SGC_24H_3_R2.fastq.gz 14000000 > downsample/SUM_SGC_24H_3_R2.fastq.gz

seqtk sample -s100 combined_runs/SUM_DMSO_7D_1_R1.fastq.gz 14000000 > downsample/SUM_DMSO_7D_1_R1.fastq.gz
seqtk sample -s100 combined_runs/SUM_DMSO_7D_1_R2.fastq.gz 14000000 > downsample/SUM_DMSO_7D_1_R2.fastq.gz

seqtk sample -s100 combined_runs/SUM_DMSO_7D_2_R1.fastq.gz 14000000 > downsample/SUM_DMSO_7D_2_R1.fastq.gz
seqtk sample -s100 combined_runs/SUM_DMSO_7D_2_R2.fastq.gz 14000000 > downsample/SUM_DMSO_7D_2_R2.fastq.gz

seqtk sample -s100 combined_runs/SUM_DMSO_7D_3_R1.fastq.gz 14000000 > downsample/SUM_DMSO_7D_3_R1.fastq.gz
seqtk sample -s100 combined_runs/SUM_DMSO_7D_3_R2.fastq.gz 14000000 > downsample/SUM_DMSO_7D_3_R2.fastq.gz

seqtk sample -s100 combined_runs/SUM_SGC_7D_1_R1.fastq.gz 14000000 > downsample/SUM_SGC_7D_1_R1.fastq.gz
seqtk sample -s100 combined_runs/SUM_SGC_7D_1_R2.fastq.gz 14000000 > downsample/SUM_SGC_7D_1_R2.fastq.gz

seqtk sample -s100 combined_runs/SUM_SGC_7D_2_R1.fastq.gz 14000000 > downsample/SUM_SGC_7D_2_R1.fastq.gz
seqtk sample -s100 combined_runs/SUM_SGC_7D_2_R2.fastq.gz 14000000 > downsample/SUM_SGC_7D_2_R2.fastq.gz

seqtk sample -s100 combined_runs/SUM_SGC_7D_3_R1.fastq.gz 14000000 > downsample/SUM_SGC_7D_3_R1.fastq.gz
seqtk sample -s100 combined_runs/SUM_SGC_7D_3_R2.fastq.gz 14000000 > downsample/SUM_SGC_7D_3_R2.fastq.gz
