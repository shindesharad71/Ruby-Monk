begin_time = Time.now
sleep 0.3
end_time = Time.now
puts "Time taken is #{end_time - begin_time}."

require "benchmark"

puts Benchmark.measure { 602214.times { 3.14159 * 6.626068 } }

require "benchmark"

n = 4000
Benchmark.bm do |benchmark|
  benchmark.report do
    a = []; n.times { a = a + [n] }
  end
  benchmark.report do
    a = []; n.times { a << n }
  end
  benchmark.report do
    a = [1..n].map { |number| number }
  end
end
