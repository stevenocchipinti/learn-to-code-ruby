# Data types
# ----------

numbers = [1,2,3,4,5]
bools = [true, false]
mixed = [1, "two", true]
two_dimentional = [
  [1, 2, 3],
  [4, 5, 6]
]



# Random Access
# -------------

# BAD
# food_1 = "Apples"
# food_2 = "Bananas"
# food_3 - "Coconuts"

# GOOD
foods = ["Apples", "Bananas", "Coconuts"]
#           0          1           2

puts "I want to eat some #{foods[1]}"
# or
puts "I want to eat some #{foods.last}"


# Spliting a string by spaces
# ---------------------------

string_of_foods = "Apples Bananas Coconuts"
array_of_foods = string_of_foods.split()
puts "I want to eat some #{array_of_foods[1]}"
puts


# Joining an array
# ----------------

puts "Here are the foods I like: #{foods.join(", ")}"
puts


# Looping over an array
# ---------------------


puts "Here is the list of foods:"
foods.each do |food|
  puts " - #{food}"
end


# Adding a new item to an array
# -----------------------------

puts
puts "Adding a new food"
foods.push("Durian")
puts


# Mapping over an array
# ---------------------

upcase_foods = foods.map do |food|
  food.upcase
end

puts "Here is the new list of uppercased foods:"
upcase_foods.each do |food|
  puts " - #{food}"
end



# Numbers
# -------

puts "Here are some numbers:"
numbers = [1, 2, 3, 4, 5]
puts numbers.join(", ")
puts

puts "Here are the numbers squared:"
squared_numbers = numbers.map do |n|
  n * n
end
puts squared_numbers.join(", ")
puts

