# useful for quantitative/measured/scaled variable
# shows shape of variable
# other useful graph is boxplot

# INSTALL AND LOAD PACKAGES ##############################

# pacman must already be installed
pacman::p_load(pacman, tidyverse)

# LOAD DATA ############################################################

# Using the diamonds dataset from ggplot2
?diamonds
diamonds()

# HISTOGRAM ##############################################################3
?hist
hist()

# Histogram with defaults
hist(diamonds$price)

# Histogram with options
hist(diamonds$price,
  breaks = 7,                                # suggest the number of breaks (i.e. number of bars)
  main = "Histogram of Price of Diamonds",
  sub= "(Source: ggplot::diamonds)", 
  ylab= "Frequency",
  xlab = "Price of Diamonds",
  border = NA,                                # no borders on bars
  col = "#CD0000"                             # red3
  )
