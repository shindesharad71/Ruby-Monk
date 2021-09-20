# Redefining Methods
class Rectangle
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
  
  # Add an empty method named perimeter
  # or area and watch tests break
  class Rectangle
    def perimeter
    end
    
    def area
    end
  end