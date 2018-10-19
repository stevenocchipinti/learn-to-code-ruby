# Simple hashes
# -------------

phone_book = {
  "Alice" => "0415 111 111",
  "Bob" => "0415 222 222",
  "Claire" => "0415 333 333",
  "Daniel" => "0415 444 444"
}

print "Alice's phone number is: "
puts phone_book["Alice"]

print "Daniel's phone number is: "
puts phone_book["Daniel"]


# Adding a new item to a hash
# ---------------------------

phone_book["Erin Ellerson"] = "0415 555 555"


# Looping over a hash
# -------------------

puts
phone_book.each do |key, value|
  puts "Name: #{key}"
  puts "Value: #{value}"
end
