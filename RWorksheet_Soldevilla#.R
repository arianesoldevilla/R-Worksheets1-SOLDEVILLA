#1. Set up a vector named age.
age <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29,
         35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 42, 53, 41,
         51, 35, 24, 33, 41)

# a. data points: 34

num_data_point <-length(age)
print(num_data_point)

# b. Write the R code and its output.: age <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29,35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 42, 53, 41,51,35, 24, 33, 41)

#2. Find the reciprocal of the values for age.Write the R code and its output.
reciprocal_age <-1/age
print(reciprocal_age)

#output [1] 0.02941176 0.03571429 0.04545455 0.02777778 0.03703704 0.05555556
#[7] 0.01923077 0.02564103 0.02380952 0.03448276 0.02857143 0.03225806
#[13] 0.03703704 0.04545455 0.02702703 0.02941176 0.05263158 0.05000000
#[19] 0.01754386 0.02040816 0.02000000 0.02702703 0.02173913 0.04000000
#[25] 0.05882353 0.02702703 0.02380952 0.01886792 0.02439024 0.01960784
#[31] 0.02857143 0.04166667 0.03030303 0.02439024

#3. Assign new age. It duplicates the 'age' vector with a '0' inserted in between.
#Output: [1] 34 28 22 36 27 18 52 39 42 29 35 31 27 22 37 34 19 20 57 49
#[21] 50 37 46 25 17 37 42 53 41 51 35 24 33 41  0 34 28 22 36 27
#[41] 18 52 39 42 29 35 31 27 22 37 34 19 20 57 49 50 37 46 25 17
#[61] 37 42 53 41 51 35 24 33 41
new_age<- c(age,0,age)

#4. Sort the values for age.
#Output: [1] 17 18 19 20 22 22 24 25 27 27 28 29 31 33 34 34 35 35 36 37
#[21] 37 37 39 41 41 42 42 46 49 50 51 52 53 57
sorted_age<-sort(age)
print(sorted_age)

#5. Find the minimum and maximum value for age. 
#Output Minimum age: 17 
#Maximum age: 57 
min_age <- min(age)
max_age <- max(age)

# Print the minimum and maximum values
cat("Minimum age:", min_age, "\n")
cat("Maximum age:", max_age, "\n")

#6. Set up a vector named data.
data <- c(2.4, 2.8, 2.1, 2.5, 2.4, 2.2, 2.5, 2.3,
          2.5, 2.3, 2.4, 2.7)

#a. There are 12 data points.
num_data_point <-length(data)
print(num_data_point)

#7. Generate a new vector where you double every value of the data.
#Output [1] 4.8 5.64.2 5.0 4.8 4.4 5.0 4.6 5.0 4.6                   4.8 5.4 
double_data <-data*2
print(double_data)

#8.1 Integers from 1 to 100.
sequence <- seq(1, 100)
# Print the sequence
sequence

#8.2 Numbers from 20 to 60.
sequence <- seq(20, 60)
# Print the sequence
sequence

sequence <- seq(20, 60)

sequence <- seq(20, 60)

#8.3 Mean of numbers from 20 to 60

# Calculate the mean of the sequence
mean_value <- mean(sequence)

# Print the mean
cat("Mean of numbers from 20 to 60:", mean_value, "\n")

#8.4 Sum of numbers from 51 to 91
sequence <- seq(51, 91)

# Calculate the sum of the sequence
sum_value <- sum(sequence)

# Print the sum
cat("Sum of numbers from 51 to 91:", sum_value, "\n")



#8.5 Generate a sequence of integers from 1 to 1,000 with a step size of 1
sequence <- seq(1, 1000, by = 1)

# Print the first few elements of the sequence to verify
sequence

#Data points from 8.1 to 8.4
# 8.1 Integers from 1 to 100
sequence_8_1 <- seq(1, 100)
num_data_points_8_1 <- length(sequence_8_1)

# 8.2 Numbers from 20 to 60
sequence_8_2 <- seq(20, 60)
num_data_points_8_2 <- length(sequence_8_2)

# 8.3 Mean of numbers from 20 to 60
sequence_8_3 <- seq(20, 60)
mean_value_8_3 <- mean(sequence_8_3)

# 8.4 Sum of numbers from 51 to 91
sequence_8_4 <- seq(51, 91)
sum_value_8_4 <- sum(sequence_8_4)

#a. Print the number of data points for each scenario
#Output: 8.1 Number of data points: 100 
#8.2 Number of data points: 41 
#8.3 Mean of numbers from 20 to 60: 40 
#8.4 Sum of numbers from 51 to 91: 2911 
cat("8.1 Number of data points:", num_data_points_8_1, "\n")
cat("8.2 Number of data points:", num_data_points_8_2, "\n")
cat("8.3 Mean of numbers from 20 to 60:", mean_value_8_3, "\n")
cat("8.4 Sum of numbers from 51 to 91:", sum_value_8_4, "\n")

#c. For 8.5 find only the maximum data points until 10.
# Generate a sequence of integers from 1 to 1,000
sequence <- seq(1, 1000)

# Find the maximum data points until 10
max_data_points_until_10 <- sum(sequence <= 10)

# Print the result
cat("Maximum data points until 10:", max_data_points_until_10, "\n")


#9. Create a vector with integers between 1 and 100
sequence <- seq(1, 100)

# Filter the sequence to select only numbers not divisible by 3, 5, and 7
#Output: [1]  1  2  4  8 11 13 16 17 19 22 23 26 29 31 32 34 37 38 41 43 4446 47 52 53
#[26] 58 59 61 62 64 67 68 71 73 74 76 79 82 83 86 88 89 92 94 97 
filtered_sequence <- subset(sequence, !(sequence %% 3 == 0 | sequence %% 5 == 0 | sequence %% 7 == 0))

# Print the filtered sequence
filtered_sequence

#10. Generate a sequence backwards of integers from 1 to 100 in reverse order
reverse_sequence <- seq(100, 1, by = -1)

# Print the reverse_sequence
reverse_sequence

#11. List all the natural numbers below 25 that are multiples of 3 or 5.
# Create a vector of natural numbers from 1 to 24
numbers <- 1:24

# Use the modulo operator to check for multiples of 3 or 5
multiples <- numbers[numbers %% 3 == 0 | numbers %% 5 == 0]

# Calculate the sum of these multiples
sum_of_multiples <- sum(multiples)

# Print the list of multiples and the sum
cat("Multiples of 3 or 5 below 25:", multiples, "\n")
cat("Sum of multiples:", sum_of_multiples, "\n")


# Generate a sequence from 10 to 11
sequence_10_to_11 <- seq(10, 11)

# Count the number of data points
#a. There are 2 data points from 10 to 11
num_data_points <- length(sequence_10_to_11)

# Print the sequence and the number of data points
cat("Sequence from 10 to 11:", sequence_10_to_11, "\n")
cat("Number of data points from 10 to 11:", num_data_points, "\n")

#12. Based on the output, there is a error, unexpected '}' in the given statement.
{ x <- 0+ x + 5 + }

#13. Define the score vector
score <- c(72, 86, 92, 63, 88, 89, 91, 92, 75, 75, 77)

# Access elements at positions 2 and 3
element_2 <- score[2]
element_3 <- score[3]

# Print the values at positions 2 and 3
cat("Element at position 2:", element_2, "\n")
cat("Element at position 3:", element_3, "\n")


#14. Create a vector with NA values
a <- c(1, 2, NA, 4, NA, 6, 7)

# Replace NA values with -999 and print
a[is.na(a)] <- -999
print(a)

#15. 

# Prompt the user to input their name
name <- readline(prompt = "Input your name: ")

# Prompt the user to input their age
age <- readline(prompt = "Input your age: ")

# Construct and print a message using the user's input
message <- paste("My name is", name, "and I am", age, "years old.")
cat(message, "\n")

# Print the R version string
cat(R.version.string, "\n")

name = readline(prompt="Input your name: ")
age = readline(prompt="Input your age: ")
print(paste("My name is", name, "and I am", age, "years old."))
print(R.version.string)

#Output: > name = readline(prompt="Input your name: ")
#Input your name: Ariane
#> age = readline(prompt="Input your age: ")
#Input your age: 19
#> print(paste("My name is", name, "and I am", age, "years old."))
#[1] "My name is Ariane and I am 19 years old."
#> print(R.version.string)
#[1] "R version 4.3.1 (2023-06-16)"