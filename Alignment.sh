# alignments in MEGA 11
#!/bin/bash
#SBATCH --account=rrg-shaferab
#SBATCH --cpus-per-task=8
#SBATCH --mem=30000M
#SBATCH --time=3-00:00
#SBATCH --job-name=clustalw
#SBATCH --output=clustalw-deer_MT.out

/home/sgundy/projects/rrg-shaferab/sgundy/software/MEGA11/megacc -a /home/sgundy/projects/rrg-shaferab/sgundy/thesis/alignments/clustal_align_nucleotide.mao -d /home/sgundy/projects/rrg-shaferab/sgundy/thesis/all-deer-MT.fasta -o /Users/saragunderson/Desktop/Academics/Thesis/Bioinformatics/Alignments/all-deer_MT-clustalw.fasta -f Fasta
