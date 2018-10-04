number = 5
# Uncomment this once you've completed exercises 1 and 2
# number = rand(10)

while true do
  puts "Try to guess the number!"
  print "Guess: "
  input = gets.chomp
  guess = input.to_i

  if input == "exit"
    puts "Bye!"
    exit
  elsif number == guess
    puts "Well done! You got it right!"
    exit
  elsif number > guess
    puts "Nope... higher"
  elsif number < guess
    puts "Nope... lower"
  end
end
