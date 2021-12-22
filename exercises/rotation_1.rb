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

p rotate_integers(90215)
