(Array.instance_methods - Object.methods).count

puts [4, 8, 15, 16, 23, 42].count
puts [4, 8, 15, 16, 23, 42].size
puts [4, 8, 15, 16, 23, 42].length

puts [42, 8, 15, 16, 23, 42].count(42)
puts ["Jacob", "Alexandra", "Mikhail", "Karl", "Dogen", "Jacob"].count("Jacob")

[4, 8, 15, 16, 23, 42].count { |e| }

puts [4, 8, 15, 16, 23, 42].index(15)
puts [4, 8, 15, 16, 23, 42].index { |e| e % 2 == 0 }

p [4, 8, 15, 16, 23, 42].flatten
p [4, [8], [15], [16, [23, 42]]].flatten

p [nil, 4, nil, 8, 15, 16, nil, 23, 42, nil].compact

def zen(array)
  converted = array.compact.flatten
  converted.index(42) == 5 ? converted.count : nil
end
