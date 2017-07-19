################################################################################
#
#                        Number Guessing Game Exercises
#                        ------------------------------
#
#
# Exercises:
#
#   1. When the player guesses correctly, show a message saying:
#        "Well done! You got it right!"
#      and when the player guesses incorrectly, show a message saying:
#        "Oops, nice try"
#
#   2. When the player guesses a smaller number, show a message saying:
#        "Nope.... higher"
#      and when the player guesses a larger number, show a message saying:
#        "Nope.... lower"
#
#   3. Let the player have 5 guesses
#
#   4. Let the player have unlimited number of guesses, make sure they have the
#   "Guess: " prompt everytime
#
#   5. Allow the user to type "exit" to quit the program
#
#   6. When the game has ended, show the user how many guesses it took them
#   (before they won or quit the game)
#
#   7. Make this a single player game by starting with a random number between
#   0-20 that the player has to try to guess - don't forget to change the
#   messages to the user to make that clear
#
################################################################################

require 'io/console'

print "Player 1, pick a number: "
number = STDIN.noecho(&:gets)

puts
puts "Player 2, try to guess the number!"
print "Guess: "
guess = gets

puts number == guess
