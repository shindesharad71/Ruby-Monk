class Array
  def foldl(method)
    inject { |result, i| result ? result.send(method, i) : i }
  end
end

puts [1000.0, 200.0, 50.0].foldl("/") # Feel free to experiment with this

class SetInStone
  #empty class
end

print SetInStone.new.everything_changes

class SetInStone
  #empty class
end

class SetInStone
  def everything_changes
    return "Wait, what? You just added a method to me!"
  end
end

class String
  def words
    split(" ")
  end
end

print SetInStone.new.everything_changes
