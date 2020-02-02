# model the associations between categorical / nominal variables
# contingency table aka cross tabulation is the most popular way of doing this

# INSTALL AND LOAD PACKAGES ####################################

pacman::p_load(pacman, rio, tidyverse)

# LOAD AND PREPARE DATA ########################################

# Save categorical variables
df <- import("data/StateData.xlsx") %>%
  as_tibble() %>%
  select(state_code, region, psychRegions) %>%
  mutate(psychRegions = as.factor(psychRegions)) %>%
  print()
  
# ANALYZE DATA ###########################

# Create Contingency Table: 'ct', and use table() command
ct <- table(df$region, df$psychRegions)
ct

# call also get cell, row, and column %
# with rounding to get just 2 decimal places
# multiplied by 100 to make %

p_load(magrittr) # to get arithmetic aliases

# Raw percentages
ct %>%
  prop.table(1) %>%  # 1 is for row percentages
  round(2) %>%
  multiply_by(100)
  
# Column percentages
ct %>%
  prop.table(2) %>% # 2 is for columns percentages
  
# Total percentages
ct %>%
  prop.table() %>% # No argument to get total percentages, leave blank
  round(2) %>%
  multiply_by(100)
  
# Chi-squared test (but n is small)
tchi <- chisq.test(ct)
tchi

# Additional Tables
tchi$observed    # observed frequencies (same as ct)
tchi$expected    # expected frequencies
tchi$residuals   # Pearson's residual
tchi$stdres      # Standardized residual


