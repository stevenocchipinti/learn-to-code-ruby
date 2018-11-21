number = 5
# Uncomment this once you've completed exercises 1 and 2
# number = rand(10)

puts "Try to guess the number!"
print "Guess: "
guess = gets.chomp.to_i

if number == guess
  puts "Well done! You got it right!"
else
  puts "Oops, nice try"
end
