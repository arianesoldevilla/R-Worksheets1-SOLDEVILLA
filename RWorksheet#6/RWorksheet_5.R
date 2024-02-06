#1
student_score <- data.frame(
  Student = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
  Pre_test = c(55, 54, 47, 57, 51, 61, 57, 54, 63, 58),
  Post_test = c(61, 60, 56, 63, 56, 63, 59, 56, 62, 61)
)
print(student_score)

#1a
library(Hmisc)
library(pastecs)
summary(student_score)
stat.desc(student_score)

#2a
fertilizer_levels <- c(10, 10, 10, 20, 20, 50, 10, 20, 10, 50, 20, 50, 20, 10)
ordered_factor_Fertilizer <- factor(fertilizer_levels, levels = c(10, 20, 50), ordered = TRUE)
ordered_factor_Fertilizer

#The ordered_factor_Fertilizer variable will contain the converted fertilizer levels as an ordered factor.

#3a
exercise_levels <- c("l", "n", "n", "i", "l", "l", "n", "n", "i", "l")
exercise_levels

el_factor <- factor(exercise_levels, levels = c("n", "l", "i"), labels = c("none", "light", "intense"))

#4a. 
state <- c("tas", "sa", "qld", "nsw", "nsw", "nt", "wa", "wa", "qld",
           "vic", "nsw", "vic", "qld", "qld", "sa", "tas", "sa", "nt",
           "wa", "vic", "qld", "nsw", "nsw", "wa", "sa", "act", "nsw",
           "vic", "vic", "act")

state_factor <- factor(state) 
print(state_factor)

#The factor function changed the list of state names into a new thing called a factor with seven parts and special names for each one. This makes it easier to understand and work with the data without having to use numbers instead of the names of the states.

#5a
incomes <- c(60, 49, 40, 61, 64, 60, 59, 54,
             62, 69, 70, 42, 56, 61, 61, 61, 58, 51, 48,
             65, 49, 49, 41, 48, 52, 46, 59, 46, 58, 43)

state_factor <- factor(state, levels = c("act", "nsw", "nt", "qld", "sa", "tas", "va"), labels = c("ACT","NSW","NT","QLD","SA","TAS","VIC"))

incmeans <- tapply(incomes, state_factor, mean)
print(incmeans)

#5b
#ACT      NSW       NT      QLD       SA      TAS      VIC 
#44.50000 57.33333 55.50000 53.60000 55.00000 60.50000       NA 

#The results gives the average income for each state which is inside the "incmeans" vector. 

#6a
stdError <- function(x) sqrt(var(x)/length(x))
incster <- tapply(incomes, state_factor, stdError)
incster

#6b
#Some states have smaller standard errors (like NSW and ACT) have more precise and reliable mean incomes, while states with larger standard errors (such as QLD and NT) have less precise and reliable mean incomes due to greater variability in their samples.

#7
data (Titanic)
Titanic

#7a
library(dplyr)
titanic <- as.data.frame(Titanic)
survivors <- titanic %>%filter(Survived == "Yes")
head(survivors) 
tail(survivors)

non_survivors <- titanic %>%filter(Survived == "No")
head(non_survivors) 
tail(survivors)

#8
install.packages("readr")
library(readr)
breastcancer_wisconsin <- read_csv("/cloud/project/RWorksheet#6/breastcancer_wisconsin.csv")
breastcancer_wisconsin

#8a
#The dataset is a collection of information about breast cancer tumors reported by Dr. Wolberg. It includes details about tumor size, shape, and texture, provided chronologically as cases are diagnosed.

#8d.1
sd_clump_thickness <- sd(breastcancer_wisconsin$clump_thickness)
sample_size <- length(breastcancer_wisconsin$clump_thickness)
sem_clump_thickness <- sd_clump_thickness / sqrt(sample_size)
cat("Standard Error of the Mean for Clump Thickness:", sem_clump_thickness, "\n")

#8d.2
mean_marginal_adhesion <- mean(breastcancer_wisconsin$marginal_adhesion)
sd_marginal_adhesion <- sd(breastcancer_wisconsin$marginal_adhesion)
cv_marginal_adhesion <- (sd_marginal_adhesion / mean_marginal_adhesion) * 100
cat("Coefficient of Variation for Marginal Adhesion:", cv_marginal_adhesion, "%\n")

#8d.3
num_null_bare_nuclei <- sum(is.na(breastcancer_wisconsin$bare_nucleoli))
cat("Number of null values for Bare Nuclei:", num_null_bare_nuclei, "\n")

#8d.4
mean_bland_chromatin <- mean(breastcancer_wisconsin$bland_chromatin, na.rm = TRUE)
sd_bland_chromatin <- sd(breastcancer_wisconsin$bland_chromatin, na.rm = TRUE)
cat("Mean for Bland Chromatin:", mean_bland_chromatin, "\n")
cat("Standard Deviation for Bland Chromatin:", sd_bland_chromatin, "\n")

#8d.5
mean_value <- mean(breastcancer_wisconsin$shape_uniformity, na.rm = TRUE)
se <- sd(breastcancer_wisconsin$shape_uniformity, na.rm = TRUE) / sqrt(length(breastcancer_wisconsin$shape_uniformity))
confidence_level <- 0.95

margin_of_error <- qt((1 + confidence_level) / 2, df = length(breastcancer_wisconsin$shape_uniformity) - 1) * se

confidence_interval <- c(mean_value - margin_of_error, mean_value + margin_of_error)
cat("Confidence Interval (", confidence_level * 100, "%) :", confidence_interval, "\n")

#8d
attributes <- names(breastcancer_wisconsin)
attributes

#8e
malignant_count <- sum(breastcancer_wisconsin$class == 4)
malignant_percentage <- (malignant_count / nrow(breastcancer_wisconsin)) * 100
cat("Percentage of respondents who are malignant:", malignant_percentage, "%\n")

#9
install.packages("AppliedPredictiveModeling")
library("AppliedPredictiveModeling")
library(readr)
abalone <- read_csv("/cloud/project/RWorksheet#6/abalone.csv")
head(abalone)
summary(abalone)