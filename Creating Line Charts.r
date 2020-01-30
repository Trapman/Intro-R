# good for measuring how things change over time

# INSTALL AND LOAD PACKAGES ##################################

# load pacman
pacman::p_load(pacman, tidyverse)

# load base packages manually
library(datasets)     # for example datasets

# SINGLE TIME SERIES ######################################

# uspop    U.S. Population Data from Census
?uspop
uspop

?ts      # get info about time-series objects

# Plot with default plot()
plot(uspop)

# Plot with options
uspop %<%
  plot(
    main = "US Population 1790-1970",
    sub = "(Source: datasets::uspo)",
    xlab = "Year", 
    ylab = "Population (in millions)"
  )
abline = (v = 1930, col = "lightgray")   # abline is basically a vertical reference line
text(1930, 10, "1930", col = "red3")
abline(v=1940, col = "lightgray")
text(1940, 2, "1940", col = "red3")

# Plot with ts.plot()
?ts.plot
# Although this can be used for a single time series, plot() is easier to use and is prefered
ts.plot(uspop)

# Plot with plot.ts()
# More powerful alternative
?plot.ts
plot.ts(uspop)

# MULTIPLE TIME SERIES #################################

#EuStockMarkets     basically the daily closing price of major EU Stock Indices, 1991-1998
?EuStockMarkets
EustockMarkets

# Three different plot functions
plot(EuStockMarkets)     # stacked windows
plot.ts(EuStockMarkets)  # Indentical
ts.plot(EsStockMarkets)  # One window
    
