def fibonacci(n)
  if n <= 2
    return 1
  end

  sequence = [1, 1]
  (n - 2).times do |_|
    new_number = sequence[-1] + sequence[-2]
    sequence << new_number
  end
  sequence[-1]
end

puts fibonacci(100)
