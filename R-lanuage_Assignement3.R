# Function to convert Celsius to Fahrenheit
celsius_to_fahrenheit <- function(celsius) {
  fahrenheit <- (celsius * 9/5) + 32
  return(fahrenheit)
}

# Read Celsius temperature from the user
celsius <- as.numeric(readline(prompt = "Enter temperature in Celsius: "))

# Convert to Fahrenheit
fahrenheit <- celsius_to_fahrenheit(celsius)

# Print the result
cat(celsius, "Celsius is equivalent to", fahrenheit, "Fahrenheit\n")
47



# Function to calculate the area of the circle
calculate_area <- function(radius) {
  area <- pi * radius^2
  return(area)
}

# Function to calculate the perimeter (circumference) of the circle
calculate_perimeter <- function(radius) {
  perimeter <- 2 * pi * radius
  return(perimeter)
}

# Read radius from the user
radius <- as.numeric(readline(prompt = "Enter the radius of the circle: "))

# Calculate area and perimeter
area <- calculate_area(radius)
perimeter <- calculate_perimeter(radius)

# Print the results
cat("For a circle with radius", radius, ":\n")
cat("Area:", area, "\n")
cat("Perimeter:", perimeter, "\n")


# Function to calculate the final amount after adding interest
calculate_final_amount <- function(amount, interest_rate) {
  interest <- (amount * interest_rate) / 100
  final_amount <- amount + interest
  return(final_amount)
}

# Read the original amount from the user
amount <- as.numeric(readline(prompt = "Enter the original amount: "))

# Read the percentage of interest from the user
interest_rate <- as.numeric(readline(prompt = "Enter the percentage of interest: "))

# Calculate the final amount
final_amount <- calculate_final_amount(amount, interest_rate)

# Print the final amount
cat("The final amount after adding", interest_rate, "% interest is:", final_amount, "\n")


# Function to convert meters to centimeters
convert_to_centimeters <- function(meters) {
  centimeters <- meters * 100
  return(centimeters)
}

# Function to convert meters to inches
convert_to_inches <- function(meters) {
  inches <- meters * 39.3701
  return(inches)
}

# Function to convert meters to yards
convert_to_yards <- function(meters) {
  yards <- meters * 1.09361
  return(yards)
}

# Read the distance in meters from the user
meters <- as.numeric(readline(prompt = "Enter the distance in meters: "))

# Convert to centimeters, inches, and yards
centimeters <- convert_to_centimeters(meters)
inches <- convert_to_inches(meters)
yards <- convert_to_yards(meters)

# Print the results
cat(meters, "meters is equivalent to:\n")
cat(centimeters, "centimeters\n")
cat(inches, "inches\n")
cat(yards, "yards\n")



Write a Python program to calculate profit or loss. Input is selling cost and actual
cost of a product using R.



def calculate_profit_loss(selling_costs, actual_costs):
 ##Calculates the profit or loss for a list of selling and actual costs.


if len(selling_costs) != len(actual_costs):
  raise ValueError("Selling costs and actual costs must have the same length.")

profit_loss = []
for selling_cost, actual_cost in zip(selling_costs, actual_costs):
  profit_loss.append(selling_cost - actual_cost)

return profit_loss

# Example usage
selling_costs = [100, 150, 200]
actual_costs = [80, 120, 180]

profit_loss = calculate_profit_loss(selling_costs, actual_costs)

print("Profit/Loss:")
print(profit_loss)

--------------------------------------------------------------------------------------
  Write a program to input basic salary and find output of gross salary using
following:
  DA = 75% of basic
HRA = 20% of basic
Conditions:
  Basic < 10000 : gross = da + basic
Basic >= 10000 and < 20000 : gross = da + basic + 50% of hra
Basic >= 20000 : gross = basic + da + hra
Sample: Input and Output
5000 : 3750 + 5000 = 8750
12000 : 9000 + 12000 + 1200 = 22200
24000 : 18000 + 24000 + 4800 = 46800  
  
  
  
  

def calculate_gross_salary(basic_salary):
  ##Calculates the gross salary based on the given basic salary.

Args:
basic_salary: The basic salary.

Returns:
The gross salary.###

da = 0.75 * basic_salary
hra = 0.20 * basic_salary

if basic_salary < 10000:
  gross_salary = da + basic_salary
elif basic_salary >= 10000 and basic_salary < 20000:
  gross_salary = da + basic_salary + 0.5 * hra
else:
  gross_salary = basic_salary + da + hra

return gross_salary

# Example usage
basic_salary = int(input("Enter basic salary: "))
gross_salary = calculate_gross_salary(basic_salary)
print("Gross salary:", gross_salary)


--------------------------------------------------------------------------------------------------------
  Write a program to read a number from user and find the factorial of the number
using R.
Example: Factorial for 5 = 5 x 4 x 3 x 2 x 1 = 120
  
  
  
  
  def factorial(n):
  """Calculates the factorial of a given number without using any libraries.

  Args:
    n: The number for which to calculate the factorial.

  Returns:
    The factorial of the number.
  """

if n < 0:
  raise ValueError("Factorial is not defined for negative numbers.")
elif n == 0:
  return 1
else:
  result = 1
for i in range(1, n + 1):
  result *= i
return result

# Example usage
number = int(input("Enter a number: "))
factorial_result = factorial(number)
print("Factorial of", number, "is:", factorial_result)  
  
--------------------------------------------------------------------------------------------------------

  Write a program to read num1 and num2 from keyboard and find addition of all
number between that range using R.  
  
  
  
  def sum_of_numbers(num1, num2):
  """Calculates the sum of all numbers between num1 and num2.

Args:
num1: The starting number.
num2: The ending number.

Returns:
The sum of the numbers.
"""

if num1 > num2:
  num1, num2 = num2, num1

total = 0
for num in range(num1, num2 + 1):
  total += num
return total

# Example usage
num1 = int(input("Enter the first number: "))
num2 = int(input("Enter the second number: "))
result = sum_of_numbers(num1, num2)
print("The sum of numbers between", num1, "and", num2, "is:", result)

----------------------------------------------------------------------------------------
  
  Write a program to read a number from user. Create and use a user defined
function to check whether it is odd or even using R?  
  
  
  def is_even(number):
  """Checks if a given number is even.

  Args:
    number: The number to check.

  Returns:
    True if the number is even, False otherwise.
  """

return number % 2 == 0

# Example usage
number = int(input("Enter a number: "))
if is_even(number):
  print(number, "is even")
else:
  print(number, "is odd")  