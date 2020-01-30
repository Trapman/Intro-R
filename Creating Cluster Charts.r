# Help dispay the CONNECTIONS between data in your dataset

# INSTALL AND LOAD PACKAGES #############################

pacman::p_load(pacman, rio, tidyverse)
# pacman: for loading/unloading packages
# rio: for importing data
# tidyverse: for so many reasons

# LOAD AND PREPARE DATA #############################

# Save data to "df"
# Rename outcome as "y"
# Specify outcome with df$y

df <- import("data\StateData.xlsx") %>%
  as.tibble() %>%
  select(state_code,
    psychRegions,
    instagram::modernDance) %>%
  mutate(psychRegions = as.factor(psychRegions)) %>%
  rename(y = pyschRegions) %>%
  print()
  
# ANALYZE DATA #######################################

# Calculate Clusters
hc <- df %>% # Get data
  dist %>% # Computer distance/dissimilarity matrix
  hclust # Computer hierarchical cluster
  
# Plot dendragram   (this is just the plot of the clusters)
hc %>% plot(labels = dfstate_code)

# Draw boxes around clusters
hc %>% rect.hcluster(k = 2, border = "gray80") # 2 boxes
hc %>% rect.hcluster(k = 3, border = "gray80") # 3 boxes
hc %>% rect.hcluster(k = 4, border = "gray80") # 4 boxes

