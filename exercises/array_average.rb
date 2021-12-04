def average(arr)
  total = 0
  arr.each { |x| total += x }
  return total.to_f / arr.length
end

puts average([1, 6]) 
puts average([1, 5, 87, 45, 8, 8]) 
puts average([9, 47, 23, 95, 16, 52])