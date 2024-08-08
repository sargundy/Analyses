cat /home/sgundy/projects/rrg-shaferab/sgundy/thesis/deer_modern/mito/SNPs/all-modern-$sp.fasta > all-deer-MT.fasta &&
cat /home/sgundy/projects/rrg-shaferab/sgundy/thesis/deer_ancient/mito/SNPs/all-ancient-$sp.fasta >> all-deer_MT.fasta

for s in $(grep ">" all-deer-mt-w-caribou.txt)
do
sample=$(echo $s | sed 's/ //' | sed 's/>//')
short=$(echo $sample | cut -f1-2 -d'_')
echo $sample $short 
cat all-deer-mt-w-caribou-uniq.fasta | sed "s/$sample/$short/"
cat all-deer-mt-w-caribou-uniq.txt | sed "s/$sample/$short/" 
done


grep ">" all-deer-mt-w-caribou.txt | sed 's/> //' | cut -f1-2 -d'_' 
