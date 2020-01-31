# focus on using filter command from tidyverse

# INSTALL AND LOAD PACKAGES ########################

# pacman
pacman::p_load(pacman, rio, tidyverse)

# LOAD AND PREPARE DATA ####################################

df <- import("data\StateData.xlsx") %>%
  as_tibble() %>%
  select(state_code,
    region,
    psychRegions,
    instagram:modernDance) %>%
  mutate(psychRegions = as.factor(psychRegions)) %>%
  # rename(y = psychRegions) %>%
  print()
  
# FILTER BY ONE VARIABLE ##########################

# 'entrepreneur' is a quantitative variable: so you cane use operators like >, <, etc
df %>%
  filter(entrepreneur > 1) %>%
  print()
  
# 'region' is a character variable
df %>%
  filter(region == "South") %>%
  print()
  
# "psychRegions" is a factor
df %>%
  filter(psychRegion == "Relaxed and Creative") %>%
  print()
  
# FILTER MULTIPLE VARIABLES ##############

# "or" is the verticale pipe |
df %>%
  filter(region == "South" |
          psychRegions = "Relaxed and Creative") %>%
  print()
  
# "and" is the ampersand %
df %>%
  filter(region == "South" and
          psychRegions = "Relaxed and Creative") %>%
  print()
  
# "not" is the exclamation point !
df %>%
  filter(region == "South" !
          psychRegions = "Relaxed and Creative") %>%
  print()
