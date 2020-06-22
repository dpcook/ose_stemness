#!/bin/bash
#SBATCH -c 8
#SBATCH --mem=80000
#SBATCH -t 2-00:00:00

INDEX="/global/home/hpc3837/genomes/kallisto_index/GRCm38_transcripts.idx"
INDIR="/global/home/hpc3837/projects/lab_rna_seq/20180430/fastq"
OUTDIR="/global/home/hpc3837/projects/lab_rna_seq/20180430/kallisto/spheroid_project"

##########samples
#Experiment 1 - Lauren - LC1-6
#Mono_Ctrl_1_R1="HI.4652.004.NEBNext_Index_2.LC-1_R1.fastq.gz"
#Mono_Ctrl_1_R2="HI.4652.004.NEBNext_Index_2.LC-1_R2.fastq.gz"
#Mono_Ctrl_2_R1="HI.4652.004.NEBNext_Index_13.LC-2_R1.fastq.gz"
#Mono_Ctrl_2_R2="HI.4652.004.NEBNext_Index_13.LC-2_R2.fastq.gz"
#Mono_Ctrl_3_R1="HI.4652.004.NEBNext_Index_6.LC-3_R1.fastq.gz"
#Mono_Ctrl_3_R2="HI.4652.004.NEBNext_Index_6.LC-3_R2.fastq.gz"
Mono_TGFB_1_R1="HI.4652.004.NEBNext_Index_15.LC-4_R1.fastq.gz"
Mono_TGFB_1_R2="HI.4652.004.NEBNext_Index_15.LC-4_R2.fastq.gz"
#Mono_TGFB_2_R1="HI.4652.004.NEBNext_Index_7.LC-5_R1.fastq.gz"
#Mono_TGFB_2_R2="HI.4652.004.NEBNext_Index_7.LC-5_R2.fastq.gz"
#Mono_TGFB_3_R1="HI.4652.004.NEBNext_Index_18.LC-6_R1.fastq.gz"
#Mono_TGFB_3_R2="HI.4652.004.NEBNext_Index_18.LC-6_R2.fastq.gz"

#Sphere_Ctrl_1_R1="HI.4652.004.NEBNext_Index_14.LC-7_R1.fastq.gz"
#Sphere_Ctrl_1_R2="HI.4652.004.NEBNext_Index_14.LC-7_R2.fastq.gz"
#Sphere_Ctrl_2_R1="HI.4652.004.NEBNext_Index_16.LC-8_R1.fastq.gz"
#Sphere_Ctrl_2_R2="HI.4652.004.NEBNext_Index_16.LC-8_R2.fastq.gz"
#Sphere_Ctrl_3_R1="HI.4652.004.NEBNext_Index_4.LC-9_R1.fastq.gz"
#Sphere_Ctrl_3_R2="HI.4652.004.NEBNext_Index_4.LC-9_R2.fastq.gz"
#Sphere_TGFB_1_R1="HI.4652.004.NEBNext_Index_5.LC-10_R1.fastq.gz"
#Sphere_TGFB_1_R2="HI.4652.004.NEBNext_Index_5.LC-10_R2.fastq.gz"
#Sphere_TGFB_2_R1="HI.4652.004.NEBNext_Index_12.LC-11_R1.fastq.gz"
#Sphere_TGFB_2_R2="HI.4652.004.NEBNext_Index_12.LC-11_R2.fastq.gz"
#Sphere_TGFB_3_R1="HI.4652.004.NEBNext_Index_19.LC-12_R1.fastq.gz"
#Sphere_TGFB_3_R2="HI.4652.004.NEBNext_Index_19.LC-12_R2.fastq.gz"

#echo "Quantifying Mono_Ctrl 1"
#kallisto quant -i $INDEX -o $OUTDIR/Mono_Ctrl_1 -b 50 $INDIR/$Mono_Ctrl_1_R1 $INDIR/$Mono_Ctrl_1_R2
#echo "Quantifying Mono_Ctrl 2"
#kallisto quant -i $INDEX -o $OUTDIR/Mono_Ctrl_2 -b 50 $INDIR/$Mono_Ctrl_2_R1 $INDIR/$Mono_Ctrl_2_R2
#echo "Quantifying Mono_Ctrl 3"
#kallisto quant -i $INDEX -o $OUTDIR/Mono_Ctrl_3 -b 50 $INDIR/$Mono_Ctrl_3_R1 $INDIR/$Mono_Ctrl_3_R2
echo "Quantifying Mono_TGFB 1"
kallisto quant -i $INDEX -o $OUTDIR/Mono_TGFB_1 -b 50 $INDIR/$Mono_TGFB_1_R1 $INDIR/$Mono_TGFB_1_R2
#echo "Quantifying Mono_TGFB 2"
#kallisto quant -i $INDEX -o $OUTDIR/Mono_TGFB_2 -b 50 $INDIR/$Mono_TGFB_2_R1 $INDIR/$Mono_TGFB_2_R2
#echo "Quantifying Mono_TGFB 3"
#kallisto quant -i $INDEX -o $OUTDIR/Mono_TGFB_3 -b 50 $INDIR/$Mono_TGFB_3_R1 $INDIR/$Mono_TGFB_3_R2
#echo "Quantifying Sphere_Ctrl 1"
#kallisto quant -i $INDEX -o $OUTDIR/Sphere_Ctrl_1 -b 50 $INDIR/$Sphere_Ctrl_1_R1 $INDIR/$Sphere_Ctrl_1_R2
#echo "Quantifying Sphere_Ctrl 2"
#kallisto quant -i $INDEX -o $OUTDIR/Sphere_Ctrl_2 -b 50 $INDIR/$Sphere_Ctrl_2_R1 $INDIR/$Sphere_Ctrl_2_R2
#echo "Quantifying Sphere_Ctrl 3"
#kallisto quant -i $INDEX -o $OUTDIR/Sphere_Ctrl_3 -b 50 $INDIR/$Sphere_Ctrl_3_R1 $INDIR/$Sphere_Ctrl_3_R2
#echo "Quantifying Sphere_TGFB 1"
#kallisto quant -i $INDEX -o $OUTDIR/Sphere_TGFB_1 -b 50 $INDIR/$Sphere_TGFB_1_R1 $INDIR/$Sphere_TGFB_1_R2
#echo "Quantifying Sphere_TGFB 2"
#kallisto quant -i $INDEX -o $OUTDIR/Sphere_TGFB_2 -b 50 $INDIR/$Sphere_TGFB_2_R1 $INDIR/$Sphere_TGFB_2_R2
#echo "Quantifying Sphere_TGFB 3"
#kallisto quant -i $INDEX -o $OUTDIR/Sphere_TGFB_3 -b 50 $INDIR/$Sphere_TGFB_3_R1 $INDIR/$Sphere_TGFB_3_R2
