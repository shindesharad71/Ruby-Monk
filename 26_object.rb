class Foo
end

p "a".object_id
p "a".object_id
p Foo.new.object_id

p "a".class
p 1.class

class Foo
end

p Foo.new.class

class Foo
end

p Foo.class

# While we are at it, lets check out the classes of a few other objects
p String.class
p Fixnum.class
p Array.class
