################################################################################
#
#                                    Hashes
#                                    ------
#
# Pre-requisite knowledge:
#
#   - Hashes
#   - Loops (each)
#   - Control flow (`if`, etc.)
#   - Incrementing a counter
#
# Exercises:
#
#   Unlike previous exercises, these one's don't necessarily built upon each
#   other so feel free to do each of these separately.
#
#   1. What is the last_name of employee e0003?
#
#   2. Who's favourite color is blue?
#
#   3. How many employees are over 30?
#
#   4. Print the full name of each employee in a list
#
#   5. Write a greeting for each employee using their preferred_language
#
################################################################################

greetings = {
  "English" => "Hello",
  "Italian" => "Ciao",
  "Japanese" => "Kon'nichiwa",
  "German" => "Hallo"
}


employee_database = {
  "e0001" => {
    "first_name" => "Alice",
    "last_name" => "Armstrong",
    "phone" => "0415 111 111",
    "age" => 33,
    "favourite_color" => "blue",
    "preferred_language" => "English"
  },
  "e0002" => {
    "first_name" => "Bob",
    "last_name" => "Baker",
    "phone" => "0415 222 222",
    "age" => 29,
    "favourite_color" => "red",
    "preferred_language" => "English"
  },
  "e0003" => {
    "first_name" => "Claire",
    "last_name" => "Clark",
    "phone" => "0415 333 333",
    "age" => 42,
    "favourite_color" => "green",
    "preferred_language" => "English"
  },
  "e0004" => {
    "first_name" => "Daniel",
    "last_name" => "Dunn",
    "phone" => "0415 444 444",
    "age" => 41,
    "favourite_color" => "purple",
    "preferred_language" => "English"
  },
  "e0005" => {
    "first_name" => "Erin",
    "last_name" => "Ellerson",
    "phone" => "0415 555 555",
    "age" => 27,
    "favourite_color" => "yellow",
    "preferred_language" => "English"
  },
  "e0006" => {
    "first_name" => "Fabio",
    "last_name" => "Ferrari",
    "phone" => "0415 666 666",
    "age" => 50,
    "favourite_color" => "blue",
    "preferred_language" => "Italian"
  },
  "e0007" => {
    "first_name" => "Genjo",
    "last_name" => "Goya",
    "phone" => "0415 777 777",
    "age" => 38,
    "favourite_color" => "orange",
    "preferred_language" => "Japanese"
  },
  "e0008" => {
    "first_name" => "Halfrid",
    "last_name" => "Haas",
    "phone" => "0415 888 888",
    "age" => 32,
    "favourite_color" => "pink",
    "preferred_language" => "German"
  }
}

count = 0

employee_database.each do |id, data|
  if data["age"] > 30
    count += 1
  end
end

puts "#{count} people are over 30"
