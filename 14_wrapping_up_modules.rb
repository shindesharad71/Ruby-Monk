module Foo
  def self.extended(base)
    puts "Class #{base} has been extended with module #{self} !"
  end
end

class Bar
  extend Foo
end

module Weather
  def self.will_it_rain_on(date)
    "it depends"
  end
end

puts Weather.will_it_rain_on(Date.today)

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
