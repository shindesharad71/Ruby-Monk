# Defining Module
module WarmUp
    def push_ups
        "Phew, I need a break"
    end
end

# Including and Using A Module
class Gym
    include WarmUp

    def peacher_curls
        "I am building my biceps"
    end
end

class Dojo
    include WarmUp

    def tai_kyo_kyu
        "Look at my stance!"
    end
end

# Invoking it
puts Gym.new.push_ups
puts Dojo.new.push_ups

# Types
puts WarmUp.class      # Module
puts Class.superclass   # Module
puts Module.superclass  # Object