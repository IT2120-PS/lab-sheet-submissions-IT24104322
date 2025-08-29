getwd()
setwd("C:\\Users\\IT24104322\\Desktop\\IT24104322")

##Importing the dataset
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE , sep = ",")
Delivery_Times

names(Delivery_Times) <- c("X1")

#view database
fix(Delivery_Times)

##Attach the database to access the variable
attach(Delivery_Times)

##Draw a histogram for deliver times using nine class intervals where the lower limit is 20 and upper limit is 70. Use right open intervals
hist(Delivery_Times$X1, breaks = seq(20, 70, length = 10), right = FALSE, 
    main = "Histogram for Delivery Times", xlab = "Delivery Time")

# Cumulative frequency polygon
breaks <- seq(20, 70, length = 10)
histogram <- hist(Delivery_Times$X1, breaks = breaks, right = FALSE, plot = FALSE)
cum.freq <- cumsum(histogram$counts)
plot(breaks, c(0, cum.freq), type = 'l', main = "Ogive for Delivery Times", 
     xlab = "Delivery Time", ylab = "Cumulative Frequency")
