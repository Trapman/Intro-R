# good starting point for your stats analysis
# I think this is usually best for categorical variables

# INSTALL AND LOAD PACKAGES ##########################
pacman::p_load(pacman, rio, tidyverse)

# LOAD AND PREPARE DATA ###################################

df <- import("data/StateData.xlsx") %>%
  as_tibble() %>%
  select(state_code,
    pscychRegions,
    instagram:modernDance) %>%
  mutate(psychRegions = as.factor(psychRegions)) %>%
  # rename(y = psychRegions) %>%
  print()
  
 # SUMMARIZE DATAFRAME #####################################
  
 summary(df)  # gives us frequencies for factors only
  
 # SUMMARIZE CATEGORICAL VARIABLE #############################
  
 # 'region' is a character variable
  
 # summary() is not very useful
 df %>%
   selection(region) %>%
   summary()
    
# table() works better
 df %>%
   selection(region) %>%
   table()
   
# SUMMERIZE FACTOR #############################

# 'psychRegions' is a factor

# using summary() works best
 df %>%
   selection(psychRegions) %>%
   summary()
   
# table() doesn't work that well

# SUMMARIZE MULTIPLE FACTORS

df <- df %>%
  mutate(region = as.factor(region)) %>%
  mutate(psychRegions = as.factor(psychRegions)) %>%
  print()
  
summary(df)
