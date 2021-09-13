# open the file "new-fd" and create a file descriptor:
fd = IO.sysopen("new-fd.txt", "w")

# Create new IO stream
p IO.new(fd)