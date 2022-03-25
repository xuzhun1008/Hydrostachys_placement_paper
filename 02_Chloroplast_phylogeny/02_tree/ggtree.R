library(treeio)
library(ggtree)
tree <- read.newick("v1.0.contree", node.label = "support") 
#read taxa ID and taxa Name
taxa_list <- read.csv("taxa_list.csv") 
#replace to renamed tree
tree =  rename_taxa(tree, taxa_list, tip_lable, taxa) 
#initial tree
p1 <- ggtree(tree, layout = 'circular', size=.1)  #'size=.1' make the branch thiner
#add tip lable
p2 <- p1 + geom_tiplab(size=0.5, aes(angle=angle), fontface="italic") 
# add support value
p3 <- p2 + geom_text2(aes(subset=support<70, label=support), hjust=-0.3, size=0.2, color="deepskyblue4") 
#show node number
p_node <- p2 + geom_text(aes(label=node), size=0.4, color = "red") 

#add bars
p4 <- p3 + 
  geom_strip(457, 464, color = "orangered", barsize = 1.5, offset = 0, label = "Cornales", offset.text = 0.1, fontsize = 3, hjust = "left", extend = 0.5, angle = -90) +
  geom_strip(452, 432, color = "lightpink", barsize = 1.5, offset = 0, label = "Ericales", offset.text = 0.1, fontsize = 3, hjust = "left", extend = 0.5, angle = 0) +
  geom_strip(232, 279, color = "palegreen", barsize = 1.5, offset = 0, label = "Campanulids", offset.text = 0.1, fontsize = 3, hjust = "left", extend = 0.5, angle = 0) +
  geom_strip(427, 365, color = "paleturquoise", barsize = 1.5, offset = 0, label = "Lamiids", offset.text = 0.1, fontsize = 3, hjust = 'left', extend = 0.5, angle = 0) +
  geom_strip(543, 526, color = "darkolivegreen2", barsize = 1.5, offset = 0, label = "Caryophyllales", offset.text = 0.1, fontsize = 3, hjust = "right", extend = 0.5, angle = 30) +
  geom_strip(556, 560, color = "darkseagreen", barsize = 1.5, offset = 0, label = "Santales", offset.text = 0.1, fontsize = 3, hjust = "right", extend = 0.5, angle = 0) +
  geom_strip(551, 553, color = "darkslategray4", barsize = 1.5, offset = 0, label = "Berberridopsidales", offset.text = 0.1, fontsize = 3, hjust = "right", extend = 0.5, angle = 20) +
  geom_strip(766, 830, color = "darkturquoise", barsize = 1.5, offset = 0, label = "Fabids", offset.text = 0.1, fontsize = 3, hjust = "right", extend = 0.5, angle = 0) +
  geom_strip(646, 594, color = "deeppink", barsize = 1.5, offset = 0, label = "Malvids", offset.text = 0.1, fontsize = 3, hjust = "right", extend = 0.5, angle = 0) +
  geom_strip(848, 858, color = "deepskyblue", barsize = 1.5, offset = 0, label = "Saxifragales", offset.text = 0.1, fontsize = 3, hjust = "right", extend = 0.5, angle = 0) +
  geom_strip(563, 565, color = "dodgerblue", barsize = 1.5, offset = 0, label = "Vitales", offset.text = 0.1, fontsize = 3, hjust = "right", extend = 0.5, angle = 0) +
  geom_strip(859, 898, color = "firebrick1", barsize = 1.5, offset = 0, label = "Basal eudicots", offset.text = 0.1, fontsize = 3, hjust = "right", extend = 0.5, angle = 0) +
  geom_strip(67, 2, color = "gold", barsize = 1.5, offset = 0, label = "Monocots", offset.text = 0.1, fontsize = 3, hjust = "left", extend = 0.5, angle = 0) +
  geom_strip(913, 942, color = "goldenrod1", barsize = 1.5, offset = 0, label = "Basal angiosperm", offset.text = 0.1, fontsize = 3, hjust = "left", extend = 0.5, angle = 0) +
  geom_strip(1022, 949, color = "goldenrod4", barsize = 1.5, offset = 0, label = "Conifers", offset.text = 0.1, fontsize = 3, hjust = "left", extend = 0.5, angle = 0) + 
  geom_strip(464, 465, color = "blueviolet", barsize = 1.5, offset = -0.02, label = "Hydrostachyaceae", offset.text = -0.03, fontsize = 3, hjust = "left", extend = 0.5, angle = 0) 


#highlight specific node
p_highlight <- p4 + geom_highlight(node = 1562, fill = 'blueviolet', alpha = 0.9)

# plot and save to pdf
ggsave('chloroplast_placement.pdf', width = 12, height = 9, limitsize = FALSE)

detach("package:ggtree", unload = TRUE)  
detach("package:treeio", unload = TRUE) 
# dev.off()  # Clear plots
rm(list=ls()) # Clear all environment






# zoom in Cornales
library(treeio)
library(ggtree)
tree <- read.newick("v1.0.contree", node.label = "support") 
taxa_list <- read.csv("taxa_list.csv") #read taxa ID and taxa Name
tree =  rename_taxa(tree, taxa_list, tip_lable, taxa) #replace renamed tree
p1 <- ggtree(tree, branch.length = "support") #initial tree
p2 <- p1 + geom_tiplab(size=1, fontface="italic") #add tip lable
p_Cornales <- viewClade(p1 + geom_tiplab(fontface="italic"), MRCA(p1, 'Cornales_Curtisia_dentata_UZNH', 'Hydrostachys_sp_CF2019'))

p_node <- p_Cornales + geom_text(aes(label=node)) #show node number

# add outgroup bar
p3 <- p_Cornales + 
  geom_strip(464, 457, color = "orange", barsize = 3, offset = -300, label = "Cornales", offset.text = 100, fontsize = 5, hjust = "left", extend = 0.1, angle = 0) + 
  geom_strip(464, 465, color = "seagreen", barsize = 3, offset = -400, label = "Hydrostachyaceae", offset.text = -100, fontsize = 5, hjust = "right", extend = 0.1, angle = 0) + 
  geom_strip(461, 461, color = "lightblue3", barsize = 3, offset = -400, label = "Loasaceae", offset.text = -100, fontsize = 5, hjust = "right", extend = 0.1, angle = 0) + 
  geom_strip(467, 468, color = "hotpink1", barsize = 3, offset = -400, label = "Hydrangeaceae", offset.text = -100, fontsize = 5, hjust = "right", extend = 0.1, angle = 0) 
  

# add support value
p_Cornales_support <- p3 + geom_text2(aes(subset=!isTip, label=support), hjust=-0.3, size=3, color="deepskyblue4") 
# plot and save to pdf
ggsave('chloroplast_placement_Cornales.pdf', width = 12, height = 9, limitsize = FALSE)

detach("package:ggtree", unload = TRUE)  
detach("package:treeio", unload = TRUE) 

# dev.off()  # Clear plots
rm(list=ls()) # Clear all environment
