class Foo
end

foo = Foo.new
p foo.send(:object_id)  # this is same as foo.object_id
p foo.send(:class)      # this is same as foo.class

class Foo
end

p Foo.is_a?(Object)
p Foo.new.is_a?(Object)
