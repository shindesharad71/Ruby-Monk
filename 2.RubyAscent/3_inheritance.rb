puts 1.0.is_a?(Float)
puts 1.0.is_a?(Numeric)

# Superclass
puts Float.superclass    # Numeric
puts Numeric.superclass  # Object
puts Object.superclass   # BasicObject

puts (
    Float.instance_methods -
    Object.instance_methods -
    Numeric.instance_methods
  ).count

# The Class Inheritance Example
class MyArray < Array
end

class Rectangle
  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def perimeter
    2 * (@length + @breadth)
  end
end

# Create a class Square here
class Square < Rectangle
  def initialize(side)
    @length = @breadth = side
  end
end
