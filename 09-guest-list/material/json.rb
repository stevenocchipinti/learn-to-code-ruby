# JSON stands for "JavaScript Object Notation"

# This enables ruby to understand JSON (and provide the JSON functions)
require 'json'


# This is not an array, this is a JSON string
# When we parse it, we get a real ruby hash back
json1 = '[1, 2, 3]'
p JSON.parse(json1)


# This is not a hash, this is a JSON string
# When we parse it, we get a real ruby hash back
json2 = '{ "key": "value" }'
p JSON.parse(json2)
