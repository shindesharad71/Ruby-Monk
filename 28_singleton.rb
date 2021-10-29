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
