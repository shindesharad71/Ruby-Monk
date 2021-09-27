# open the file "new-fd" and create a file descriptor:
fd = IO.sysopen('new-fd.txt', 'w')

# Create new IO stream
p IO.new(fd)

io_streams = []
ObjectSpace.each_object(IO) { |x| io_streams << x }
p io_streams

# File Read and Write
who_am_i = File.open('new-fd.txt', 'w') do |file|
  file.puts 'Call me Sharad'
end

p who_am_i

File.open('new-fd.txt', 'r') { |file| puts file.read }
