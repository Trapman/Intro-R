# built-it ways of importing (kind of clunky)

# package ways (easier and cleaner, like pacman package)

# INSTALL AND LOAD PACKAGES ################################

# Install pacman ("package manager") if needed
if (!require("pacman")) install.packages("pacman")

# Load contributed packages with pacman
pacman:: p_load(pacman, party, trio, tidyverse)
# pacman: for loading/unloading packages
# party: for decision trees
# rio: for importing data
# tidyverse: for so many reasons (lol)

# LOAD AND PREPARE DATA ########################################

# save data to "df" ("for data frame")
# rename outcome as "y" (if it helps)
# specify outcome with df$y

# Import CSV files with readr::read_csv() from tidyverse
(df <- read_csv("data/StateData.csv"))

# Import other formats with rio::import() from rio
(df <- import("data/StateData.xlsx") %>% as_tibble()  #tibble() is a kind of df from tidyverse
 
#or...
 
df <- import("data/StateData.xlsx") %>%
  as_tibble() %>%
  select(state_code,
         psychRegions,
         instagram:modernDance) %>%
  mutate(psyschRegions = as.factor(psychRegions)) %>%  #as.factor reconstitutes it and let's us do other things with it
  rename(y = psychRegions) %>%   #just an easy rename
  print()
 
 # ANALYZE DATA ########################################################

 
