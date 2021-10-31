# Sample Yield Code
def calculation(a, b)
  yield(a, b)
end

puts calculation(5, 6) { |a, b| a + b }
puts calculation(5, 6) { |a, b| a - b }

# Performance
require 'benchmark'

def calculation_with_explicit_block_passing(a, b, operation)
  operation.call(a, b)
end

def calculation_with_implicit_block_passing(a, b)
  yield(a, b)
end

Benchmark.bmbm(10) do |report|
  report.report('explicit') do
    addition = ->(a, b) { a + b }
    1000.times { calculation_with_explicit_block_passing(5, 5, addition) }
  end

  report.report('implicit') do
    1000.times { calculation_with_implicit_block_passing(5, 5) { |a, b| a + b } }
  end
end
