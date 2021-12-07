CHARS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def integer_to_string(int)
  str = ""
  if int == 0 
    return '0'
  end
  while int > 0
    digit = int % 10
    str = CHARS[digit] + str
    int = int / 10
  end
  str
end

def signed_integer_to_string(int)
  if int < 0
    negative = true
  else
    negative = false
  end
  int = int.abs()
  str = integer_to_string(int)
  if str == '0'
    return str
  end

  if negative
    str = '-' + str
  else
    str = '+' + str
  end
  return str
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'