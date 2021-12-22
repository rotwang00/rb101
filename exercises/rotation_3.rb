def rotate_array(arr)
  rotated = arr.dup
  rotated << rotated.shift
end

def rotate_string(str)
  rotate_array(str.chars).join
end

def rotate_integers(int)
  digits = int.to_s.size
  rotate_array(int.to_s.chars).join.to_i
end

def rotate_rightmost_digits(num, number_of_digits)
  str_arr = num.to_s.chars
  arr = str_arr.slice(-number_of_digits, number_of_digits)
  new_arr = rotate_array(arr)
  str_arr[-number_of_digits, number_of_digits] = new_arr
  str_arr.join.to_i
end

def max_rotation(num)
  count = num.to_s.size
  while count > 1
    num = rotate_rightmost_digits(num, count)
    count -= 1
  end
  num
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845