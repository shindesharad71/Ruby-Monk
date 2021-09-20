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

# Instance Variables
class Item
    def initialize(item_name, quantity)
        @item_name = item_name
        @quantity = quantity
    end
    
    def show
        puts @item_name
        puts @quantity
    end
end

Item.new("tv",1).show
Item.new("fridge",1).show

# Getters and Setters
class Item
    def initialize(item_name, quantity)
        @item_name = item_name
        @quantity = quantity
    end
    
    def item_name
        @item_name
    end
end

item = Item.new("tv",1)
puts item.item_name