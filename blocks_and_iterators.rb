# frozen_string_literal: true

# Iterators are for "enumerables"
# iterators => They behave like loops
# block => body of the loop

# For integers.
puts 'INTEGER SAMPLES'
3.times { puts 'Ruby!' }
1.upto(9) { |x| print x }

# For arrays
puts "\nARRAY SAMPLES"
a = [3, 2, 1]
a[3] = a[2] - 1
a.each do |elt|
  print elt + 1
end

# Other useful iterators
a = [1, 2, 3, 4]
a.map { |x| x * x } # square elems
a.select(&:even?) # select even elements
a.inject do |sum, x| # compute the sum of the elements => 1
  sum + x
end

# For hashes (hashtable data structure)
# hash associates arbitrary value objects with key objects.
# Ruby's hashes can use any object as a key, but Symbol objects are the most commonly used.
# Symbols are immutable, interned strings. They can be compared by identity rather than by textual content
# (because two distinct Symbol objects will never have the same content).
print "\nHASH SAMPLES"
h = { one: 1, two: 2 }
h[:three] = 3
h.each do |key, value|
  print "\n#{value}:#{key}"
end
