#!/bin/bash

#410 genes
#array=(4471 4519 4527 4603 4691 4724 4744 4757 4793 4796 4802 4806 4815 4848 4889 4890 4893 4904 4932 4936 4942 4950 4951 4954 4976 4989 4992 5018 5032 5034 5038 5064 5090 5104 5111 5116 5123 5131 5138 5162 5163 5168 5177 5188 5200 5206 5209 5220 5257 5260 5264 5271 5273 5280 5296 5299 5304 5318 5326 5328 5333 5335 5339 5343 5347 5348 5351 5353 5354 5355 5357 5366 5398 5404 5406 5421 5422 5426 5427 5428 5430 5434 5449 5454 5460 5463 5464 5469 5477 5489 5502 5513 5528 5531 5536 5551 5554 5562 5578 5594 5596 5599 5614 5620 5634 5639 5642 5644 5656 5660 5664 5670 5699 5702 5703 5716 5721 5733 5744 5753 5761 5770 5772 5791 5802 5812 5815 5816 5818 5821 5822 5840 5841 5842 5843 5849 5853 5857 5858 5859 5863 5865 5866 5870 5892 5893 5894 5899 5910 5913 5915 5916 5918 5919 5921 5922 5926 5933 5936 5940 5941 5942 5943 5944 5945 5949 5950 5958 5960 5968 5974 5977 5980 5981 5990 5992 6000 6003 6004 6016 6026 6029 6034 6035 6036 6038 6041 6048 6050 6051 6056 6064 6065 6068 6072 6098 6110 6114 6119 6128 6130 6139 6148 6150 6164 6175 6176 6183 6198 6216 6221 6226 6227 6237 6238 6258 6264 6265 6270 6274 6282 6284 6295 6298 6299 6303 6318 6320 6363 6366 6373 6376 6378 6379 6383 6384 6387 6389 6393 6398 6401 6404 6405 6406 6407 6412 6420 6430 6432 6435 6439 6445 6447 6448 6449 6450 6451 6454 6457 6458 6459 6460 6462 6466 6469 6481 6483 6487 6488 6492 6494 6496 6498 6499 6500 6506 6507 6508 6514 6526 6527 6528 6531 6532 6533 6538 6540 6544 6548 6550 6552 6557 6559 6563 6565 6570 6572 6601 6620 6628 6631 6636 6639 6641 6649 6652 6660 6667 6678 6679 6680 6682 6685 6689 6705 6713 6717 6732 6733 6738 6746 6779 6780 6782 6785 6787 6791 6792 6797 6809 6825 6833 6848 6854 6859 6860 6863 6864 6865 6870 6875 6876 6882 6883 6886 6893 6909 6913 6914 6924 6933 6946 6947 6954 6955 6956 6958 6961 6962 6968 6969 6975 6977 6978 6979 6983 6989 6992 6995 7013 7021 7024 7025 7028 7029 7032 7067 7111 7120 7128 7135 7136 7141 7174 7194 7237 7241 7248 7249 7273 7279 7296 7313 7324 7325 7331 7333 7336 7361 7363 7367 7371 7572 7577 7583 7601 7602 7628 7631 7653 )

#338 genes
array=(4527 4603 4691 4724 4744 4757 4793 4796 4802 4806 4815 4848 4893 4904 4932 4936 4942 4950 4951 4954 4989 4992 5018 5032 5034 5038 5064 5090 5104 5116 5123 5131 5138 5162 5163 5168 5177 5188 5200 5206 5209 5220 5257 5260 5264 5271 5273 5280 5299 5304 5328 5335 5339 5347 5348 5351 5354 5355 5357 5366 5398 5404 5406 5421 5422 5427 5430 5434 5449 5454 5460 5463 5464 5469 5477 5489 5502 5513 5528 5531 5536 5551 5554 5562 5578 5594 5596 5599 5614 5620 5634 5639 5642 5656 5664 5670 5699 5721 5733 5744 5753 5761 5770 5772 5791 5812 5815 5816 5818 5821 5822 5840 5843 5849 5853 5857 5858 5859 5865 5866 5870 5893 5894 5910 5913 5915 5916 5918 5919 5922 5926 5933 5936 5940 5941 5942 5943 5944 5945 5949 5950 5958 5960 5968 5974 5977 5980 5981 5990 5992 6000 6003 6004 6016 6026 6029 6036 6048 6050 6056 6064 6065 6068 6072 6098 6110 6114 6128 6130 6139 6148 6150 6164 6175 6176 6198 6216 6221 6226 6227 6237 6258 6264 6265 6270 6274 6282 6284 6295 6298 6299 6303 6320 6373 6376 6378 6379 6383 6384 6389 6393 6401 6404 6406 6407 6412 6420 6430 6432 6435 6439 6445 6447 6448 6449 6450 6454 6457 6458 6459 6460 6462 6466 6483 6487 6488 6492 6494 6498 6499 6500 6506 6507 6508 6514 6526 6528 6531 6538 6540 6548 6550 6552 6557 6559 6570 6572 6601 6620 6628 6636 6639 6641 6649 6652 6660 6667 6678 6679 6680 6685 6689 6705 6713 6717 6732 6733 6738 6779 6782 6785 6787 6791 6792 6797 6809 6825 6833 6848 6854 6859 6860 6863 6864 6870 6875 6876 6882 6883 6886 6893 6909 6913 6914 6924 6933 6946 6954 6955 6958 6961 6969 6977 6978 6979 6983 6989 6992 6995 7013 7021 7028 7029 7032 7067 7111 7128 7135 7194 7237 7248 7249 7279 7296 7324 7325 7333 7336 7361 7363 7367 7371 7572 7577 7583 7601 7602 7628 )


mkdir 03_renamed

for gene in "${array[@]}"

  do 
    sed 's/ .*$//g;s/_.*$//g' 02_trimed/${gene}.fasta > 03_renamed/${gene}.fasta
  done   
