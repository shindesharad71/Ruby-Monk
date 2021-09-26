puts [1,2] == [1,2]
puts [1,2] == [1,3]
puts "a" == "xyz"

class Item
    def initialize(item_name, qty)
        @item_name = item_name
        @qty = qty
    end
end
p Item.new("abcd",1)  == Item.new("abcd",1)

class Item
    def initialize(item_name, qty)
        @item_name = item_name
        @qty = qty
    end
    def to_s
        "Item (#{@item_name}, #{@qty})"
    end
    def ==(other_item)
        puts "Method == called on #{self} with parameter #{other_item}"
        false
    end
end

# This line should invoke the `==` method defined in the Item class.
puts Item.new("abcd",1) == Item.new("abcd", 1)

class Item
    attr_reader :item_name, :qty
    
    def initialize(item_name, qty)
        @item_name = item_name
        @qty = qty
    end
    def to_s
        "Item (#{@item_name}, #{@qty})"
    end
    def ==(other_item)
    end
end

p Item.new("abcd",1)  == Item.new("abcd",1)
p Item.new("abcd",2)  == Item.new("abcd",1)