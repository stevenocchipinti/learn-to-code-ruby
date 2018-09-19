################################################################################
#
#                                  Functions
#                                  ---------
#
# Pre-requisite knowledge:
#
#   - Functions
#   - Data types: Integer and Float arithmetic
#   - Integer methods (round)
#   - String interpolation
#   - Return values
#   - Celsius = (Fahrenheit - 32) / 1.8
#
# Exercises:
#
#   1. Fix the bug (999 should be 32)
#
#   2. Extract a fahrenheit_to_celcius function
#
#   3. Round off the decimals
#
#
################################################################################


def fahrenheit_to_celsius(f)
  return ((f - 32) / 1.8).round()
end


puts "320°F is actually #{fahrenheit_to_celsius(320)}°C"
puts "330°F is actually #{fahrenheit_to_celsius(330)}°C"
puts "340°F is actually #{fahrenheit_to_celsius(340)}°C"
puts "350°F is actually #{fahrenheit_to_celsius(350)}°C"
puts "360°F is actually #{fahrenheit_to_celsius(360)}°C"
puts "370°F is actually #{fahrenheit_to_celsius(370)}°C"
puts "380°F is actually #{fahrenheit_to_celsius(380)}°C"
puts "390°F is actually #{fahrenheit_to_celsius(390)}°C"
puts "400°F is actually #{fahrenheit_to_celsius(400)}°C"
