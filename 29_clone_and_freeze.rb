a = [1, 2, 3]
b = a
b << 4

p a
p b

a = [1, 2, 3]
b = a.clone
b << 4

p a
p b

foo = "foo"
foos = [foo]
foo = foo.upcase		# returns a new string object. foo remains unharmed.
p foos

bar = "bar"
bars = [bar]
bar.upcase!				  # this changes bar itself. the object mutates.
p bars
