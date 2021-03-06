def extract_first_name(name)
  first = name.split(" ").first
  puts "extracted first name #{first}"
  first
end

def casual_names(names)
  casual = names.map { |name| extract_first_name(name) }
  puts "captured casual names #{casual}"
  casual
end

puts casual_names(["Yehuda Katz", nil, "Why the lucky stiff"])
puts "I bet you'll never see this."

def start_summer
  raise Exception.new("overheated!")
end

begin
  start_summer
rescue Exception
  puts "It's cool in here, boy. For the rest of the summer, we'll live in the refrigerator."
end

def start_summer
  raise Exception.new("overheated!")
end

begin
  start_summer
rescue Exception => e
  puts "Let me tell you about heat! #{e.inspect}"
end

EXAMPLE_SECRETS = ["het", "keca", "si", nil, "iel"]

def decode(jumble)
  secret = jumble.split("").rotate(3).join("")
  announce(secret)
  secret
end

def decode_all(secrets)
  secrets.map { |s| decode(s) }
rescue
  puts "whew! safe."
end

class UserDataAccess
  attr_accessor :db

  def initialize
    @db = Database.new
  end

  def find_user(name)
    @db.find("SELECT * FROM USERS WHERE NAME = '%'", name)
  rescue Exception => e
    puts "A database error occurred."
  ensure
    @db.close
  end
end

def string_slice(*strings)
  if strings.size > 5
    raise ArgumentError, "Only 5 strings are allowed"
  end

  strings.map do |string|
    if string.size < 3
      raise IndexError, "Strings need to be at least 3 characters long"
    end

    string.slice(0..2)
  end
end

begin
  eval "40 / 0"
rescue ZeroDivisionError => error
  p error
end

def zen
  begin
    p eval "(40 + 2) / 2"
    p eval "(40 + 2) \ 2"
  rescue SyntaxError => error
    puts error.backtrace
  end
end

zen

def zen
  begin
    p eval "(40 + 2) / 2"
    p eval "(40 + 2) \ 2"
    p eval "4, 8, 15, 16, 23, 42"
  rescue SyntaxError => error
    puts error.backtrace
  end
end

zen

class KasayaError < StandardError
end

def robe(type)
  unless type.downcase == "kasaya"
    raise KasayaError, "Wrong robe!"
  end

  "Dharmaguptaka's " + type.capitalize + " Robe"
end
