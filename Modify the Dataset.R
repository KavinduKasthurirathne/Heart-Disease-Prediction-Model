getwd()
setwd("C:\\Users\\HP\\Downloads")

# Load the Data set
df = read.csv("cleveland.csv")
df

# Check whether there are any null values or missing values
is.null(df)

# Replace the missing values
df[df == '?' | df == '-'] = NA
df

# Save the modified data set as a CSV file
write.csv(df, file = 'modified_cleveland_dataset.csv', row.names = FALSE)


# Summary
summary(df)

# Histogram
hist(df$age)

# Boxplot
boxplot(df$age)

# Scatterplot
plot(df$age, df$chol)