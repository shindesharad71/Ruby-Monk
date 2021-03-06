["xkcd", 9, Object.new, ["a", "clean", "array"], { :a => "hash" }].each do |e|
  puts e.class
end

class WaiterRobot
  def initialize(chef, tables)
    @chef = chef
    @tables = tables
    @name = "Tyler Durden"
  end

  def name
    @name
  end

  def place_order(table_number, sandwich, drink)
    order = { :table => table_number, :sandwich => sandwich, :drink => drink }
    @chef.new_order(self, order)
  end

  def serve(order)
    # digest the chef's sloppy order instructions:
    # 1) find the table number you need to serve
    o = Hash[*order]
    table_number = o[:table]
    table = @tables[table_number]

    # 2) call Table#serve_sandwich and Table#serve_drink
    table.serve_sandwich(o[:sandwich])
    table.serve_drink(o[:drink])
  end
end

CHARACTERS = ["Joey Jeremiah", "Snake Simpson", "Wheels", "Spike Nelson", "Arthur Kobalewscuy", "Caitlin Ryan", "Shane McKay", "Rick Munro", "Stephanie Kaye"]

def degrassi_couples
  all = CHARACTERS.product(CHARACTERS)
  all.reject { |c| c.first == c.last }
end

class Announcements
  def initialize(printer)
    @printer = printer
  end

  def notify_user(column_table)
    row_table = # batter up!
      @printer.print_with_ink(row_table)
  end
end
