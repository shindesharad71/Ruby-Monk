[5, 3].each

[4, 8, 15, 16, 23, 42].each { |e| puts e }

[enumerator = [3, 7, 14].each

enumerator.each { |e| puts e + 1 }

class Array
    def map_with_index(&block)
      self.each_with_index.map(&block)
    end
end