################################################################################
#
#                       Getting Started: Calling Methods
#                       --------------------------------
#
# Pre-requisite knowledge:
#
#   - Objects
#   - Data types: String, Integer, Float
#   - Methods
#   - Return values
#
# For these exercises, do not change the characters in the exercise directly,
# ONLY use methods provided to you by ruby to change the output.
#
# For example, to print the string as uppercase:
#   puts "hello".upcase
# DO NOT change the exercise to make it like this:
#   puts "HELLO"
#
# The documentation for strings is available here:
#   https://ruby-doc.org/core-2.5.0/String.html
#
# The documentation for numbers is available here:
#   https://ruby-doc.org/core-2.5.0/Numeric.html
#
################################################################################


# ------------------------------------------------------------------------------
# 1. Print this string as lowercase, this should print "hello"
# ------------------------------------------------------------------------------
puts "HELLO".downcase


# ------------------------------------------------------------------------------
# 2. Print this string capitalised, this should print "Hello"
# ------------------------------------------------------------------------------
puts "HELLO".capitalize


# ------------------------------------------------------------------------------
# 3. Swap the case of this string, this should print "hELLO"
# ------------------------------------------------------------------------------
puts "Hello".swapcase


# ------------------------------------------------------------------------------
# 4. Reverse this string, this should print "desserts"
# ------------------------------------------------------------------------------
puts "stressed".reverse


# ------------------------------------------------------------------------------
# 4. Remove the duplicate spacing, this should print "Hello world"
# ------------------------------------------------------------------------------
puts "Hello                    world".squeeze


# ------------------------------------------------------------------------------
# 5. Replace the vowels with "*", this should print "H*ll*"
# ------------------------------------------------------------------------------
puts "Hello".tr("iouae", "*")


# ------------------------------------------------------------------------------
# 6. Round this number down, this should print 2
# ------------------------------------------------------------------------------
puts (5.0 / 2).floor


# ------------------------------------------------------------------------------
# 7. Round this number up, this should print 3
# ------------------------------------------------------------------------------
puts (5.0 / 2).ceil


# ------------------------------------------------------------------------------
# 8. Print true if this is an integer (whole number), this should print false
# ------------------------------------------------------------------------------
puts (5.0 / 2).integer?


# ------------------------------------------------------------------------------
# 9. Print true if this is zero, this should print false
# ------------------------------------------------------------------------------
puts (5.0 / 2).zero?
