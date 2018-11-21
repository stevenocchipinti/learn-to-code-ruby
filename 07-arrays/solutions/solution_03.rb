################################################################################
#
#                                    Arrays
#                                    ------
#
# Pre-requisite knowledge:
#
#   - Data types: arrays, strings
#   - Loops (each, map)
#   - String methods
#
# Exercises:
#
#   1. Print a message announcing that the first person in the list is "The
#   Boss", for example:
#
#     The big boss is: claire clark
#
#
#   2. Change that message to use correct capitalisation, for example:
#
#     The big boss is: Claire Clark
#
#
#   3. Print each of the names, for example:
#
#      - claire clark
#      - bob baker
#      - alice armstrong
#
#
#   4. Print each of the names in the format below:
#
#      - Clark, Claire
#      - Baker, Bob
#      - Armstrong, Alice
#
#
#   5. Print each of the names sorted alphabetically, for example:
#
#      - Armstrong, Alice
#      - Baker, Bob
#      - Clark, Claire
#
#
#   6. Add 'daniel dunn' to the list (dynamically, before printing the list)
#
#   7. The boss should have an asterisk next to their name in the list, for
#   example:
#
#      - Armstrong, Alice
#      - Baker, Bob
#      - * Clark, Claire
#      - Dunn, Daniel
#
################################################################################

# NOTE: Don't modify this line of code directly:
names = ["claire clark", "bob baker", "alice armstrong"]

boss = names[0]
first = boss.split.first.capitalize
last = boss.split.last.capitalize

puts "The big boss is: #{first} #{last}"

names.each do |name|
  puts " - #{name}"
end