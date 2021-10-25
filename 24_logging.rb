def c
  puts "I'm in C. You know who called me?"
  puts caller
end

def b
  c
end

def a
  b
end

a
