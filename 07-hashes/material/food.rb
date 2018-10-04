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


# Strings
# -------

foods = ["Apple", "Banana", "Coconut"]

puts "Here is the list of foods:"
foods.each do |food|
  puts " - #{food}"
end

puts
puts "Adding a new food"
foods.push("Durian")
puts

upcase_foods = foods.map do |food|
  food.upcase
end

puts "Here is the new list of uppercased foods:"
upcase_foods.each do |food|
  puts " - #{food}"
end
