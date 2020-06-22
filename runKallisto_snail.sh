#!/bin/bash
#SBATCH -c 8
#SBATCH --mem=80000
#SBATCH -t 2-00:00:00

INDEX="/global/home/hpc3837/genomes/kallisto_index/GRCm38_transcripts.idx"
INDIR="/global/home/hpc3837/projects/lab_rna_seq/20180430/fastq"
OUTDIR="/global/home/hpc3837/projects/lab_rna_seq/20180430/kallisto/snail_project"

##########samples
Ctrl_1_R1="HI.4652.005.NEBNext_Index_20.LC-19_R1.fastq.gz"
Ctrl_1_R2="HI.4652.005.NEBNext_Index_20.LC-19_R2.fastq.gz"
Ctrl_2_R1="HI.4652.005.NEBNext_Index_22.LC-20_R1.fastq.gz"
Ctrl_2_R2="HI.4652.005.NEBNext_Index_22.LC-20_R2.fastq.gz"
Ctrl_3_R1="HI.4652.005.NEBNext_Index_25.LC-21_R1.fastq.gz"
Ctrl_3_R2="HI.4652.005.NEBNext_Index_25.LC-21_R2.fastq.gz"
Snail_1_R1="HI.4652.005.NEBNext_Index_21.LC-22_R1.fastq.gz"
Snail_1_R2="HI.4652.005.NEBNext_Index_21.LC-22_R2.fastq.gz"
Snail_2_R1="HI.4652.005.NEBNext_Index_23.LC-23_R1.fastq.gz"
Snail_2_R2="HI.4652.005.NEBNext_Index_23.LC-23_R2.fastq.gz"
Snail_3_R1="HI.4652.005.NEBNext_Index_27.LC-24_R1.fastq.gz"
Snail_3_R2="HI.4652.005.NEBNext_Index_27.LC-24_R2.fastq.gz"


echo "Quantifying Ctrl 1"
kallisto quant -i $INDEX -o $OUTDIR/Ctrl_1 -b 50 $INDIR/$Ctrl_1_R1 $INDIR/$Ctrl_1_R2
echo "Quantifying Ctrl 2"
kallisto quant -i $INDEX -o $OUTDIR/Ctrl_2 -b 50 $INDIR/$Ctrl_2_R1 $INDIR/$Ctrl_2_R2
echo "Quantifying Ctrl 3"
kallisto quant -i $INDEX -o $OUTDIR/Ctrl_3 -b 50 $INDIR/$Ctrl_3_R1 $INDIR/$Ctrl_3_R2
echo "Quantifying BRCA 1"
kallisto quant -i $INDEX -o $OUTDIR/Snail_1 -b 50 $INDIR/$Snail_1_R1 $INDIR/$Snail_1_R2
echo "Quantifying BRCA 2"
kallisto quant -i $INDEX -o $OUTDIR/Snail_2 -b 50 $INDIR/$Snail_2_R1 $INDIR/$Snail_2_R2
echo "Quantifying BRCA 3"
kallisto quant -i $INDEX -o $OUTDIR/Snail_3 -b 50 $INDIR/$Snail_3_R1 $INDIR/$Snail_3_R2
