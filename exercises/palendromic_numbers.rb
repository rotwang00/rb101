def palindromic_number?(num)
  num_array = num.to_s.split('')
  num_array == num_array.reverse
end

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true