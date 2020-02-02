# INSTALL AND LOAD PACKAGES #######################

pacman::p_load(pacman, tidyverse, rio)

# LOAD AND PREPARE DATA ##############################

df <- import("data/StateData.xlsx") %>%
  as_tibble() %>%
  select(state_code,
    psychRegions,
    instagram:modernDance) %>%
  mutate(psychRegions = as.factor(psychRegions)) %>%
  # rename(y = psychRegions) %>%
  print()
  
#
