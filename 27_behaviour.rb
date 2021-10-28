class Foo
end

foo = Foo.new
p foo.send(:object_id)  # this is same as foo.object_id
p foo.send(:class)      # this is same as foo.class

class Foo
end

p Foo.is_a?(Object)
p Foo.new.is_a?(Object)

class Bar
  def shout
    "I'm a Bar!!"
  end
end

class Foo < Bar
end

p Foo.new.shout
p Foo.superclass

class Foo
end

p Foo.superclass

class Foo
end

p Foo.superclass
p Foo.superclass.superclass
p Foo.superclass.superclass.superclass
