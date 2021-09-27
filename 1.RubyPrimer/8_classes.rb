# Print class of any object
puts 1.class
puts ''.class
puts [].class

# Validate class
puts 1.is_a?(Integer)
puts 1.is_a?(String)

# Create new instance iof class
Object.new

# Creating Own Classes
class Rectangle
  # Code related to class

  # Constructor
  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def perimeter
    2 * (@length + @breadth)
  end

  def area
    @length * @breadth
  end
end
