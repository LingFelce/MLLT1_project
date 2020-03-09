# input https://www.encodeproject.org/experiments/ENCSR173USI/
# MLLT1 IP https://www.encodeproject.org/experiments/ENCSR675LRO/


# download files from ENCODE into backup/ENCODE folder (shell script)
wget -q https://www.encodeproject.org/files/ENCFF002EFF/@@download/ENCFF002EFF.fastq.gz &
wget -q https://www.encodeproject.org/files/ENCFF002EFH/@@download/ENCFF002EFH.fastq.gz &
wget -q https://www.encodeproject.org/files/ENCFF002EFD/@@download/ENCFF002EFD.fastq.gz &
wget -q https://www.encodeproject.org/files/ENCFF002EFA/@@download/ENCFF002EFA.fastq.gz &
wget -q https://www.encodeproject.org/files/ENCFF826AKY/@@download/ENCFF826AKY.fastq.gz &
wget -q https://www.encodeproject.org/files/ENCFF299YIC/@@download/ENCFF299YIC.fastq.gz &
wget -q https://www.encodeproject.org/files/ENCFF745PCH/@@download/ENCFF745PCH.fastq.gz &
wget -q https://www.encodeproject.org/files/ENCFF050YVZ/@@download/ENCFF050YVZ.fastq.gz &

# create soft links and rename files to more useful names (shell script)
ln -s /ifs/research-groups/botnar/proj013/backup/ENCODE_MLLT1_K562/ENCFF002EFF.fastq.gz input_1_1.fastq.gz
ln -s /ifs/research-groups/botnar/proj013/backup/ENCODE_MLLT1_K562/ENCFF002EFH.fastq.gz input_1_2.fastq.gz
ln -s /ifs/research-groups/botnar/proj013/backup/ENCODE_MLLT1_K562/ENCFF002EFD.fastq.gz input_2_1.fastq.gz
ln -s /ifs/research-groups/botnar/proj013/backup/ENCODE_MLLT1_K562/ENCFF002EFA.fastq.gz input_2_2.fastq.gz
ln -s /ifs/research-groups/botnar/proj013/backup/ENCODE_MLLT1_K562/ENCFF826AKY.fastq.gz IP_1_1.fastq.gz
ln -s /ifs/research-groups/botnar/proj013/backup/ENCODE_MLLT1_K562/ENCFF299YIC.fastq.gz IP_1_2.fastq.gz
ln -s /ifs/research-groups/botnar/proj013/backup/ENCODE_MLLT1_K562/ENCFF745PCH.fastq.gz IP_2_1.fastq.gz
ln -s /ifs/research-groups/botnar/proj013/backup/ENCODE_MLLT1_K562/ENCFF050YVZ.fastq.gz IP_2_2.fastq.gz

# copy soft links to src/ENCODE folder (typed in terminal)
(cgat-flow) [lingf@cgat150 ENCODE_MLLT1_K562]$ cp -d input_1_1.fastq.gz /ifs/research-groups/botnar/proj013/src/ENCODE_MLLT1_K562
(cgat-flow) [lingf@cgat150 ENCODE_MLLT1_K562]$ cp -d input_1_2.fastq.gz /ifs/research-groups/botnar/proj013/src/ENCODE_MLLT1_K562
(cgat-flow) [lingf@cgat150 ENCODE_MLLT1_K562]$ cp -d input_2_1.fastq.gz /ifs/research-groups/botnar/proj013/src/ENCODE_MLLT1_K562
(cgat-flow) [lingf@cgat150 ENCODE_MLLT1_K562]$ cp -d input_2_2.fastq.gz /ifs/research-groups/botnar/proj013/src/ENCODE_MLLT1_K562
(cgat-flow) [lingf@cgat150 ENCODE_MLLT1_K562]$ cp -d IP_1_1.fastq.gz /ifs/research-groups/botnar/proj013/src/ENCODE_MLLT1_K562
(cgat-flow) [lingf@cgat150 ENCODE_MLLT1_K562]$ cp -d IP_1_2.fastq.gz /ifs/research-groups/botnar/proj013/src/ENCODE_MLLT1_K562
(cgat-flow) [lingf@cgat150 ENCODE_MLLT1_K562]$ cp -d IP_2_1.fastq.gz /ifs/research-groups/botnar/proj013/src/ENCODE_MLLT1_K562
(cgat-flow) [lingf@cgat150 ENCODE_MLLT1_K562]$ cp -d IP_2_2.fastq.gz /ifs/research-groups/botnar/proj013/src/ENCODE_MLLT1_K562
