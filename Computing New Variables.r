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
  
  # AVERAGE VARIABLES ###################
  
  df %>%
    mutate(
      socialMedia = (instagram + facebook + retweet) / 3,    # created a new variable, 'socialMedia'. we did ()/3 because there are 3 variables, so we want the average
      artsCrafts = (museum + scrapbook + modernDance) / 3,   # created a new variable, artsCraft'
    ) %>%
    select(state_code, socialMedia, artsCrafts)
    
# REVERSE CODING #########################

df %>%
  mutate(
    outgoing = (volunteering + (privacy * -1)) / 2  # created a new variable, 'outgoing' and then multiplied privacy by *-1
  ) %>%
  select(state_code, outgoing, volunteering, privacy)
  
# For 1-n scale, use (n+1) - x
# For 0-n scale, n - x

# 'psych' and 'scale' packages make this process easier
