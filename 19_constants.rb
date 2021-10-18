Argument::Truth = "Yes, I am."

def rewrite_history
	Argument::Truth = "No, you're not."
end

rewrite_history

fence = Module.new do
def speak
	"I'm trapped!"
end
end

class Sheep
def speak
	"Baaaaahhhhh."
end
end

dolly = Sheep.new
dolly.extend(fence)
puts dolly.speak