class Spy
end

Spy.new.hello # NoMethodError: undefined method `hello'

class Spy
  def method_missing(sym, *args, &block)
    puts "#{sym} was called with #{args} and #{block}"
  end
end
