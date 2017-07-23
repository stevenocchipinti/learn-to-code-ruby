################################################################################
#
#                             Calculator Exercise
#                             -------------------
#
#
# This file contains a collection of functions that are useful for calculating
# things like the area of a shape or converting between units.
#
# This exercise is broken into two parts:
#   1. Some functions: These have the logic of the calculations
#   2. Tests: These will form the basis of the exercises
#
# NOTE: ASK YOUR COACH ABOUT TEST DRIVEN DEVELOPMENT (TDD)
#
# You will notice that when you run this program, it will raise an error
# because the tests are not passing. You will need to modify the code in the
# functions to make the tests pass.
#
# Once the tests are passing, you can uncomment the next paragraph of tests to
# work on the next exercise, these tests will also fail and the errors will
# guide you to build the next feature.
#
################################################################################


def area_of_rectangle(width, height)
  width * height
end

def area_of_circle(radius)
  Math::PI * (radius * radius)
end


################################################################################
#
# Exercises / tests
#
################################################################################

require 'test/unit'
extend Test::Unit::Assertions

# ------------------------------------------------------------------------------
# 1. Implement the area_of_rectangle function
# ------------------------------------------------------------------------------

area = area_of_rectangle 10, 20
assert_equal area, 200


# ------------------------------------------------------------------------------
# 2. Implement a function that calculates the area of a circle.
# Remember the area of the circle is: πr² (pi * the radius squared)
# Note: Ruby can give you the value of pi with following code:
#   Math::PI
# ------------------------------------------------------------------------------

area = area_of_circle 10
assert_equal area, 314.1592653589793


# ------------------------------------------------------------------------------
# 3. Implement a function that calculates the volume of a cylinder. While
# writing this function, be sure to re-use the area_of_circle function you wrote
# last time. This new volume_of_cylinder function can call the area_of_circle
# function.
# Remember the volume of a cylinder is: πr²h (area * height)
# ------------------------------------------------------------------------------

# area = volume_of_cylinder 10, 20
# assert_equal area, 6283.185307179587


# ------------------------------------------------------------------------------
# 4. Instead of the volume_of_cylinder function taking two numbers as input,
# make a new version of it that takes a hash of values like this:
#   { radius: 10, height: 20 }
# ------------------------------------------------------------------------------

# area = volume_of_cylinder_from_hash radius: 10, height: 20
# assert_equal area, 6283.185307179587


# ------------------------------------------------------------------------------

puts
puts "  Congratulations! Everything seems to be working :)"
puts
