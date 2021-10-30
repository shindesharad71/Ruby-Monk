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
