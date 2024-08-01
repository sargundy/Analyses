# alignments in MEGA 11
#!/bin/bash
#SBATCH --account=rrg-shaferab
#SBATCH --cpus-per-task=8
#SBATCH --mem=30000M
#SBATCH --time=3-00:00
#SBATCH --job-name=clustalw

megacc -a /home/sgundy/projects/rrg-shaferab/sgundy/thesis/alignments/clustal_align_nucleotide.mao -d /home/sgundy/projects/rrg-shaferab/sgundy/thesis/all-OVirginianus_MT.fasta -o /Users/saragunderson/Desktop/Academics/Thesis/Bioinformatics/Alignments/all-OVirginianus_MT-clustalw.fasta
