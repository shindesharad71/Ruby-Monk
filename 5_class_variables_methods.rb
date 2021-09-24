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

class Planet
  @@planets_count = 0
    
  def initialize(name)
    @name = name
    @@planets_count += 1
  end
  
  def self.planets_count
    @@planets_count
  end  
end

Planet.new("earth"); Planet.new("uranus")

p Planet.planets_count