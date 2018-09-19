
def print_my_foods(x)
 x.each do |y|
   puts "I like #{y}"
 end
end

foods = ["Apple", "Banana", "Coconut"]
foods.push("Durian")

upcase_foods = foods.map { |food|
  food.upcase
}

# HERE

print_my_foods(foods)
print_my_foods(upcase_foods)
