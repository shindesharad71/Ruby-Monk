module Foo
  def self.included(klass)
    puts "Foo has been included in class #{klass}"
  end
end

class Bar
  include Foo
end

module Foo
  def self.module_level_method
    puts "Module level method"
  end
end

class Bar
  include Foo
end

Bar.module_level_method

module Foo
  def module_method
    puts "Module Method invoked"
  end
end

class Bar
end

bar = Bar.new
bar.extend Foo
bar.module_method

module Foo
  def method_in_module
    "The method defined in the module invoked"
  end
end

class Bar
  def initialize
    self.extend Foo
  end
end
