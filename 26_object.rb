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