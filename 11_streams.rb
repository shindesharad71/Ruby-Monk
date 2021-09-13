# open the file "new-fd" and create a file descriptor:
fd = IO.sysopen("new-fd.txt", "w")

# Create new IO stream
p IO.new(fd)

io_streams = Array.new
ObjectSpace.each_object(IO) { |x| io_streams << x }
p io_streams

