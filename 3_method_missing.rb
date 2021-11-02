class Spy
end

Spy.new.hello # NoMethodError: undefined method `hello'

class Spy
  def method_missing(sym, *args, &block)
    puts "#{sym} was called with #{args} and #{block}"
  end
end

class MethodCall
  def initialize(sym, args)
    @sym = sym
    @args = args
  end

  def sym
    @sym
  end

  def args
    @args
  end

  def ==(other_call)
    @sym == other_call.sym && @args == other_call.args
  end
end

class Spy
  def initialize
    @method_calls = []
  end

  def method_missing(sym, *args, &block)
    @method_calls << MethodCall.new(sym, args)
  end

  def method_called?(sym, *args)
    @method_calls.include?(MethodCall.new(sym, args))
  end
end

class Spy
  def initialize(enemy_agent)
    @enemy_agent = enemy_agent
  end

  def method_missing(method_name, *args, &block)
    @enemy_agent.send(method_name, *args)
  end
end
