def scope_the_scope
  on_the_inside = "oh. hi, friends."
  puts "from the inside: #{defined?(on_the_inside).inspect}"
end

scope_the_scope
puts "from the outside: #{defined?(on_the_inside).inspect}"
