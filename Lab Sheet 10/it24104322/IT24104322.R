getwd()
# Step 1: Set the file path
file_path <- "http://www.sthda.com/sthda/RDoc/data/housetasks.txt"

# Step 2: Import the data as a contingency table
housetasks <- read.delim(file_path, row.names = 1)

#Step 3: View the data
print(housetasks)

# Step 4: Perform Chi-Squared Test of Independence
chisq_result <- chisq.test(housetasks)

# Step 5: View the test result
print(chisq_result)

# Step 6: Interpret the result
if (chisq_result$p.value < 0.05) {
  cat("Conclusion: Reject the null hypothesis. There is a significant association between house tasks and their distribution in the couple.\n")
} else {
  cat("Conclusion: Do not reject the null hypothesis. No significant association found.\n")
}

