library(ape)
tree <- read.tree('v1.0.contree')
tip_list <- tree$tip.label
write.table(tip_list, 'tip_list.txt', 
            quote = FALSE, append = FALSE, sep = " ", dec = ".", 
            row.names = FALSE, col.names = FALSE)
