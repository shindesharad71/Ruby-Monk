puts -> {}
puts proc {}

def a_method
  proc { return 'we just returned from the block' }.call
  'we just returned from the calling method'
end
