def stringy(num)
  result = ''
  num.times { |x| x.even? ? result += '1' : result += '0'}
  return result
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'