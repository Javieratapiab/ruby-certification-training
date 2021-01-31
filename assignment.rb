# frozen_string_literal: true

# Ruby supports parallel assignment, allowing more than one value
x, y = 1, 2  # same as x = 1; y = 2
a, b = b, a  # swap the value of two variables
x, y, z = [1, 2, 3] # array elems automatically assigned to variables

# define a method to convert Cartesian(x,y) coordinates to Polar
def polar(x, y)
  theta = Math.atan2(x, y) # Compute the angle
  r = Math.hypot(x, y) # Compute the distance
  [r, theta] # return value
end

# Here's how we use this method with parallel assignment
distance, angle = polar(x, y)

# Methods that end with an equals sign (=) are special because Ruby allows them to be
# invoked using assignment syntax. If an object o has a method named x=, then the
# following two lines of code do the very same thing:

o.x=(1) # Normal method invocation syntax
o.x = 1 # Method invocation through assignment
