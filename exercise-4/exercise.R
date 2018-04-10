# Exercise 4: external data sets: Gates Foundation Educational Grants

# Use the `read.csv()` functoin to read the data from the `data/gates_money.csv`
# file into a variable called `grants` using the `read.csv()`
# Be sure to set your working directory in RStudio, and do NOT treat strings as 
# factors!
df <- read.csv("data/gates_money.csv", stringsAsFactors = F)

# Use the View function to look at the loaded data
View(df)

# Create a variable `organization` that contains the `organization` column of 
# the dataset
organization <- df$organization

# Confirm that the "organization" column is a vector using the `is.vector()` 
# function. 
# This is a useful debugging tip if you hit errors later!
is.vector(organization)

## Now you can ask some interesting questions about the dataset

# What was the mean grant value?
mean_grant_value <- mean(df$total_amount)

# What was the dollar amount of the largest grant?
max_amount <- max(df$total_amount)

# What was the dollar amount of the smallest grant?
min_amount <- min(df$total_amount)

# Which organization received the largest grant?
max_organization <- organization[df$total_amount == max_amount]

# Which organization received the smallest grant?
min_organization <- organization[df$total_amount == min_amount]

# How many grants were awarded in 2010?
grants_2010 <- length(df$total_amount[df$start_year == 2010])
