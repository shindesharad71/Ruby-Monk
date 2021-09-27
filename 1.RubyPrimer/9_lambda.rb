# Sample lambda function
l = -> { 'Do or do not' }
puts l.call

l = lambda do |string|
  if string == 'try'
    return "There's no such thing"
  else
    return 'Do or do not.'
  end
end
puts l.call('try')

Increment = ->(number) { number + 1 }
puts Increment.call(3)
