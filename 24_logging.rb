def c
  puts "I'm in C. You know who called me?"
  puts caller
end

def b
  c
end

def a
  b
end

a

require "logger"
logger = Logger.new($stdout)
logger.warn("This is a warning")
logger.info("This is an info")
