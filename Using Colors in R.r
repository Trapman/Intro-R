# LOAD DATA ###########################

x = c(24, 13, 7, 5, 3, 2)     #sample data
barplot(x)                    #default barplot

# COLORS IN R ###########################

# R has 657 color names, arranged alpabetically except for white, which is first
?colors
colors()    #gets list of color names

# USE COLORS ##############################################

# Color names
barplot(x, col = "red3")
barplot(x, col = "slategrey3")

# Index numbers                   #there's a bunch of different ways to enter colors, this is prob second easiest
barplot(x, col = colors() [555])    # red3
barplot(x, col = colors() [602])    # slategrey3

# MULTIPLE COLORS ##########################################
# if you want to use more than one color, you need to use a vector
barplot(x, col = c("red3", "slategrey3")
barplot(x, col = c("#9FB6CD", "#CD0000") # same thing, just using hex codes

# USING COLOR PALETTES ######################################

?pallete           # info on palletes
pallete()          # see current palletes

baplot(x, col - 1:6)          #uses current palette, 1 for each of the 6 bars we have in our current barplot
baplot(x, col - rainbow(6))
baplot(x, col - heat.colors(6))
baplot(x, col - terrain.colors(6))

