# Defining Module
module WarmUp
  def push_ups
    'Phew, I need a break'
  end
end

# Including and Using A Module
class Gym
  include WarmUp

  def peacher_curls
    'I am building my biceps'
  end
end

class Dojo
  include WarmUp

  def tai_kyo_kyu
    'Look at my stance!'
  end
end

# Invoking it
puts Gym.new.push_ups
puts Dojo.new.push_ups

# Types
puts WarmUp.class # Module
puts Class.superclass   # Module
puts Module.superclass  # Object

# Module as Namespace
module Perimeter
  class Array
    def initialize
      @size = 10
    end
  end
end

our_array = Perimeter::Array.new
ruby_array = []

# Lookup Operator
module Dojo
  A = 4
  module Kata
    B = 8
    module Roulette
      class ScopeIn
        def push
          15
        end
      end
    end
  end
end

A = 16
B = 23
C = 42

puts "A - #{A}"
puts "Dojo::A - #{Dojo::A}"

puts

puts "B - #{B}"
puts "Dojo::Kata::B - #{Dojo::Kata::B}"

puts

puts "C - #{C}"
puts "Dojo::Kata::Roulette::ScopeIn.new.push - #{Dojo::Kata::Roulette::ScopeIn.new.push}"
