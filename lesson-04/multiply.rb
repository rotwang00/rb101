def multiply(numbers, multiplicand)
  numbers.map { |x| x * multiplicand }
end

my_numbers = [1, 4, 3, 7, 2, 6]
puts multiply(my_numbers, 3)
