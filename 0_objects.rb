# Everything is an object
puts self

# Talking to objects
num = 2
puts num.even?

# Looking up for methods
puts num.methods

# Invoking methods with arguments
arr = ['apple', 'oranges', 'potato', 'salad']
puts arr.index('potato')

# Syntactical sugar and special methods
puts arr[1]

# Strings
my_str = "September"
puts "Length of string " + my_str + " is " + my_str.length.to_s

# String Interpolation
puts "Current month is #{my_str}"

# Search in a string
str = "[Luke:] I can’t believe it. [Yoda:] That is why you fail."
puts str.include?("Yoda")

# Starts with
puts str.start_with?("[Luke")