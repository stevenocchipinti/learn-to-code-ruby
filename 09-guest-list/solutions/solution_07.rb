################################################################################
#
#                                  Guest List
#                                  ----------
#
# This application reads a guest list from an exported JSON file and prints out
# the guests names and ages.
#
# Pre-requisite knowledge:
#
#   - Data structures (arrays and hashes)
#   - Parsing JSON and CSV
#   - Loops (`each`)
#   - Date/Time
#   - Control flow (`if`, `elsif`, `case`, etc.)
#   - Functions
#
# Exercises:
#
#   1. For each guest, print a line of human readable text that describes the
#   guest. For example:
#
#     Lyndia Mericle was born in 1981
#     ...
#
#
#   2. Ignoring month and date, include an age approximation in the text output
#   for each guest. For example:
#
#     Lyndia Mericle is approximately 36 years old
#     ...
#
#
#   3. As this is a program for a night club, only print the people that are
#   over the age of 18 and ignore the people under age - they are not allowed in
#
#
#   4. Instead of ignoring the underage guests, print a message that makes it
#   clear they aren't allowed in. For example:
#
#     Errol Mayr is underage and NOT allowed in
#     ...
#
#
#   5. Instead of the output having a mix of over age and under age guests,
#   print all the over age guests first followed by a blank line, then a list
#   of all the under age guests. For example:
#
#     The following guests ARE allowed in:
#     - Lyndia Mericle is approximately 36 years old
#     - ...
#
#     The following guests are underage and NOT allowed in:
#     - Errol Mayr (age: 10)
#     - ...
#
#   6. Your code probably has some duplication for getting the guests full name
#   (first name + last name), extract this into a function that takes the
#   guest hash as a parameter and returns the properly formatted string
#
#   7. Also extract a function to calculate the age of a guest. This function
#   can take the guest hash as a parameter and return the age
#
#
# Extension exercises:
#
#   8. Change the program to use a CSV file (guests.csv) instead of the JSON
#   file (guests.json)
#
#
################################################################################

require 'json'

file_contents = File.read("guests.json")
data = JSON.parse(file_contents)

def full_name(guest)
  return "#{guest["firstName"]} #{guest["secondName"]}"
end

def age_of(guest)
  return Time.now.year - guest["birthYear"]
end

puts "The following guests ARE allowed in:"
data["guests"].each do |guest|
  if age_of(guest) >= 18
    puts "- #{full_name(guest)} is approximately #{age_of(guest)} years old"
  end
end

puts
puts "The following guests are underage and NOT allowed in:"
data["guests"].each do |guest|
  if age_of(guest) < 18
    puts "- #{full_name(guest)} is underage and NOT allowed in"
  end
end
