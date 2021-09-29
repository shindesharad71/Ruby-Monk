class CerealBox
  attr_accessor :ounces, :contains_toy

  def initialize(ounces, contains_toy)
    @ounces = ounces
    @contains_toy = contains_toy
  end

  def self.from_s(s)
    ounces = 0
    contains_toy = false
    s.each_line do |field|
      value = field.split(":")[1].strip
      ounces = value.to_i if field.include?("ounces")
      contains_toy = to_boolean(value) if field.include?("contains_toy")
    end
    CerealBox.new(ounces, contains_toy)
  end

  def self.to_boolean(str)
    str == "true"
  end

  def to_s
    "ounces: #{@ounces}\n contains_toy: #{@contains_toy}"
  end
end

class Ogre
  def initialize(strength, speed)
    @strength = strength
    @speed = speed
  end

  # this is reminiscent of our old friend, CerealBox#from_s
  def self.deserialize(yaml_string)
    YAML::load(yaml_string)
  end

  # and this is a much-simplified version of our CerealBox#to_s
  def serialize
    YAML::dump(self)
  end

  # now we're free to define #to_s however we like!
  # ...which is great, because #to_s is for programmers to read,
  # not computers or users
  def to_s
    "Ogre: [strength = #{@strength}, speed = #{@speed}]"
  end
end

wendigo = Ogre.new(47, 3)
yaml = wendigo.serialize
puts "The yaml looks like this:"
p yaml
puts "It's just a boring old string: #{yaml.class}"
puts "...and it's easy to change back: #{Ogre.deserialize(yaml)}"
puts

shrek = Ogre.new(62, 12)
fiona = Ogre.new(66, 37)
ogres = [shrek, fiona]
puts "We can even serialize arrays! They're just another object. #{ogres}"

class Ogre
  attr_accessor :strength, :speed, :smell

  def initialize(strength, speed, smell)
    @strength = strength
    @speed = speed
    @smell = smell
  end
end

class Dragon
  attr_accessor :strength, :speed, :color

  def initialize(strength, speed, color)
    @strength = strength
    @speed = speed
    @color = color
  end
end

class Fairy
  attr_accessor :strength, :speed, :intelligence

  def initialize(intelligence)
    @strength = 1
    @speed = 42
    @intelligence = intelligence
  end
end

def save_game(characters)
  yaml = YAML::dump(characters)
  game_file = GameFile.new("/my_game/saved.yaml")
  game_file.write(yaml)
end

def load_game
  game_file = GameFile.new("/my_game/saved.yaml")
  yaml = game_file.read
  YAML::load(yaml)
end
