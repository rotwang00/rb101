def multiply(x, y)
  x * y
end

def square(z)
  multiply(z, z)
end

def power(a, b)
  result = 1
  b.times do
    result = multiply(result, a)
  end
  result
end

puts power(9, 3)