# def string_to_integer(str)
#   char_arr = str.split("")
#   digit_arr = char_arr.map { |x| x.ord - 48 }
#   answer = digit_arr.inject{ |x, i| x * 10 + i}
# end

# p string_to_integer("643")

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(str)
  digits = str.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570