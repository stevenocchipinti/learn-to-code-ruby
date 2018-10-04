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
#   3. Print each of the names, sorted alphabetically, in the format below:
#
#      - Armstrong, Alice
#      - Baker, Bob
#      - Clark, Claire
#
#
#   4. Add 'daniel dunn' to the list (dynamically, before printing the list)
#
#   5. The boss should have an asterisk next to their name in the list, for
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
names.push("daniel dunn")


def first_last_format(name)
  return "#{name.split.first.capitalize} #{name.split.last.capitalize}"
end

def last_first_format(name)
  return "#{name.split.last.capitalize}, #{name.split.first.capitalize}"
end


puts "The big boss is: #{first_last_format(names.first)}"
puts

names.sort.each do |name|
  puts " - #{last_first_format(name)}"
end
