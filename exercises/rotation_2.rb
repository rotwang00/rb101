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

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
