def find_fibonacci_index_by_length(num_of_digits)
  series = [1, 1]
  counter = 2
  while series[-1].to_s.size < num_of_digits
    next_number = series[-1] + series[-2]
    series << next_number
    counter += 1
  end
  counter
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847