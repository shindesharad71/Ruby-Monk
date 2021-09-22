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