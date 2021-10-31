class Foo
  def shout
    puts "I'm Foo"
  end
end

foo = Foo.new
foo.shout

class Foo
  def shout
    puts "I'm still Foo, but I have been overridden"
  end
end

foo.shout

class Foo
end

foo = Foo.new
def foo.shout
  puts "Foo Foo Foo!"
end
foo.shout

p Foo.new.respond_to?(:shout)

class Object
  def metaclass
    class << self
      self
    end
  end
end

foo = "I'm a string object"

# Let us define a singleton method on foo
def foo.shout
  puts self.upcase
end

foo.shout

# Lets look at the class of foo's metaclass.
p foo.metaclass.class

# The singleton method 'shout' obviously doesn't exist in the actual class.
p foo.class.instance_methods.include? :shout

# But does it exist in the metaclass?
p foo.metaclass.instance_methods.include? :shout

class Object
  def metaclass
    class << self
      self
    end
  end
end

a = Object.new
p a.metaclass.new

class Object
  def singleton_method?(method)
    singleton_methods =
      self.singleton_class.instance_methods - self.class.instance_methods

    singleton_methods.include? method
  end
end

foo = "A string"
def foo.shout
  puts foo.upcase
end

# shout is a singleton method.
p foo.singleton_method?(:shout)
