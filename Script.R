## Hjemmeoppgaver R-kurs
## Sesjon 2 - Funksjoner og versjonskontroll

## Linn Gjesdal 19.10.19

## Oppgave 2

# 2.1

# We first start by defining two vectors, x and y
x <- c(1, 2, 3, 10)
y <- c(4, 5, 6, 23)

# Now we want to create a function that summarises two numbers

sum_two <- function(x, y) {
  # summarise the two
  x + y
}

sum_two(x, y)

# 2.2

multiply_two <- function(x, y) {
  # multiply the two
  x * y
}

multiply_two(x, y)

# 2.3

kvadrer_x <- function(x) {
  x^2
}

kvadrer_x()

# If we run this we will receive an error message saying that x is not defined.
# This can be solved by inserting "x" within the brackets, such that

kvadrer_x(x)

# This will return squared values for our x vector.
# The reason for this is that x is not defined within the function, and so we must tell the function to retrieve the x vector we defined above.
# This is linked to the different environments: one within the function, and the global environment outside the function.

# 2.4

# cor() shows the correlation between variables
# For this function one must define inputs: either by giving a matrix or a dataframe, or by defining both x and y
# The default method for computing the correlation is the Pearson method, but it is possible to compute Spearman or Kendall coefficients.
# The Pearson correlation coefficient is a linear correlation between x and y.

# 2.5

includes_2 <- function(v, b = 2) {
  # define whether the value b is in the vector v
  b %in% v
}

includes_2(y)
includes_2(x)

# 2.6

# It is a bad idea to name a function mean(), sum() or mtcars() because these are already defined elements in R.
# mean() is a function that returns the mean, whilst sum() summarises.
# mtcars() is a defined data set

# 2.7

# Create a function "er_partall()" where an integer is the input and "TRUE" is returned if the number is an even number
# We know that a number is even if division by two will give a remainder of zero.

is_even <- function(num = as.integer) {
  (num %% 2) == 0
}

is_even(4)
is_even(5)

# It is not necessary to create a function that is is_odd, as an odd input will return FALSE in the is_even function

# 2.8

# if() is a control statement designed to work on a scalar boolean condition.
# ifelse() is used to run certain parts of a function when a given condition is true. As such, ifelse() should be used when creating functions.

# 2.9

# lag_histogram <- function(.data, variabel) {
  
 # .data %>%
  #  ggplot(aes(x = variabel)) +
   # geom_histogram()
#}

## This will not work, as we need to set "variabel" insde {{}}





## Oppgave 3

greeting_day <- function(lubridate::now()) {
  
}


## Oppgave 4

convert_fahr_to_cels <- function(fa) {
  # converting fahrenheit to celsius
  celsius <- (fa - 32) * (5/9)
  return(round(celsius, digits = 0))
}

convert_fahr_to_cels(32)
convert_fahr_to_cels(64)

convert_cels_to_fahr <- function(ce) {
  # converting celsius to fahrenheit
  fahrenheit <- ((ce * (9/5)) + 32)
  return(round(fahrenheit, digits = 0))
}

convert_cels_to_fahr(0)
convert_cels_to_fahr(100)




## Oppgave 5



## Oppgave 6



## Oppgave 7

install.packages("random")

library(random)

password <- function(x) {
  string <- randomStrings(n = 1, len = 10, digits = TRUE, upperalpha = TRUE, loweralpha = TRUE, unique = TRUE, check = TRUE)
  return(string)
  
}

password()



## Oppgave 8


# Part one
# creating a vector with an NA to use for testing purposes
z <- c(1, 2, 3, NA, 4, 5)

count_na <- function(x) {
  # count the number of NA
  sum(is.na(x))
}

count_na(x)
count_na(z)

percentage_na <- function(x) {
  # percentage of NA in the vector
  mean(is.na(x))
}

percentage_na(x)
percentage_na(z)


# Part two - using purrr

library(purrr)

map_df(airquality, function(x) sum(is.na(x)))



df <- airquality %>%
  count_na_df <- purrr::map_df(data = airquality, f = sum(is.na(.)))

df <- airquality %>%
  map_df(~ sum(is.na(.)))

count_na_vector <- purrr::map_df(~ sum(is.na(.)))
