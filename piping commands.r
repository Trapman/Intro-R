# BASIC SYNTAX #################################################

#piping commands use: %>%
# so you take a function that you apply to some data so that you start with the data and then you APPLY a function to it

function(data)      # this is what it normally looks like
data %>% function() # this is the PIPED version

function(data, arg)
data %>% 

func3(func2(func1(data, a), b), c)
data %>%
  func1(a) %>%
  func2(b) %>%
  func3(c)



# EXAMPLE #################################################
round(prop.table(margin.table(UPennAdmissions, 3)), 2) *100     # original command

# rewritten command:
UPennAdmissions %>%
  margin.table(3) %>%
  prop.table %>%
  round(2) %>%
  multiply_by(100)
  
