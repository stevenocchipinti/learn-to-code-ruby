number = 5
# Uncomment this once you've completed exercises 1 and 2
# number = rand(10)

5.times do
  puts "Try to guess the number!"
  print "Guess: "
  guess = gets.chomp.to_i

  if number == guess
    puts "Well done! You got it right!"
    exit
  elsif number > guess
    puts "Nope... higher"
  elsif number < guess
    puts "Nope... lower"
  end
end
