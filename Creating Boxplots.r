# good for showing the presence of outliers

# INSTALL AND LOAD PACKAGES ##############################

# pacman must already be installed
pacman::p_load(pacman, tidyverse)

# LOAD DATA ############################################################

# Using the diamonds dataset from ggplot2
?diamonds
diamonds()

# BOXPLOT OF FREQUENCIES ###########################

?plot
?boxplot

# Boxplot with defaults
boxplot(diamonds$price)

# Similar process using pipes
diamonds %>%
  select(price) %>%
  boxplot()
  
# Boxplot with options
diamonds %>%
  select(price) %>%
  boxplot(
    horizontal = T,               # makes it horizontal
    notch = T,                    # confidence interval for median
    main = "Boxplot of Price of Diamonds",
    sub = "(Source: ggplot::diamonds)",
    xlab = "Price of Diamonds",
    col = "#CD0000"               # red3
  )
  
# BOXPLOTS BY GROUP ###################################################

# Boxplots by group using plot()
diamonds %>%
  select(color, price) %>%
  plot()
  
# Boxplots by group using boxplot()
diamonds %>%
  select(color, price) %>%
   boxplot(
    price ~ color,     # Tilde indicates formula (means price is a function of color)
    data = . ,         # dot is placeholder for pipe (takes the dataset and applies it where the . is)
    col = "#CD0000"
  )
