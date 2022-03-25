#!bin/sh
 
# mkdir 01_JTT 02_JTTF 03_JTTDCMUT 04_JTTDCMUTF 05_HIVBF 06_FLUF 07_CPREVF 08_LG 09_LGF 10_CPREV

module load raxml/8.2.10

array01=(4527 4603 4691 4724 4802 4806 4815 4848 4893 4904 4932 4936 4942 4950 4951 4954 4989 4992 5018 5032 5034 5038 5104 5116 5123 5131 5138 5162 5163 5168 5188 5220 5260 5271 5273 5304 5328 5348 5351 5354 5355 5366 5398 5404 5427 5430 5434 5449 5460 5464 5469 5477 5489 5502 5513 5528 5531 5536 5551 5554 5562 5594 5599 5614 5634 5639 5642 5656 5664 5670 5699 5721 5733 5744 5753 5761 5772 5791 5815 5818 5821 5822 5840 5843 5849 5853 5859 5866 5894 5913 5916 5918 5919 5922 5933 5936 5941 5943 5944 5949 5950 5974 5980 5981 5990 5992 6000 6003 6004 6036 6048 6056 6065 6072 6110 6114 6148 6150 6164 6175 6176 6221 6226 6227 6264 6265 6274 6298 6299 6320 6376 6378 6379 6383 6384 6389 6393 6404 6406 6407 6412 6420 6432 6435 6439 6445 6447 6450 6457 6458 6459 6462 6466 6483 6487 6488 6499 6500 6506 6507 6508 6514 6526 6528 6538 6540 6550 6552 6557 6559 6570 6572 6601 6620 6628 6639 6649 6679 6680 6685 6689 6705 6717 6732 6733 6782 6785 6787 6791 6792 6797 6809 6825 6833 6848 6860 6863 6864 6882 6893 6933 6954 6955 6961 6969 6978 6979 6983 6992 6995 7013 7021 7032 7111 7237 7249 7279 7296 7324 7325 7333 7336 7361 7363 7367 7371 7572 7577 7601 7602 7628)
array02=(4744 4793 4796 5177 5209 5257 5280 5299 5421 5422 5454 5620 5770 5865 5870 5893 5926 5940 5958 5960 5977 6029 6050 6064 6098 6128 6130 6216 6237 6258 6270 6284 6295 6303 6401 6448 6454 6498 6548 6636 6641 6652 6667 6678 6713 6779 6875 6876 6914 6958 6977 7029 7067 7128 7135 7194 7248 7583)
array03=(4757 5090 5463 5578 5858 5915 5968 6026 6068 6139 6198 6373 6449 6492 6913)
array04=(5264 5357 5406 6282 6494 6854 7028)
array05=(5339 5596 5812 6016 6460 6660 6870 6989)
array06=(5816)
array07=(6430)
array08=(5064 5200 5206 5335 5857 5942 5945 6531 6738 6859 6886 6909 6924 6946)
array09=(5347 6883)
array10=(5910)

for gene in "${array01[@]}"
do
	raxmlHPC-PTHREADS-SSE3 -f b -t ../01_unroot/00_gene_trees/RAxML_bestTree.${gene}.phy.best.tre -z 00_bootstrap_trees/RAxML_bootstrap.${gene}.phy.ml.tre -m PROTGAMMAJTT -T $SLURM_CPUS_PER_TASK -n ${gene}.bootvalue.tre
done

for gene in "${array02[@]}"
do
	raxmlHPC-PTHREADS-SSE3 -f b -t ../01_unroot/00_gene_trees/RAxML_bestTree.${gene}.phy.best.tre -z 00_bootstrap_trees/RAxML_bootstrap.${gene}.phy.ml.tre -m PROTGAMMAJTTF -T $SLURM_CPUS_PER_TASK -n ${gene}.bootvalue.tre 
done

for gene in "${array03[@]}"
do
	raxmlHPC-PTHREADS-SSE3 -f b -t ../01_unroot/00_gene_trees/RAxML_bestTree.${gene}.phy.best.tre -z 00_bootstrap_trees/RAxML_bootstrap.${gene}.phy.ml.tre -m PROTGAMMAJTTDCMUT -T $SLURM_CPUS_PER_TASK -n ${gene}.bootvalue.tre 
done

for gene in "${array04[@]}"
do
	raxmlHPC-PTHREADS-SSE3 -f b -t ../01_unroot/00_gene_trees/RAxML_bestTree.${gene}.phy.best.tre -z 00_bootstrap_trees/RAxML_bootstrap.${gene}.phy.ml.tre -m PROTGAMMAJTTDCMUTF -T $SLURM_CPUS_PER_TASK -n ${gene}.bootvalue.tre 
done

for gene in "${array05[@]}"
do
	raxmlHPC-PTHREADS-SSE3 -f b -t ../01_unroot/00_gene_trees/RAxML_bestTree.${gene}.phy.best.tre -z 00_bootstrap_trees/RAxML_bootstrap.${gene}.phy.ml.tre -m PROTGAMMAHIVBF -T $SLURM_CPUS_PER_TASK -n ${gene}.bootvalue.tre
done

for gene in "${array06[@]}"
do
	raxmlHPC-PTHREADS-SSE3 -f b -t ../01_unroot/00_gene_trees/RAxML_bestTree.${gene}.phy.best.tre -z 00_bootstrap_trees/RAxML_bootstrap.${gene}.phy.ml.tre -m PROTGAMMAFLUF -T $SLURM_CPUS_PER_TASK -n ${gene}.bootvalue.tre 
done

for gene in "${array07[@]}"
do
	raxmlHPC-PTHREADS-SSE3 -f b -t ../01_unroot/00_gene_trees/RAxML_bestTree.${gene}.phy.best.tre -z 00_bootstrap_trees/RAxML_bootstrap.${gene}.phy.ml.tre -m PROTGAMMACPREVF -T $SLURM_CPUS_PER_TASK -n ${gene}.bootvalue.tre 
done

# for gene in "${array08[@]}"
# do
# 	raxmlHPC-PTHREADS-SSE3 -f b -t ../01_unroot/00_gene_trees/RAxML_bestTree.${gene}.phy.best.tre -z 00_bootstrap_trees/RAxML_bootstrap.${gene}.phy.ml.tre -m PROTGAMMALG -T $SLURM_CPUS_PER_TASK -n ${gene}.bootvalue.tre
# done

for gene in "${array09[@]}"
do
	raxmlHPC-PTHREADS-SSE3 -f b -t ../01_unroot/00_gene_trees/RAxML_bestTree.${gene}.phy.best.tre -z 00_bootstrap_trees/RAxML_bootstrap.${gene}.phy.ml.tre -m PROTGAMMALGF -T $SLURM_CPUS_PER_TASK -n ${gene}.bootvalue.tre 
done

for gene in "${array10[@]}"
do
	raxmlHPC-PTHREADS-SSE3 -f b -t ../01_unroot/00_gene_trees/RAxML_bestTree.${gene}.phy.best.tre -z 00_bootstrap_trees/RAxML_bootstrap.${gene}.phy.ml.tre -m PROTGAMMACPREV -T $SLURM_CPUS_PER_TASK -n ${gene}.bootvalue.tre 
done
