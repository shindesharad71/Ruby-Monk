class Item
  def inspect
    "Result of inspect"
  end
end

puts Item.new
puts Item.new.to_s
p Item.new

class Item
  def initialize(item_name, qty)
    @item_name = item_name
    @qty = qty
  end
end

item = Item.new("a", 1)

puts item
p item
