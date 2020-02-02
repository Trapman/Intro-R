# correlations help show associations between variables

# INSTALL AND LOAD PACKAGES ###############################

pacman::p_load(pacman, rio, tidyverse)

# LOAD AND PREPARE DATA ###################################

# Save Google Correlate variables

df <- import("data/StateData.xlsx") %>%
  as_tibble() %>%
  select(instagram:modernDance) %>%
  print()
  
# CORRELATION MATRIX ########################################
cor(df)

# Rounded to 2 decimals: just makes it cleaner and easier to read
df %>%
  cor() %>
  round(2)
  
# SINGLE CORRELATION #########################################

# can test one pair of variables at a time
# Gives r, hypothesis test, and confidence interval
cor.test(df$instagram, df$privacy)     # this means the data frame, and then the name of the variable in the data frame

# P-VALUES FOR MATRIX ###########################

# looking at more than one correlations at once

# install 'Hmisc' package to get p-values for matrix
p_load(Hmisc)

# need to coerce from a dataframe into a matrix to get it to run
# this will get both a correlation matrix and p-values (in separate tables)
df %>% 
  as.matrix() %>%
  rcorr()
