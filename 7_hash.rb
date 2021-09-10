# Creating Hash
student_ages = { 
    "Jack" => 20,
    "Jill" => 30,
    "Bob" => 25
}

# Fetch values from a Hash
puts student_ages["Jack"]

# Modifying Hash
student_ages["Jill"] = 21

# Iterating over Hash
student_ages.each do |item, value |
    puts "#{item} having value #{value}"
end

# Extracting the keys and values from a Hash
puts student_ages.keys