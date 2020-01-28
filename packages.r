# R Project website, CRAN link has links to a bunch of the popular packages: https://www.r-project.org/

# packages link: https://cloud.r-project.org/

# packages broken down by topic: https://cloud.r-project.org/

# to load packages already included in base install of R, use library():
library(datasets)

# he uses the pacman package ("package management"). To install:
if (!require("pacman")) install.packages("pacman")

# use pacman to then load contributed packages you're using:
pacman :: p_load(pacman, rio, party, tidyverse)
