# CSV stands for "Comma Separated Values"

# This enables ruby to understand CSV (and provide the CSV functions)
require "csv"


# This is not an array, this is a CSV string
csv = "one,two,three
four,five,six"

# When we parse it, we get a real ruby array of arrays
data = CSV.parse(csv)

# This returns the array for the first line
p data[0]
# This returns the first item of the first line
p data[0][0]


# This version of the string has headers as the top row
csv2 = "name,color
Alice,blue
Bob,green"

# When we parse it, we can tell Ruby about the headers
data2 = CSV.parse(csv2, headers: true)

# This returns an object (kind of like a hash) for the first row
p data2[0]
# This returns the "name" column of the first row
p data2[0]["name"]
