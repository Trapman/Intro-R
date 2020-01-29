# built-it ways

# package ways (easier and cleaner)

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
