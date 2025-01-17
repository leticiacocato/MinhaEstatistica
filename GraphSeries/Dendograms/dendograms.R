library(tidyr)
library(dplyr)
library(collapsibleTree) # for interactive tree plot
library(htmlwidgets) #save the widget
library(htmltools)
?USArrests
data(USArrests)
any(is.na(USArrests))


### Violent crime rates by US state ###
USArrests %>% 
  select(Murder, Assault, Rape) %>%
  dist() %>% 
  hclust(method = "average") %>% 
  as.dendrogram() -> dend
str(dend)
str(dend, max.level = 2) # only first two levels 
par(mar=c(7,3,1,1))  # Increase bottom margin to have the complete label
# normal plot
plot(dend, 
     main = "Dendrogram of Violent Crime Rates by US State (Average Linkage)")
# triangle
plot(dend,type = "t", center = TRUE, 
     main = "Dendrogram of Violent Crime Rates by US State (Average Linkage)")
# distance leaf and edge root
#plot(dend, dLeaf = 1, edge.root = TRUE)
plot(dend, nodePar = list(pch = 1, cex = .5*2:1, col = 2:3),
     horiz = F, main = "Dendrogram of Violent Crime Rates by US State (Average Linkage)")


### INTERACTIVE TREE FOR MURDER ###
dist_matrix <- dist(USArrests) # Compute distance matrix
hc <- hclust(dist_matrix)
clusters <- cutree(hc, k = 3)
dend = as.dendrogram(hc)
parents <- paste0("Region", clusters)

# Data frame of hierarchical labels
labels <- labels(dend)
hierarchy_df <- data.frame(
  State = labels,
  Parent = parents, # All states are children of the "Root"
  Murder = USArrests$Murder
)
p <- collapsibleTree(
  hierarchy_df, 
  root = "Regions", 
  hierarchy = c("Parent", "State", "Murder"), fill = "black"
                )
prependContent(p,
               tags$h2("Interactive Dendrogram of Regional Murder Rates in the USA", style = "text-align: center;"),
               tags$h3("(Average Linked)", style = "text-align: center;")
)
# Save the plot in html
saveWidget(p, file=paste0("path_to_your_folder/dendrogram_interactive_MRDR.html"))



### INTERACTIVE TREE FOR ASSAULT ###
#dist_matrix <- dist(USArrests) # Compute distance matrix
#hc <- hclust(dist_matrix)
#clusters <- cutree(hc, k = 3)
#dend = as.dendrogram(hc)
#parents <- paste0("Region", clusters)
#labels <- labels(dend) # same as last tree

hierarchy_df <- data.frame(
  State = labels,
  Parent = parents, # All states are children of the "Root"
  Assault = USArrests$Assault
)
p <- collapsibleTree(
  hierarchy_df, 
  root = "Regions", 
  hierarchy = c("Parent", "State", "Assault"), fill = "black"
  )
prependContent(p,
               tags$h2("Interactive Dendrogram of Regional Assault Rates in the USA", style = "text-align: center;"),
               tags$h3("(Average Linked)", style = "text-align: center;")
)

saveWidget(p, file=paste0("path_to_your_folder/dendrogram_interactive_ASSLT.html"))


### INTERACTIVE TREE FOR RAPE ###
#dist_matrix <- dist(USArrests) # Compute distance matrix
#hc <- hclust(dist_matrix)
#clusters <- cutree(hc, k = 3)
#dend = as.dendrogram(hc)
#parents <- paste0("Region", clusters)
#labels <- labels(dend) # same as last tree

hierarchy_df <- data.frame(
  State = labels,
  Parent = parents, # All states are children of the "Root"
  Rape = USArrests$Rape
)
p <- collapsibleTree(
  hierarchy_df, 
  root = "Region", 
  hierarchy = c("Parent", "State", "Rape"),fill = 'black'
  )
prependContent(p,
  tags$h2("Interactive Dendrogram of Regional Rape Rates in the USA", style = "text-align: center;"),
  tags$h3("(Average Linked)", style = "text-align: center;")
)

saveWidget(p, file=paste0("path_to_your_folder/dendrogram_interactive_RP.html"))
