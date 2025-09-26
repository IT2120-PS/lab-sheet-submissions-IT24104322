getwd()
##set the directory
setwd("C:\\Users\\IT24104322\\Desktop\\IT24104322")

##Importing the dataset
data<-read.table("Exercise - LaptopsWeights.txt",header=TRUE)
##Visualization of the dataset
fix(data)
attach(data)

laptop_bag_weights <- data$Weight.kg

##command "means' & "var" will compute the mean and varianCe for data.
popmn<-mean(laptop_bag_weights)
popsd<-sd(laptop_bag_weights) * sqrt((length(laptop_bag_weights) - 1) / length(laptop_bag_weights)) 

cat("Population Mean:", popmn,"\n")
cat("Population Standard Deviation:", popsd,"\n")

## Draw 25 random samples of size 6 (with replacement) and calculate the sample mean and sample standard deviation for each sample
set.seed(123) #for reproducibility
samples<-c()
n<-c()

for (i in 1:25){
  s<- sample(laptop_bag_weights, size = 6, replace = TRUE)
  samples <- cbind(samples,s)
  n <- c(n, paste('S'))
}
samples

##Calculate the mean and standard deviation of the 25 sample means and state the relationship of them with true mean and true standard deviation
mean(samples)
sd_of_samples<-sd(samples)
sd_of_samples
