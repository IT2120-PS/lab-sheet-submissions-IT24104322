#Q1. X ~ Uniform(0, 40)
# What is the probability that the train arrives between 8:10 a.m. and 8:25 a.m.
prob1 <- punif(25, min=0, max=40) - punif(10, min=0, max=40)
prob1

#Q2. Find the probability that an update will take at most 2 hours
#X ~ Exp(rate = 1/3)
prob2 <- pexp(2, rate=1/3)
prob2

#Q3. Suppose IQ scores are normally distributed with a mean of 100 and a standard deviation of 15.
#What is the probability that a randomly selected person has an IQ above 130
prob3i <- 1 - pnorm(130, mean=100, sd=15)
prob3i

#What IQ score represents the 95th percentile
iq_95 <- qnorm(0.95, mean=100, sd=15)
iq_95