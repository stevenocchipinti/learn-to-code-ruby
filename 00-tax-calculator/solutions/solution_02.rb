################################################################################
#
#                       Getting Started: Tax Calculator
#                       -------------------------------
#
# Pre-requisite knowledge:
#
#   - Data types: String, Integer, Float
#   - `print`, `puts` and `p`
#   - Basic arithmetic: +, -, *, /, ()
#   - Variables, constants and return values
#   - String interpolation
#   - Object methods
#   - Getting user input, newline characters
#
# Exercises:
#
#   1. Create a CONSTANT to store the value of a "tax rate"
#
#   2. Create a variable to store the price
#
#   3. Display a message to the user with the price including tax
#
#   4. Instead of "hard coding" the price, modify your program so that it asks
#   the user to provide the price. The program should then calculate and display
#   the price including tax just like it has been doing.
#
#
# Extension pre-requisite knowledge:
#
#   - Data types: Boolean
#   - Control flow: if statements
#   - Basic comparison operators: <, <=, >, >=, ==, !=
#
# Extension Exercises:
#
#   5. Add a non-taxable shipping cost of $10 to the calculation and display
#   everything to the user (price, tax, shipping, total)
#
#   6. If the price (not including tax) is greater than $1000 then shipping is
#   free!
#
################################################################################

TAX_RATE = 0.1
SHIPPING = 10

print "What is the price of the item? "
price = gets.chomp.to_f

tax = price * TAX_RATE

puts
puts "Price     = $#{price}"
puts "Tax       = $#{tax}"
puts "Shipping  = $#{SHIPPING}"
puts
puts "Total     = $#{(price * TAX_RATE) + price + SHIPPING}"
