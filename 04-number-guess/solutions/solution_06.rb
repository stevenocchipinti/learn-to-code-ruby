number = 5
# Uncomment this once you've completed exercises 1 and 2
# number = rand(10)

guesses = 0

while true do
  puts "Try to guess the number!"
  print "Guess: "
  input = gets.chomp
  guess = input.to_i

  if input == "exit"
    puts "You had #{guesses} guess(es). Bye!"
    exit
  end

  guesses += 1

  if number == guess
    puts "Well done! You got it right in #{guesses} guess(es)!"
    exit
  elsif number > guess
    puts "Nope... higher"
  elsif number < guess
    puts "Nope... lower"
  end
end
