# INSTALL AND LOAD PACKAGES ##########################
pacman::p_load(pacman, rio, tidyverse)

# LOAD AND PREPARE DATA ###################################

df <- import("data/StateData.xlsx") %>%
  as_tibble() %>%
  select(state_code,
    pscychRegions,
    instagram:modernDance) %>%
  mutate(psychRegions = as.factor(psychRegions)) %>%
  # rename(y = psychRegions) %>%
  
# CREATE CATEGORIES WITH RECODE #################

df %>%
  mutate(relaxed = recode(psychRegions,
    "Relaxed and Creative" = "yes",
    "Friendly and Conventional" = "no",
    .default = "no")) %>%        # sets default value; so any other category that doesn't get included is default set to = "no"
  select(state_code, psychRegions, relaxed)
  
# CREATE CATEGORIES WITH CASE_WHEN ###########################

# case_when works a little differently so we'll save as df2
df2 <- df %>%
  mutate(likeArts = case_when(
    museum > 1 | scrapbook > 1 | modernDance > 1 ~ "yes",   #if any of these 3 is > 1 then they get a YES on likeArts 
    TRUE ~ "no"))   # All other values
    
df2 %>%
  select(state_code, likeArts, museum:modernDance) %>%
  arrange(desc(likeArts)) %>%
  print(n = Inf)  # Inf is "infinity"; so this basically means show me everything
 
  
  # case_when
