def multisum(num)
  result = 0
  (1..num).each do |x|
    if (x % 3 == 0) || (x % 5 == 0)
      result += x
    end
  end
  result
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168