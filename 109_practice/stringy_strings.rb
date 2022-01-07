def stringy(num)
  answer = ""
  num.times { |num| num.odd? ? answer += "0" : answer += "1"}
  answer
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'