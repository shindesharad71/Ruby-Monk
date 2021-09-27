# Do while loop
loop do
  monk.meditate
  break if monk.nirvana?
end

# Run block N times
5.times do
  # Perform the action here
end

def ring(bell, n)
  n.times do
    bell.ring
  end
end
