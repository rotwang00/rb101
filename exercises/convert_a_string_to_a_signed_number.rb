
DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(str)
  negative = false  
  if str[0] == '+'
    str.slice!(0)
  elsif str[0] == '-'
    str.slice!(0)
    negative = true
  end

  digits = str.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  if negative
    value *= -1
  end
  value
end

puts string_to_integer('4321') == 4321
puts string_to_integer('-570') == -570