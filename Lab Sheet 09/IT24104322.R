setwd("C:\\Users\\Admin\\Desktop\\IT24104322")
getwd()

#Part 1
#To generate random numbers from a normal distribution, we can use 'rnorm' command as follows.
set.seed(124)                      
baking <- rnorm(25, mean = 45, sd = 2)
baking                               


#Part 2
t.test(baking, mu = 46, alternative = "less")

