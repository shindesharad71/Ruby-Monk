# Create array
arr = []
arr1 = Array.new

# Array with multiple elements with different data types
arr = [1, 'two', 3, 4.0]

# Read elements from array
puts arr[1]

# Insert elements into array
arr << 5

# Print array
puts arr

# Array operations
puts [1, 2, 3, 4, 5].map { |i| i + 1 }