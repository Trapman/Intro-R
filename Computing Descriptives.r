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
  
# SUMMARY ##########################

df %>% summary()   # summary for the entire table

df %>%             # summary for one variable
  select(entrepreneur) %>%
  summary()
  
#QUARTILES ########################################

# Turkey's five number-salary: min, lower_hinge, median, upper-hinge, max. No labels
fivenum(df$entrepreneur)

# Boxplot states: hinges, n, CI for median, outliers
boxplot(df$entrepreneur, notch = T, horizontal = T)
boxplot.stats(df$entrepreneur)

# ALTERNATIVE DESCRIPTIVES #######################

p_load(psych)               # Load psych package
p_help(psych, web = F)      # Get info on psych package
    
