def double_numbers(numbers)
  counter = 0

  loop do
    break if counter == numbers.size
    numbers[counter] *= 2
    counter += 1
  end
  numbers
end

numbers = [1, 2, 3, 4]
p numbers
double_numbers(numbers)
p numbers
