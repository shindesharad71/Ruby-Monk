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
