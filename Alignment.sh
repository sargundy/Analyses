# alignments in MEGA 11
#!/bin/bash
#SBATCH --account=rrg-shaferab
#SBATCH --cpus-per-task=8
#SBATCH --mem=30000M
#SBATCH --time=3-00:00
megacc -a /home/sgundy/projects/rrg-shaferab/sgundy/scripts/Analyses/clustal_align_nucleotide.mao -d /home/sgundy/projects/rrg-shaferab/sgundy/thesis/all-$sp.fasta -o /Users/saragunderson/Desktop/Academics/Thesis/Bioinformatics/Alignments/all-$sp-clustalw.fasta
