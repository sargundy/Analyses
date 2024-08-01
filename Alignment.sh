# alignments in MEGA 11
#!/bin/bash
#SBATCH --account=rrg-shaferab
#SBATCH --cpus-per-task=8
#SBATCH --mem=30000M
#SBATCH --time=3-00:00
megacc -a /home/sgundy/projects/rrg-shaferab/sgundy/Analyses/clustal_align_nucleotide.mao -d /home/sgundy/projects/rrg-shaferab/sgundy/deer_modern/mito/SNP/all_deer_MT.fasta -o /Users/saragunderson/Desktop/Academics/Thesis/Bioinformatics/Alignments/all_deer_MT_clustal.fasta
