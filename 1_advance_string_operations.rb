str = 'Fear is the path to the dark side'

# String split
puts str.split()

# Concatenating Strings
a = "Ruby"
b = "Monk"

puts a + b
puts a.concat(b)

# Replacing a substring
puts "I should look into your problem when I get time".sub('I','We') # first occurrence
puts "I should look into your problem when I get time".gsub('I','We') # all occurrences


# Find a substring using RegEx
puts 'RubyMonk Is Pretty Brilliant'.match(/ ./)