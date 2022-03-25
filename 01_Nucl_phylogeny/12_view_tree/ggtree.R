library(treeio)
library(ggtree)
tree <- read.newick("AA_scored_rooted_t1.tre", node.label = "support") 
#read group file
group_file <- read.table("group_file.txt", header = T, row.names = 1) 
group_info <- split(row.names(group_file), group_file$Group) 
#get grouped tree
tree <- groupOTU(tree, group_info) 
#read taxa ID and taxa Name
taxa_list <- read.csv("taxa_list.csv") 
#replace to renamed tree
tree =  rename_taxa(tree, taxa_list, tip_lable, taxa) 
#initial tree
p1 <- ggtree(tree, layout = 'circular', aes(color=group))+ theme(legend.position='bottom') 
#add tip lable
p2 <- p1 + geom_tiplab(size=1, aes(angle=angle), fontface="italic") 
# add support value
p3 <- p2 + geom_text2(aes(subset=!isTip, label=support), hjust=-0.3, size=1, color="deepskyblue4") 
#show node number
p_node <- p2 + geom_text(aes(label=node), size=1, color = "black") 
# plot(p_node)
#highlight specific node
p_highlight <- p3 + geom_highlight(node = 498) 

# plot and save to pdf
ggsave('AA_scored_rooted_t1.pdf', width = 9, height = 12, limitsize = FALSE)

detach("package:ggtree", unload = TRUE)  
detach("package:treeio", unload = TRUE) 
# dev.off()  # Clear plots
rm(list=ls()) # Clear all environment



library(treeio)
library(ggtree)
tree <- read.newick("AA_rooted_t3.tre", node.label = "support")
#read group file
group_file <- read.table("group_file.txt", header = T, row.names = 1)
group_info <- split(row.names(group_file), group_file$Group)
#get grouped tree
tree <- groupOTU(tree, group_info)
#read taxa ID and taxa Name
taxa_list <- read.csv("taxa_list.csv")
#replace renamed tree
tree =  rename_taxa(tree, taxa_list, tip_lable, taxa)
#initial tree
p1 <- ggtree(tree, layout = 'circular', aes(color=group))+ theme(legend.position='bottom')
#add tip lable
p2 <- p1 + geom_tiplab(size=1, aes(angle=angle), fontface="italic")
# add support value
p3 <- p2 + geom_text2(aes(label=support, subset=support<0.7), hjust=-0.3, size=2, color="deepskyblue4")
#show node number
p_node <- p2 + geom_text(aes(label=node), size=1, color = "black")
#highlight specific node
p_highlight <- p3 + geom_highlight(node = 498)

# plot and save to pdf
ggsave('AA_rooted_t3_lowSupport.pdf', width = 9, height = 12, limitsize = FALSE)

detach("package:ggtree", unload = TRUE)  
detach("package:treeio", unload = TRUE) 

# dev.off()  # Clear plots
rm(list=ls()) # Clear all environment



library(treeio)
library(ggtree)
tree <- read.newick("AA_rooted_t3.tre", node.label = "support")
#read group file
group_file <- read.table("group_file.txt", header = T, row.names = 1)
group_info <- split(row.names(group_file), group_file$Group)
#get grouped tree
tree <- groupOTU(tree, group_info)
#read taxa ID and taxa Name
taxa_list <- read.csv("taxa_list.csv")
#replace renamed tree
tree =  rename_taxa(tree, taxa_list, tip_lable, taxa)
#initial tree
p1 <- ggtree(tree, layout = 'circular', aes(color=group))+ theme(legend.position='bottom')
#add tip lable
p2 <- p1 + geom_tiplab(size=1, aes(angle=angle), fontface="italic")
# add support value
p3 <- p2 + geom_text2(aes(label=support, subset=support>0.7), hjust=-0.3, size=2, color="deepskyblue4")
#show node number
p_node <- p2 + geom_text(aes(label=node), size=1, color = "black")
#highlight specific node
p_highlight <- p3 + geom_highlight(node = 498)

# plot and save to pdf
ggsave('AA_rooted_t3.pdf', width = 9, height = 12, limitsize = FALSE)

detach("package:ggtree", unload = TRUE)  
detach("package:treeio", unload = TRUE) 

# dev.off()  # Clear plots
rm(list=ls()) # Clear all environment




library(treeio)
library(ggtree)
tree <- read.newick("AA_BS33_scored_rooted_t1.tre", node.label = "support")
#read group file
group_file <- read.table("group_file.txt", header = T, row.names = 1)
group_info <- split(row.names(group_file), group_file$Group)
#get grouped tree
tree <- groupOTU(tree, group_info)
#read taxa ID and taxa Name
taxa_list <- read.csv("taxa_list.csv")
#replace renamed tree
tree =  rename_taxa(tree, taxa_list, tip_lable, taxa)
#initial tree
p1 <- ggtree(tree, layout = 'circular', aes(color=group))+ theme(legend.position='bottom')
#add tip lable
p2 <- p1 + geom_tiplab(size=1, aes(angle=angle), fontface="italic")
# add support value
p3 <- p2 + geom_text2(aes(subset=!isTip, label=support), hjust=-0.3, size=1, color="deepskyblue4")
#show node number
p_node <- p2 + geom_text(aes(label=node), size=1, color = "black")
# plot(p_node)
#highlight specific node
p_highlight <- p3 + geom_highlight(node = 492)

# plot and save to pdf
ggsave('AA_BS33_scored_rooted_t1.pdf', width = 9, height = 12, limitsize = FALSE)

detach("package:ggtree", unload = TRUE)  
detach("package:treeio", unload = TRUE) 
# dev.off()  # Clear plots
rm(list=ls()) # Clear all environment



library(treeio)
library(ggtree)
tree <- read.newick("AA_BS33_scored_rooted_t3.tre", node.label = "support")
#read group file
group_file <- read.table("group_file.txt", header = T, row.names = 1)
group_info <- split(row.names(group_file), group_file$Group)
#get grouped tree
tree <- groupOTU(tree, group_info)
#read taxa ID and taxa Name
taxa_list <- read.csv("taxa_list.csv")
#replace renamed tree
tree =  rename_taxa(tree, taxa_list, tip_lable, taxa)
#initial tree
p1 <- ggtree(tree, layout = 'circular', aes(color=group))+ theme(legend.position='bottom')
#add tip lable
p2 <- p1 + geom_tiplab(size=1, aes(angle=angle), fontface="italic")
# add support value
p3 <- p2 + geom_text2(aes(label=support, subset=support>0.7), hjust=-0.3, size=2, color="deepskyblue4")
#show node number
p_node <- p2 + geom_text(aes(label=node), size=1, color = "black")
#highlight specific node
p_highlight <- p3 + geom_highlight(node = 492)

# plot and save to pdf
ggsave('AA_BS33_scored_rooted_t3.pdf', width = 9, height = 12, limitsize = FALSE)

detach("package:ggtree", unload = TRUE)  
detach("package:treeio", unload = TRUE) 

# dev.off()  # Clear plots
rm(list=ls()) # Clear all environment




library(treeio)
library(ggtree)
tree <- read.newick("AA_BS33_scored_rooted_t3.tre", node.label = "support")
#read group file
group_file <- read.table("group_file.txt", header = T, row.names = 1)
group_info <- split(row.names(group_file), group_file$Group)
#get grouped tree
tree <- groupOTU(tree, group_info)
#read taxa ID and taxa Name
taxa_list <- read.csv("taxa_list.csv")
#replace renamed tree
tree =  rename_taxa(tree, taxa_list, tip_lable, taxa)
#initial tree
p1 <- ggtree(tree, layout = 'circular', aes(color=group))+ theme(legend.position='bottom')  
#add tip lable
p2 <- p1 + geom_tiplab(size=1, aes(angle=angle), fontface="italic")
# add support value
p3 <- p2 + geom_text2(aes(label=support, subset=support<0.7), hjust=-0.3, size=2, color="deepskyblue4")
#show node number
p_node <- p2 + geom_text(aes(label=node), size=1, color = "black")
#highlight specific node
p_highlight <- p3 + geom_highlight(node = 492)

# plot and save to pdf
ggsave('AA_BS33_scored_rooted_t3_lowSupport.pdf', width = 9, height = 12, limitsize = FALSE)

detach("package:ggtree", unload = TRUE)  
detach("package:treeio", unload = TRUE) 

# dev.off()  # Clear plots
rm(list=ls()) # Clear all environment



library(treeio)
library(ggtree)
tree <- read.newick("NA_scored_rooted_t1.tre", node.label = "support")
#read group file
group_file <- read.table("group_file.txt", header = T, row.names = 1)
group_info <- split(row.names(group_file), group_file$Group)
#get grouped tree
tree <- groupOTU(tree, group_info)
#read taxa ID and taxa Name
taxa_list <- read.csv("taxa_list.csv")
#replace renamed tree
tree =  rename_taxa(tree, taxa_list, tip_lable, taxa)
#initial tree
p1 <- ggtree(tree, layout = 'circular', aes(color=group))+ theme(legend.position='bottom')
#add tip lable
p2 <- p1 + geom_tiplab(size=1, aes(angle=angle), fontface="italic")
# add support value
p3 <- p2 + geom_text2(aes(subset=!isTip, label=support), hjust=-0.3, size=1, color="deepskyblue4")
#show node number
p_node <- p2 + geom_text(aes(label=node), size=1, color = "black")
#highlight specific node
p_highlight <- p3 + geom_highlight(node = 452)

# plot and save to pdf
ggsave('NA_scored_rooted_t1.pdf', width = 9, height = 12, limitsize = FALSE)

detach("package:ggtree", unload = TRUE)  
detach("package:treeio", unload = TRUE) 
# dev.off()  # Clear plots
rm(list=ls()) # Clear all environment





library(treeio)
library(ggtree)
tree <- read.newick("NA_scored_rooted_t3.tre", node.label = "support")
#read group file
group_file <- read.table("group_file.txt", header = T, row.names = 1)
group_info <- split(row.names(group_file), group_file$Group)
#get grouped tree
tree <- groupOTU(tree, group_info)
#read taxa ID and taxa Name
taxa_list <- read.csv("taxa_list.csv")
#replace renamed tree
tree =  rename_taxa(tree, taxa_list, tip_lable, taxa)
#initial tree
p1 <- ggtree(tree, layout = 'circular', aes(color=group))+ theme(legend.position='bottom')
#add tip lable
p2 <- p1 + geom_tiplab(size=1, aes(angle=angle), fontface="italic")
# add support value
p3 <- p2 + geom_text2(aes(label=support, subset=support>0.7), hjust=-0.3, size=2, color="deepskyblue4")
#show node number
p_node <- p2 + geom_text(aes(label=node), size=1, color = "black")
#highlight specific node
p_highlight <- p3 + geom_highlight(node = 452)

# plot and save to pdf
ggsave('NA_scored_rooted_t3.pdf', width = 9, height = 12, limitsize = FALSE)

detach("package:ggtree", unload = TRUE)  
detach("package:treeio", unload = TRUE) 

# dev.off()  # Clear plots
rm(list=ls()) # Clear all environment



library(treeio)
library(ggtree)
tree <- read.newick("NA_scored_rooted_t3.tre", node.label = "support")
#read group file
group_file <- read.table("group_file.txt", header = T, row.names = 1)
group_info <- split(row.names(group_file), group_file$Group)
#get grouped tree
tree <- groupOTU(tree, group_info)
#read taxa ID and taxa Name
taxa_list <- read.csv("taxa_list.csv")
#replace renamed tree
tree =  rename_taxa(tree, taxa_list, tip_lable, taxa)
#initial tree
p1 <- ggtree(tree, layout = 'circular', aes(color=group))+ theme(legend.position='bottom')
#add tip lable
p2 <- p1 + geom_tiplab(size=1, aes(angle=angle), fontface="italic")
# add support value
p3 <- p2 + geom_text2(aes(label=support, subset=support<0.7), hjust=-0.3, size=2, color="deepskyblue4")
#show node number
p_node <- p2 + geom_text(aes(label=node), size=1, color = "black")
#highlight specific node
p_highlight <- p3 + geom_highlight(node = 452)

# plot and save to pdf
ggsave('NA_scored_rooted_t3_lowSupport.pdf', width = 9, height = 12, limitsize = FALSE)

detach("package:ggtree", unload = TRUE)  
detach("package:treeio", unload = TRUE) 

# dev.off()  # Clear plots
rm(list=ls()) # Clear all environment



library(treeio)
library(ggtree)
tree <- read.newick("12codon_scored_rooted_t1.tre", node.label = "support")
#read group file
group_file <- read.table("group_file.txt", header = T, row.names = 1)
group_info <- split(row.names(group_file), group_file$Group)
#get grouped tree
tree <- groupOTU(tree, group_info)
#read taxa ID and taxa Name
taxa_list <- read.csv("taxa_list.csv")
#replace renamed tree
tree =  rename_taxa(tree, taxa_list, tip_lable, taxa)
#initial tree
p1 <- ggtree(tree, layout = 'circular', aes(color=group))+ theme(legend.position='bottom')
#add tip lable
p2 <- p1 + geom_tiplab(size=1, aes(angle=angle), fontface="italic")
# add support value
p3 <- p2 + geom_text2(aes(subset=!isTip, label=support), hjust=-0.3, size=1, color="deepskyblue4")
#show node number
p_node <- p2 + geom_text(aes(label=node), size=1, color = "black")
#highlight specific node
p_highlight <- p3 + geom_highlight(node = 458)

# plot and save to pdf
ggsave('12codon_scored_rooted_t1.pdf', width = 9, height = 12, limitsize = FALSE)

detach("package:ggtree", unload = TRUE)  
detach("package:treeio", unload = TRUE) 
# dev.off()  # Clear plots
rm(list=ls()) # Clear all environment



library(treeio)
library(ggtree)
tree <- read.newick("12codon_scored_rooted_t3.tre", node.label = "support")
#read group file
group_file <- read.table("group_file.txt", header = T, row.names = 1)
group_info <- split(row.names(group_file), group_file$Group)
#get grouped tree
tree <- groupOTU(tree, group_info)
#read taxa ID and taxa Name
taxa_list <- read.csv("taxa_list.csv")
#replace renamed tree
tree =  rename_taxa(tree, taxa_list, tip_lable, taxa)
#initial tree
p1 <- ggtree(tree, layout = 'circular', aes(color=group))+ theme(legend.position='bottom')
#add tip lable
p2 <- p1 + geom_tiplab(size=1, aes(angle=angle), fontface="italic")
# add support value
p3 <- p2 + geom_text2(aes(label=support, subset=support>0.7), hjust=-0.3, size=2, color="deepskyblue4")
#show node number
p_node <- p2 + geom_text(aes(label=node), size=1, color = "black")
#highlight specific node
p_highlight <- p3 + geom_highlight(node = 458)

# plot and save to pdf
ggsave('12codon_scored_rooted_t3.pdf', width = 9, height = 12, limitsize = FALSE)

detach("package:ggtree", unload = TRUE)  
detach("package:treeio", unload = TRUE) 

# dev.off()  # Clear plots
rm(list=ls()) # Clear all environment





library(treeio)
library(ggtree)
tree <- read.newick("12codon_scored_rooted_t3.tre", node.label = "support")
#read group file
group_file <- read.table("group_file.txt", header = T, row.names = 1)
group_info <- split(row.names(group_file), group_file$Group)
#get grouped tree
tree <- groupOTU(tree, group_info)
#read taxa ID and taxa Name
taxa_list <- read.csv("taxa_list.csv")
#replace renamed tree
tree =  rename_taxa(tree, taxa_list, tip_lable, taxa)
#initial tree
p1 <- ggtree(tree, layout = 'circular', aes(color=group))+ theme(legend.position='bottom')
#add tip lable
p2 <- p1 + geom_tiplab(size=1, aes(angle=angle), fontface="italic")
# add support value
p3 <- p2 + geom_text2(aes(label=support, subset=support<0.7), hjust=-0.3, size=2, color="deepskyblue4")
#show node number
p_node <- p2 + geom_text(aes(label=node), size=1, color = "black")
#highlight specific node
p_highlight <- p3 + geom_highlight(node = 458)

# plot and save to pdf
ggsave('12codon_scored_rooted_t3_lowSupport.pdf', width = 9, height = 12, limitsize = FALSE)

detach("package:ggtree", unload = TRUE)  
detach("package:treeio", unload = TRUE) 

# dev.off()  # Clear plots
rm(list=ls()) # Clear all environment






# zoom in Cornales
library(treeio)
library(ggtree)
tree <- read.newick("AA_BS33_scored_rooted_t3.tre", node.label = "support") 
taxa_list <- read.csv("taxa_list.csv") #read taxa ID and taxa Name
tree =  rename_taxa(tree, taxa_list, tip_lable, taxa) #replace renamed tree
p1 <- ggtree(tree, branch.length = "support") #initial tree
p2 <- p1 + geom_tiplab(size=1, fontface="italic") #add tip lable
p_Cornales <- viewClade(p1 + geom_tiplab(fontface="italic"), MRCA(p1, 'Nyssa ogeche', 'Hydrostachys goudotiana SAJIT3445'))

p_node <- p_Cornales + geom_text(aes(label=node)) #show node number

#add outgroup bar
p3 <- p_Cornales + geom_strip(68, 85, color = "orange", barsize = 3, offset = 0.3, label = "Cornales", offset.text = 0.3, fontsize = 6, hjust = "left", extend = 0.1, angle = 90) +
  geom_strip(74, 85, color = "seagreen", barsize = 3, offset = -0.3, label = "Hydrostachyaceae", offset.text = -0.5, fontsize = 6, hjust = "right", extend = 0.1, angle = 0) + 
  geom_strip(73, 72, color = "hotpink1", barsize = 3, offset = -0.3, label = "Hydrangeaceae", offset.text = -0.5, fontsize = 6, hjust = "right", extend = 0.1, angle = 0) + 
  geom_strip(71, 71, color = "lightblue3", barsize = 3, offset = -0.3, label = "Loasaceae", offset.text = -0.5, fontsize = 6, hjust = "right", extend = 0.1, angle = 0)

#add support value
p_Cornales_support <- p3 + geom_text2(aes(subset=!isTip, label=support), hjust=-0.3, size=3, color="deepskyblue4") 
# plot and save to pdf
ggsave('AA_BS33_scored_rooted_t3_Cornales.pdf', width = 9, height = 12, limitsize = FALSE)

detach("package:ggtree", unload = TRUE)  
detach("package:treeio", unload = TRUE) 

# dev.off()  # Clear plots
rm(list=ls()) # Clear all environment

