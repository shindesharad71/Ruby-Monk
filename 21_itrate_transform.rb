[4, 8, 15, 16, 23, 42].each_with_index { |e, i| puts "#{e} -- #{i}" }

{ :locke => "4", :hugo => "8" }.each_with_index do |kv, i|
  puts "#{kv} -- #{i}"
end
