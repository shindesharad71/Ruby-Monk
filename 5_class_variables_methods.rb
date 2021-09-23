class Item
    def initialize(item_name)
      @item_name = item_name
    end
    
    def show
      puts "Instance method show invoked for '#{self}'"
    end  
    
    def to_s
        "Item: #{@item_name}"
    end
    
end

Item.new("silence").show

class Item
    def self.show
      puts "Class method show invoked"
    end  
end

  Item.show

class Item
    class << self
      def show
        puts "Class method show invoked"
      end
    end
end