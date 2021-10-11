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

def start_summer
  raise Exception.new("overheated!")
end

begin
  start_summer
rescue Exception
  puts "It's cool in here, boy. For the rest of the summer, we'll live in the refrigerator."
end
