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

# New way to create Hash

def artax
    a = [:punch, 0]
    b = [:kick, 72]
    c = [:stops_bullets_with_hands, false]
    key_value_pairs = [a, b, c]
    Hash[key_value_pairs]
end
p artax