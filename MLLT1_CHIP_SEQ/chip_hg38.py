"""
1st September 2020
This is a pipeline to process ChIP sequencing.
1. Align reads
2. Create index
3. Remove duplicates
4. Continue in Terminal using Homer
Run each part of pipeline separately
Have to run each pair of sample separately for align_reads2 to make sure know which alignment summary matches up with which sample (as output doesn't list names)
Create separate pipelines for aligning to hg38 (chip_hg38.py and chip_hg38.yml) and dm3 (chip_dm3.py and chip_dm3.yml) so can run both at same time for same pair
"""
import sys
import gzip
from cgatcore import pipeline as P
from ruffus import *

P.get_parameters('chip_hg38.yml')

@follows(mkdir('fastqc')) #same as before, can run independently of other processes
@transform('*.fastq.gz', regex(r'(.*).fastq.gz'),r'fastqc/\1_fastqc.html')
def qc_reads(infile, outfile):
    statement = 'fastqc -q -t %(threads)s --nogroup %(infile)s --outdir fastqc'
    P.run(statement,
          job_queue  = P.PARAMS['queue'],
          job_memory = P.PARAMS['memory'])



""" START HERE """
    
#use this to combine aligning reads and sorting, so go straight from .fastq.gz to .bam
@follows(mkdir('hg38_bam'))
@collate('*.fastq.gz', regex(r'(.*)_R[1-2].fastq.gz'), r'hg38_bam/\1.bam')
def align_reads2(infiles, outfile):
    
    ''' Aligns fq files using bowtie2 before conversion to bam file using
        Samtools view. Bam file is then sorted and the unsorted bam file is replaced'''
    
    fq1, fq2 = infiles   
    sorted_bam = outfile.replace('.bam', '_sorted.bam')
    options = ''
        
    if P.PARAMS['bowtie2_options']:
        options = P.PARAMS['bowtie2_options']
    
    cmd = '''(bowtie2 -x %(bowtie2_ref)s -1 %(fq1)s -2 %(fq2)s -p %(threads)s) 2>> hg38_stats.txt  |
             samtools view -b - > %(outfile)s &&
             samtools sort -@ %(threads)s -m 5G -o %(sorted_bam)s %(outfile)s &&
             mv %(sorted_bam)s %(outfile)s'''

    P.run(cmd, 
          job_queue=P.PARAMS['queue'], 
          job_threads=P.PARAMS['threads'])

@follows(align_reads2)    
@transform(align_reads2, regex(r'bam/(.*).bam'), r'bam/\1.bam.bai')
def create_bam_file_index(infile, outfile):
    """Bam files are compressed. The index allows fast access to different
    slices of the file."""
    statement = 'samtools index %(infile)s %(outfile)s'
    P.run(statement,
          job_queue  = P.PARAMS['queue'],
          job_memory = P.PARAMS['memory'])
    
    
@follows(create_bam_file_index, mkdir('deduplicated')) #remove duplicates    
@transform(align_reads2, regex(r'bam/(.*.bam)'), r'deduplicated/\1')
def remove_duplicates(infile, outfile):
    stats = outfile.replace('.bam', '_marked_duplicates.txt')
    statement = ' '.join(['picard MarkDuplicates',
                          'I=%(infile)s',
                          'O=%(outfile)s',
                          'M=%(stats)s',
                          'REMOVE_DUPLICATES=true',
                          'REMOVE_SEQUENCING_DUPLICATES=true',
                          'CREATE_INDEX=true'])
    P.run(statement,
          job_queue  = P.PARAMS['queue'],
          job_memory = P.PARAMS['memory'])



"""
After removing duplicates from .bam files, use Homer in command line to do peak calling and peak annotation.
"""       

# testing bowtie2 alignment statistics - output to .txt file

@collate('*.fastq.gz', regex(r'(.*)_R[1-2].fastq.gz'), r'\1.sam')
def test(infiles, outfile):  
       
    fq1, fq2 = infiles   
    options = ''
        
    if P.PARAMS['bowtie2_options']:
        options = P.PARAMS['bowtie2_options']
    
    cmd = '''(bowtie2 -x %(bowtie2_ref)s -1 %(fq1)s -2 %(fq2)s -p %(threads)s -S %(outfile)s) 2>test_stats.txt'''

    P.run(cmd, 
          job_queue=P.PARAMS['queue'], 
          job_threads=P.PARAMS['threads'])   
     
if __name__ == "__main__":
    sys.exit( P.main(sys.argv) )
