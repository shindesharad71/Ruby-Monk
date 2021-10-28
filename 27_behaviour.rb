class Foo
end

foo = Foo.new
p foo.send(:object_id)  # this is same as foo.object_id
p foo.send(:class)      # this is same as foo.class
