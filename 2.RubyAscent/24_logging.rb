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

require "logger"
logger = Logger.new(STDOUT)

logger.level = Logger::UNKNOWN
logger.debug("(UNKNOWN) This a debug message")
logger.unknown("(UNKNOWN) Something unknown. Oh, mystery and suspense!")
logger.error("(UNKNOWN) Error! Run! Panic!")
logger.warn("(UNKNOWN) This is a warning.")

logger.level = Logger::INFO
logger.debug("(INFO) This a debug message")
logger.unknown("(INFO) Something unknown. Oh, mystery and suspense!")
logger.error("(INFO) Error! Run! Panic!")
logger.warn("(INFO) This is a warning.")

logger = Logger.new(STDOUT)
logger.level = Logger::DEBUG   # lowest severity. will print all logs.
logger.formatter = lambda do |severity, datetime, progname, msg|
  "#{datetime}: #{msg}\n"
end

logger.warn "A warning"
logger.info "An info"

class Order
  def initialize(order_items, customer)
    @logger = Logger.new($stdout)
    @order_items = order_items
    @customer = customer
    @state = :new
    @logger.info "New order from #{@customer}"
  end

  def procure(vendor)
    if @state == :new
      @vendor = vendor
      @state = :procured
      @logger.info "Order procured from #{@vendor}"
    else
      @logger.error "You can procure only new orders"
    end
  end

  def pack
    if @state == :procured
      @state = :packed
      @logger.info "Order packed"
    else
      @logger.error "You can't pack before procuring"
    end
  end

  def ship(address)
    if @state == :packed
      @state = :shipped
      @shipping_address = address
      @logger.info "Order shipped to #{@shipping_address}"
    else
      @logger.error "You can't ship before packing"
    end
  end
end

order = Order.new(["mouse", "keyboard"], "Asta")
order.procure("Awesome Supplier")
order.pack
order.ship("The Restaurant, End of the Universe")
