floor = [["blank", "blank", "blank"],
         ["gummy", "blank", "blank"],
         ["blank", "blank", "blank"]]

candy = nil
attempts = 0
floor.each do |row|
  row.each do |tile|
    attempts += 1
    candy = tile if tile == "jawbreaker" || tile == "gummy"
  end
end
puts candy
puts attempts

floor = [["blank", "blank", "blank"],
         ["gummy", "blank", "blank"],
         ["blank", "blank", "blank"]]

attempts = 0
candy = nil
catch(:found) do
  floor.each do |row|
    row.each do |tile|
      attempts += 1
      if tile == "jawbreaker" || tile == "gummy"
        candy = tile
        throw(:found)
      end
    end
  end
end
puts candy
puts attempts

floor = [["blank", "blank", "blank"],
         ["gummy", "blank", "blank"],
         ["blank", "blank", "blank"]]

attempts = 0
candy = catch(:found) do
  floor.each do |row|
    row.each do |tile|
      attempts += 1
      throw(:found, tile) if tile == "jawbreaker" || tile == "gummy"
    end
  end
end
puts candy
puts attempts

candy = catch(:found) do
  floor.each do |row|
    row.each do |tile|
      throw(:found, tile) if tile == "jawbreaker" || tile == "gummy"
    end
  end
end
puts candy
