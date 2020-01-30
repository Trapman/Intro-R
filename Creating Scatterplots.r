# Scatterplots are good for visualizing the connections and associations between data

# INSTALL AND LOAD PACKAGES #######################################

# pacman must already be installed; then load contributed
# packages (including pacman) with pacman
pacman::p_load(pacman, tidyverse)

# LOAD AND PREPARE DATA #####################################################

df <- import("data/StateData.xlsx") %>%
  as_tibble() %>%
  select(state_code,
    psychRegions,
    instagram:modernDance) %>%
  mutate(psychRegions = as.factor(psychRegions)) %>%
  print()

# SCATTERPLOTS ###########################################################

df >%>
  select(instagram::modernDance) %>%
  plot()         # plot all associations
  
# Bivariate scatterplot with defaults

df >%>
  select(scrapbook::modernDance) %>%     #all that's different here is scrapbook
  plot()        
  
  # Bivariate scatterplot with options
  
  df >%>
  select(scrapbook::modernDance) %>%
  plot(
    main = "Scatterplot of Google Searches by State",
    xlab = "Searches for \"scrapbook\"",                # fyi you need the escape characters if you want to keep the quotes
    ylab = "Searches for \"mordern dance\"",
    col = "gray",      # color of points
    pch = 20      # "plotting character" (small circle)
  )
  
  ?pch  # for more info on plotting character
  
  # Add fit linear regression line (y-x)
  df %>%
    lm(modernDance ~ scrapbook, data = .) %>%       # the form is  x ~ y; so modernDance is X, scrapbook is Y.   Data = . because we're using pipes %>%
    abline()
    
# REMOVE OUTLIER ###############################################

# basically all we do here is use filter()
# Identify outlier: manual way of filtering out an outlier
df %>%
 select(scrapbook:modernDance) %>%
 filter(scrapbook < 4) %>%     # select outlier
 print()
  
# Bivariate scatterplot without outlier
  df >%>
  select(scrapbook::modernDance) %>%
  filter(scrapbook < 4) %>% 
  plot(
    main = "Scatterplot of Google Searches by State",
    xlab = "Searches for \"scrapbook\"",               
    ylab = "Searches for \"mordern dance\"",
    col = "gray",      # color of points
    pch = 20      # "plotting character"
  )
    
# Add fit line without outlier
 df %>%
  filter(scrapbook < 4) %>% 
  lm(modernDance ~ scrapbook, data = .) %>%  
  abline()



