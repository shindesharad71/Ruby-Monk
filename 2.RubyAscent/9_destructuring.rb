zen, life = [42, 43]

array = [42, 43]

zen = array[0]
life = array.at(1)

puts zen
puts life

zen, john = [[4, 8], [3, 16], [23, 42, 15]]

p zen
p john

def zen
  [42, true]
end

x, y = zen

puts x
puts y

[[1, 2, 3, 4], [42, 43]].each { |a, b| puts "#{a} #{b}" }

[[1, 2, 3, 4], [42, 43]].each do |element|
  a, b = element
  puts "#{a} #{b}"
end

def compute(ary)
  return nil unless ary
  ary.map { |(a, b)| !b.nil? ? a + b : a }
end

ary = [[4, 8], [15, 16], [23, 42]]
puts Hash[*ary.flatten]

def zen(*args)
  [args.first, args.last]
end

p zen(42, 43, 44, 45, 46)

def median(*list)
  return nil if list.empty?

  mid = list.length / 2
  slist = list.sort

  if slist.length.odd?
    slist[mid]
  else
    (slist[mid - 1] + slist[mid]).to_f / 2.0
  end
end
