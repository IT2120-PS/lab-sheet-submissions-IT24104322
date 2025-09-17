##Question 01
#Part 1
#Binomial Distribution
#Here, random variable X has binomial distribution with n=44 and p=0.92

#Part 2
#It asks to find P(X=40). Following command gives the density.
#In other words, probability of getting an exact value can be calculated using "dbinom" command.
dbinom(40,44,0,92)

#Part 3
#It asks to find P(X<=35). Following command gives the cumulative
#Probability (<=), if "lower.tail" argument equalsto "True".
pbinom(35, 44, 0.92, lower.tail = TRUE)

#Part 4
#It ask to find P(X>=38). This can find using "pbinom" command as follows.
#You need to rearrange the probability statement as follows.
#P(X>=38) = 1-P(X<=37)
#Then command will be as follow
1- pbinom(37, 44, 0.92, lower.tail = TRUE)

#Or else following command can also used by keeping argument "lower.tail" as "FALSE".
#Here, when that argument is "False", it means that (P>37) which is same as P(X>=38).
pbinom(35, 44, 0.92, lower.tail = FALSE)

#Part 5
#It asks to find P(40<=X<=42). This can find using "pbinom" command as follows.
#You need to arrange the probability statement as follows.
#P(40<=X<=42) = P(X<=42)-P(X<=39)
#Then command will be as follows.
pbinom(42, 44, 0.92, lower.tail = TRUE)-pbinom(39, 44, 0.92, lower.tail = TRUE)

#Question 2
#Part 1
#Number of babies born in a hospital on a given day

#Part 2
#Poisson distribution
#Here, random variable X has poisson distribution with lambda = 5

#Part 3
#It asks to find P(X=6). Following command gives the density.
#In other words, probability of getting an exact value can be calculated using "dpois" command.
dpois(6,5)

#Part 4
#It asks to find P(X>6). This can find using "ppois" command as follows.
#If you keep "lower.tail" argument as "TRUE", That means P(X<=6).
#Since we need P(X>6), keep the "lower.tail" argument as "FALSE"
ppois(6, 5,lower.tail = FALSE)

#Exercise

#Part 1
#i.distribution of X is Binomial Distribution
#X ~ Bin(n=50, p=0.85)

#ii.probability that at least 47 students passed the test
p_at_least_47 <- 1 - pbinom(46, 50, 0.85, lower.tail = TRUE)
print(p_at_least_47)

#Part 2
#i. Let X - number of calls per hour 

#ii. X ~ Poisson(lembda = 12)

#iii.probability that exactly 15 calls are received in an hour 
p_exactly_15 <- dpois(15, 12)
print(p_exactly_15)
