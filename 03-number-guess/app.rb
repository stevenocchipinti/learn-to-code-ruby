################################################################################
#
#                             Number Guessing Game
#                             --------------------
#
# Pre-requisite knowledge:
#
#   - Variables
#   - Getting user input, newline characters
#   - Comparison operators (`==`, `<=`, `>=`, etc.)
#   - Data structures (arrays and hashes)
#   - Control flow (`if`, `elsif`, `case`, etc.)
#   - Loops (finite, infinite and loop control flow like: `break`, `continue`)
#   - Incrementing a number
#   - Generating a random number
#   - Converting between data types (`int` and `string`)
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

# This line is needed for the `noecho` trick, explained below
require 'io/console'

print "Player 1, pick a number: "
number = STDIN.noecho(&:gets).chomp.to_i

# NOTE: The above line uses `STDIN.noecho` and is basically the same as:
#   number = gets
# except the characters that the user types in are hidden for extra security

puts
puts "Player 2, try to guess the number!"
print "Guess: "
guess = gets.chomp.to_i

puts number == guess
