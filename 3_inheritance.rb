puts 1.0.is_a?(Float)
puts 1.0.is_a?(Numeric)

# Superclass
puts Float.superclass    # Numeric
puts Numeric.superclass  # Object
puts Object.superclass   # BasicObject


puts (
    Float.instance_methods - 
    Object.instance_methods - 
    Numeric.instance_methods
).count