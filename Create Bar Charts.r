# INSTALL AND LOAD PACKAGES #######################################

# pacman must already be installed; then load contributed
# packages (including pacman) with pacman
pacman::p_load(pacman, tidyverse)

# LOAD DATA #####################################################

# Using the diamonds dataset from ggplot2
?diamonds
diamonds()

# BARPLOT OF FREQUENCIES #############################################

?plot
?barplot

# Shortest method to make a barplot
plot(diamonds$cut)           #uses diamond dataset, and the cut variable

# Similar process using pipes
diamonds %>% 
  select(color) %>%
  plot()
  
# Similar code using barplot(); doesn't work
diamonds %>%
  select(clarity) %>%
  barplot()    # Error: height must be a vector or a matrix
  
# Create frequency vector with table()  Usually you'll need to do this
?table

# Try again with table()
diamonds %>%
  select(clarity) %>%
  table() %>%             #basically it just puts data into appropriate format
  barplot()
  
# Sort bars by decreasing values
diamonds %>%
  select(clarity) %>%
  table() %>%
  sort(decreasing - T) %>%    # basically means sort by decreasing = True
  barplot()
  
# Adding options to plot
diamonds %>%
  select(clarity) %>%
  table() %>%
  barplot(
    main = "Clarity of Diamonds",
    sub = "(Source: ggplot2::diamonds)",
    hariz = T,                           # draw horizontal bars
    ylab = "Clarity of Diamonds",        # Flip axis labels
    xlab = "Frequency",
    xlim = c(0, 15000),                  # limits for X axis
    border = NA,                         # No borders on bars
    col = "#CD0000"                      # red3
  )
  
# SIDE-BY-SIDE BARPLOT FREQUENCIES #################################
  
# 100% stacked bar
diamonds %>%
  select(color, clarity) %>%
  plot()
    
# Stacked bars: step 1: create table
df <- diamonds %>%
  select(color, clarity) %>%
  table()%>%
  print()
    
# Stacked bars: step 2: create graph
df %>%
  barplot(legend = rownames(.))    # draw plot w/ legend. Basically (.) just refers the pipe back to df
 
#Side-by-side bar
df %>%
  barplot(
    legend = rownames(.),         # dot is a placeholder for pipe, again refers pipe back to df
    beside = T                    # put bars next to each other
  )
  

  
