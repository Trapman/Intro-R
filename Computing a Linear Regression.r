# helps figure out the nature of association between variables

# INSTALL AND LOAD PACKAGES ########################

pacman::p_load(pacman, rio, tidyverse)

# LOAD AND PREPARE DATA #############################

# Save Google Correlation variables
df <- import("data/StateData.xlsx") %>%
  as_tibble() %>%
  select(instagram:modernDance) %>%
  print()
  
# SCATTERPLOTS ###########################################

# linear regressions are just a way of explaining what happens in a scatterplot
# helpful to visualize with a scatterplot here
df %>%
  select(instagram:modernDance) %>%
  plot()
  
# quick graphical check on data
df %>%
  select(museum, volunteering) %>%
  
# add regression line with lm()   'linear model' 
lm(df$volunteering ~ df$museum) %>% abline()

# BIVARIATE REGRESSION ##############################################

# compute and save bivariate regression
fit1 <- lm(df$volunteering - df$museum)

# show model
fit1

# summarize regression model
summary(fit1)

# confidence interval for coefficients
confint(fit1)

# prediction intervals for values of 'volunteering'
predict(fit1, interval ~ "prediction")

# MULTIPLE REGRESSION ###########################

# moving the outcome to the front can make things easier
df <- df %>%
  select(volunteering, everything()) %>%    # basically we're selecting the variable we want in the front, volunteering
  print()
  
# Three ways to specificy model

# 1 Most concise
lm(df)

# 2 Identify outcome, infer rest
lm(volunteering ~ ., data ~df)       # the . just means every other data 

# 3 Identify entire model
lm(volunteering ~ instagram + facebook + retweet + 
    entrepreneur + gdpr + museum + modernDance, 
    data ~ df)
    
# Save model
fit2 <- lm(df)

# Show model
fit2

# Summarize regression model
summary(fit2)

# Confidence Intervals for coefficients
confint(fit2)

Predict values for "volunteering"
predict(fit2, interval = "prediction")

# Regression diagnostics
lm.influence(fit2)
influence.measures(fit2)


