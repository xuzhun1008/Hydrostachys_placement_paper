library(ape)
files = list.files(pattern = "*.backtrans.fasta")
for (i in 1:length(files)) {
  fas1 <- read.FASTA(files[i], type = "DNA")
  fas2 <- as.matrix(fas1)
  fas3 <- fas2[, -seq(3, ncol(fas2), by=3) ]
  fas4 <- write.FASTA(fas3, file = paste(files[i], ".12codon.fasta", sep = ""), header = NULL, append = FALSE)
}