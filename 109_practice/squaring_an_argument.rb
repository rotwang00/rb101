def multiply(x, y)
  x * y
end

def square(x)
  multiply(x, x)
end

puts square(5) == 25
puts square(-8) == 64