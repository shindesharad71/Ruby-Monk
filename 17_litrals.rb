puts [:i, :am, :a, :literal, :array].inspect

def an_array_with_5_elements
  [1, 2, 3, 4, 5]
end

def a_string_longer_than_10_characters
  "abcdefghijklmnopqrstuvwxyz"
end

def a_number_with_a_decimal_place
  3.14
end

def an_array_of_hashes
  [{ :name => "Batman", :power => "I'm Batman." },
   { :name => "SpongeBob", :power => "Optimism" },
   { :name => "Bertrand Russell", :power => "Mathematics" }]
end

def an_array_of_arrays
  [[:i, :am, :an, :inner, :array],
   ["so", "am", "i"],
   ["we're", "not", "even", "all", "the", "same", "size!"]]
end
