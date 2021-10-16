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

def quoted_string(to_be_quoted)
  "Suuuure. You were just \"#{to_be_quoted}\"."
end

def multi_line_string(*lines)
  "Here are your lines!\n\n#{lines.join("\n")}"
end

def big_q_string(numerator, denominator)
  %Q[This %Q syntax is the ugliest one.
#{numerator} out of #{denominator} "dentists" agree.]
end

def repetitive_array_of_strings
  ["Wow,", "this", "is", "a", "pretty", "long", "list", "of", "words", "and", "it", "took", "me", "a", "long", "time", "to", "type", "because", "of", "all", "those", "darn", "quote", "characters.", "Geez."]
end

def array_of_words_literal
  %w[With this double-u shorthand it wasn't very hard at all to type out this list of words. Heck, I was even able to use double-quotes like "these"!]
end
