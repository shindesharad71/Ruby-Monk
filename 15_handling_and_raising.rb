def extract_first_name(name)
  first = name.split(" ").first
  puts "extracted first name #{first}"
  first
end

def casual_names(names)
  casual = names.map { |name| extract_first_name(name) }
  puts "captured casual names #{casual}"
  casual
end

puts casual_names(["Yehuda Katz", nil, "Why the lucky stiff"])
puts "I bet you'll never see this."
