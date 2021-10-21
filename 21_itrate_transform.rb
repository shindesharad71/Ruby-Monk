[4, 8, 15, 16, 23, 42].each_with_index { |e, i| puts "#{e} -- #{i}" }

{ :locke => "4", :hugo => "8" }.each_with_index do |kv, i|
  puts "#{kv} -- #{i}"
end

def map_value
  [3, 7, 14, 15, 22, 41].map { |e| e + 1 }
end

p map_value

def hash_keys(hash)
  hash.map { |pair| pair.first }
end

[4, 8, 15, 16, 23, 42].inject(0) do |accumulator, iterated|
  accumulator += iterated
  accumulator
end

def custom_inject(array, default = nil)
  accumulator = default || array[0]

  array.each do |element|
    accumulator = accumulator + element
  end

  accumulator
end

p custom_inject([4, 8, 15, 16, 23, 42], 0)

[4, 8, 15, 16, 23, 42].inject({}) { |a, i| a.update(i => i) }
