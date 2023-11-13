#1. Generate a sequence from -5 to 5.
#output: [1] 1 2 3 4 5 6 7 8 9 10 11
#If i use the : operator, the output will be 1 to 11, but if i change:

sequence <- seq(-5:5)
sequence

#b. What will be the value of x?
#Value of will be a sequence from 1 to 7
x <- 1:7
x

#2. Create a vector using seq() function.
#Output: [1] 1.0 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0
#The numbers are sequence but in 0.2 interval.
seq(1, 3, by=0.2)

#a.
Vec<- seq(1,3,0.2)
Vec

#3. Create a vector with the age of the factory workers.

age <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27,
         22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35,
         24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26,
         18.)

#a Accessing the 3rd element. The third element is 22.

element_3 <- age[3]
element_3

#b. Access 2nd and 4th element. The second element is 28 while the 4th element 36.

element_2 <- age[2]
element_4 <- age [4]
element_2
element_4

#c. Access all but the 4th and 12th element is not included.
# Element 4 is 36 while element 12 is 31.
new_age <- age[-4]
new_age

new_age2 <- age[-12]
new_age2

#4. Create a vector then named the vector, names(x)
#Output: first second third
#       3    0    9
names <- c("first"=3, "second"=0, "third"=9)
names

#Output: first third
#    3  9
names[c("first", "third")]

#5. Create a sequence x from -3:2.
#Output: [1] 1 2 3 4 5 6 
sequence <- seq(-3:2)
sequence

#Output: 
#a. Modify 2nd element and change it into 0.
sequence[2] <- 0
sequence

#6. a. Create a data frame for month, price per liter (php) and purchase and purchase-quantity (liter). Write the R scripts and its output.
diesel <- data.frame(
  month = c("Jan","Feb","March","April","May","June"),
  price_per_liter = c(52.50,57.25,60.00,65.00,74.25,54.00),
  purchase_quantity = c(25,30,40,50,10,45)

)
diesel

#b. Calculate the weighted mean of fuel expenditure
average_expenditure <- weighted.mean(diesel$price_per_liter, diesel$purchase_quantity)

#Print the average fuel expenditure
average_expenditure

#7. a. Create a vector data with 7 elements.

data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers),
          sd(rivers), min(rivers), max(rivers))
data

#b. The results are:[1]    141.0000  83357.0000    591.1844    425.0000 243908.4086 [6]    493.8708    135.0000   3710.0000

#8. Create vectors according to the above table.
#a.
celebrities <- c("Tom Cruise","Rolling Stone","Oprah Winfrey","U2","Tiger Woods","Steven Spielberg", "Howard Stern", "50 Cent", "Cast of the Sopranos", "Dan Brown", "Bruce Springsteen", "Donald Trump", "Muhammad Ali", "Paul McCartney", "George Lucas", "Elthon John", "David Letterman", "Phil Mickelson", "J.K. Rowling", "Bradd Pitt", "Peter Jackson", "Dr. Phil McGraw", "Jay Lenon", "Celine Dion", "Kobe Bryant")
PowerRanking <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25)
annual_pay <- c(67, 90, 225, 110, 90, 332, 302, 41, 52, 88, 55, 44, 55, 40, 233, 34, 40, 47, 75, 25, 39, 45, 32, 40, 31)

#b. Modify the power ranking and pay of J.K. Rowling. Change power ranking to 15 and pay to 90.

PowerRanking[19] <- 15
annual_pay[19] <- 90

#Print the modified vectors
print(celebrities)
print(PowerRanking)
print(annual_pay)

#c Create an excel file from the table above.

library(readr)
PowerRanking <- read_csv("/cloud/project/R-Worksheets1-SOLDEVILLA/PowerRanking.csv", show_col_types = FALSE)
PowerRanking

#d subset_data <- PowerRanking[10:20, ]
save(subset_data, file = "Ranks.RData")
print(subset_data)

subset_data <- PowerRanking[10:20, ]
save(subset_data, file = "Ranks.RData")
print(subset_data)

#8. Create vectors according to the above table.
#a.
power_ranking <- c(1:25)
celebtrity_names <-c("Tom Cruise", "Rolling Stone", "Oprah Winfrey", "U2", "Tiger Woods", "Steven Spielberg", "Howard Stern", "50 Cent", 
                     "Cast of Sopranos", "Dan Brown", "Bruce Springsteen", "Donald Trump", "Muhammad Ali", "Paul McCartney", "George Lucas","Elton John", "David Letterman", "Phil Mickelson", "J.K Rowling", "Bradd Pitt", "Peter Jackson", "Dr. Phil McGraw", "Jay   Lenon", "Celine Dion", "Kobe Bryant" )
pay <- c(67,90,225,110,90,332,302,41,52,88,55,44,55,40,233,34,40,47,75,25,39,45,32,40,31)
PowerRanking <- data.frame(power_ranking, celebtrity_names, pay)
PowerRanking

#b. Modify the power ranking and pay of J.K. Rowling. Change power ranking to 15 and pay to 90.

power_ranking[19] <- 15
power_ranking 
pay[19] <- 90
pay

#c Create an excel file from the table above.

library(readr)
PowerRanking <- read_csv("/cloud/project/R-Worksheets1-SOLDEVILLA/PowerRanking.csv", show_col_types = FALSE)
PowerRanking

#d
subset_data <- PowerRanking[10:20, ]
save(subset_data, file = "Ranks.RData")
print(subset_data)

#9.
#a
install.packages("readxl")
library(readxl)
hotelsVienna <- read_excel("hotels-vienna.xlsx")
# View(hotelsVienna)
hotelsVienna

#b
dimensions <- dim(hotelsVienna)
dimensions


#c
selected_columns <- hotelsVienna[, c("country", "neighbourhood", "price", "stars", "accommodation_type", "rating")]
head(selected_columns, n = nrow(selected_columns))

#d
save(selected_columns, file = "new.RData")

#e
load("new.RData")
head(selected_columns)
tail(selected_columns)

#10.
#a
Vegetables <- list("carrots","potato","eggplant","potato", "broccoli", "tomato", "onion", "seaweed","cabbage","corn")
Vegetables

#b
vegetablesList <- append(Vegetables,c("spinach","green beans"),after=10)
vegetablesList

#c
Veggies <- append(vegetablesList,c("Cauliflower","Sprouts","Kale","Sweet Potatos"),after=5)
Veggies

#d
NewVeggies<- Veggies[c(-5,-10,-15)]
NewVeggies

length(NewVeggies)







