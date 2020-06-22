#!/bin/bash
#SBATCH -c 8
#SBATCH --mem=80000
#SBATCH -t 2-00:00:00

INDEX="/global/home/hpc3837/genomes/kallisto_index/GRCm38_transcripts.idx"
INDIR="/global/home/hpc3837/projects/lab_rna_seq/20180430/fastq"
OUTDIR="/global/home/hpc3837/projects/lab_rna_seq/20180430/kallisto/brca_project"

##########samples
#Experiment 1 - Lauren - LC1-6
Ctrl_1_R1="HI.4652.005.NEBNext_Index_1.LC-13_R1.fastq.gz"
Ctrl_1_R2="HI.4652.005.NEBNext_Index_1.LC-13_R2.fastq.gz"
Ctrl_2_R1="HI.4652.005.NEBNext_Index_3.LC-14_R1.fastq.gz"
Ctrl_2_R2="HI.4652.005.NEBNext_Index_3.LC-14_R2.fastq.gz"
Ctrl_3_R1="HI.4652.005.NEBNext_Index_9.LC-15_R1.fastq.gz"
Ctrl_3_R2="HI.4652.005.NEBNext_Index_9.LC-15_R2.fastq.gz"
BRCA_1_R1="HI.4652.005.NEBNext_Index_8.LC-16_R1.fastq.gz"
BRCA_1_R2="HI.4652.005.NEBNext_Index_8.LC-16_R2.fastq.gz"
BRCA_2_R1="HI.4652.005.NEBNext_Index_10.LC-17_R1.fastq.gz"
BRCA_2_R2="HI.4652.005.NEBNext_Index_10.LC-17_R2.fastq.gz"
BRCA_3_R1="HI.4652.005.NEBNext_Index_11.LC-18_R1.fastq.gz"
BRCA_3_R2="HI.4652.005.NEBNext_Index_11.LC-18_R2.fastq.gz"


echo "Quantifying Ctrl 1"
kallisto quant -i $INDEX -o $OUTDIR/Ctrl_1 -b 50 $INDIR/$Ctrl_1_R1 $INDIR/$Ctrl_1_R2
echo "Quantifying Ctrl 2"
kallisto quant -i $INDEX -o $OUTDIR/Ctrl_2 -b 50 $INDIR/$Ctrl_2_R1 $INDIR/$Ctrl_2_R2
echo "Quantifying Ctrl 3"
kallisto quant -i $INDEX -o $OUTDIR/Ctrl_3 -b 50 $INDIR/$Ctrl_3_R1 $INDIR/$Ctrl_3_R2
echo "Quantifying BRCA 1"
kallisto quant -i $INDEX -o $OUTDIR/BRCA_1 -b 50 $INDIR/$BRCA_1_R1 $INDIR/$BRCA_1_R2
echo "Quantifying BRCA 2"
kallisto quant -i $INDEX -o $OUTDIR/BRCA_2 -b 50 $INDIR/$BRCA_2_R1 $INDIR/$BRCA_2_R2
echo "Quantifying BRCA 3"
kallisto quant -i $INDEX -o $OUTDIR/BRCA_3 -b 50 $INDIR/$BRCA_3_R1 $INDIR/$BRCA_3_R2
