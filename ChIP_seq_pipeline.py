"""
4th February 2020

This is a pipeline to process ChIP sequencing.
1. FASTQ quality control
2. Alignment to produce SAM file
3. Convert SAM to BAM
4. Index BAM file to produce BAI
5. Quality control for indexing
6. Removes duplicates
7. Use Homer?

OR scroll down to the bottom and run align_reads2 to go straight from .fastqc to .bam (don't need .sam files) - although need to make sure
that indexing comes after align_reads2 and not align_reads to sync everything up.

Run each part of pipeline separately?

"""
import sys
import gzip
from cgatcore import pipeline as P
from ruffus import *

P.get_parameters('chipseq_pipeline.yml')

@follows(mkdir('fastqc')) #same as before, can run independently of other processes
@transform('*.fastq.gz', regex(r'(.*).fastq.gz'),r'fastqc/\1_fastqc.html')
def qc_reads(infile, outfile):
    statement = 'fastqc -q -t %(threads)s --nogroup %(infile)s --outdir fastqc'
    P.run(statement,
          job_queue  = P.PARAMS['queue'],
          job_memory = P.PARAMS['memory'])

@follows(mkdir('sam'))
@collate('*.fastq.gz', regex(r'(.*)_[1-2].fastq.gz'), r'sam/\1.sam')
def align_reads(infiles, outfile):
    read1, read2 = infiles
    options = ''
    if P.PARAMS['bowtie2_options']: #if there are bowtie2 options specified in .yml
        options = P.PARAMS['bowtie2_options']
    statement = '''bowtie2 -p %(threads)s %(options)s -x %(bowtie2_ref)s #have to use bowtie2 instead of hisat2
    -1 %(read1)s -2 %(read2)s -S %(outfile)s''' 
    P.run(statement,
          job_queue   = P.PARAMS['queue'],
          job_threads = P.PARAMS['threads'],
          job_memory  = P.PARAMS['memory'])

@follows(mkdir('bam'))
@transform(align_reads, regex(r'sam/(.*).sam'), r'bam/\1.bam') #can skip this step and go straight from .fastq.gz to bam - see later
def sort_reads(infile, outfile):
    """Sort aligned reads."""
    statement = 'samtools sort %(infile)s -o %(outfile)s --output-fmt BAM -@ %(threads)s'
    P.run(statement,
          job_queue   = P.PARAMS['queue'],
          job_threads = P.PARAMS['threads'],
          job_memory  = P.PARAMS['memory'])

@transform(sort_reads, regex(r'bam/(.*).bam'), r'bam/\1.bam.bai')
def create_bam_file_index(infile, outfile):
    """Bam files are compressed. The index allows fast access to different
    slices of the file."""
    statement = 'samtools index %(infile)s %(outfile)s'
    P.run(statement,
          job_queue  = P.PARAMS['queue'],
          job_memory = P.PARAMS['memory'])

@follows(mkdir('picard'), create_bam_file_index)
@transform(sort_reads, regex(r'bam/(.*).bam'), r'picard/\1.txt')
def get_alignment_statistics(infile, outfile):
    """Quality control alignments and write a report."""
    statement = 'picard CollectAlignmentSummaryMetrics R=%(picard_ref)s I=%(infile)s O=%(outfile)s'
    P.run(statement,
          job_queue  = P.PARAMS['queue'],
          job_memory = P.PARAMS['memory'])
    
@follows(create_bam_file_index, mkdir('deduplicated')) #remove duplicates    
@transform(align_reads, regex(r'bam/(.*.bam)'), r'deduplicated/\1')
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

@follows(mkdir('peaks')) #call peaks - generates .narrowPeak file which is like a .bed file
@collate(remove_duplicates, regex(r'deduplicated/(.*)_(gr|ip).bam'), r'peaks/\1_peaks.narrowPeak')
def call_peaks (infiles, outfile):
    treatment, control = infiles
    file_base = outfile.replace('_peaks.narrowPeak','')
    statement = '''macs2 callpeak -t %(treatment)s -c %(control)s -n %(file_base)s'''
    P.run(statement,
          job_queue  = P.PARAMS['queue'],
          job_memory = P.PARAMS['memory'],
          job_condaenv = 'macs2-env') #separate conda environment

"""
Next steps:
Use bedtools merge to combine narrowPeak files
Use awk to change narrowPeak files into .saf format
Use featureCounts to count reads under peaks - .saf file will take place of .gtf file in command, will give information on peaks,
and use .bam file as normal to give information on counts.

OR after removing duplicates from .bam files, use Homer in command line to do peak calling and peak annotation.
"""
    
#use this to combine aligning reads and sorting, so go straight from .fastq.gz to .bam
@follows(mkdir('bam'))
@collate('*.fastq.gz', regex(r'(.*)_[1-2].fastq.gz'), r'bam/\1.bam')
def align_reads2(infiles, outfile):
    
    ''' Aligns fq files using bowtie2 before conversion to bam file using
        Samtools view. Bam file is then sorted and the unsorted bam file is replaced'''
    
    fq1, fq2 = infiles   
    sorted_bam = outfile.replace('.bam', '_sorted.bam')
    options = ''
        
    if P.PARAMS['bowtie2_options']:
        options = P.PARAMS['bowtie2_options']
    
    cmd = '''bowtie2 -x %(bowtie2_index)s -1 %(fq1)s -2 %(fq2)s -p %(threads)s %(options)s |
             samtools view -b - > %(outfile)s &&
             samtools sort -@ %(threads)s -m 5G -o %(sorted_bam)s %(outfile)s &&
             mv %(sorted_bam)s %(outfile)s'''

    P.run(cmd, 
          job_queue=P.PARAMS['queue'], 
          job_threads=P.PARAMS['threads'])
          
     
if __name__ == "__main__":
    sys.exit( P.main(sys.argv) )
