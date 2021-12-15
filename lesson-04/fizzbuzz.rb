def fizzbuzz(start_num, end_num)
  current_num = start_num
  while current_num <= end_num
    if current_num % 15 == 0
      puts 'FizzBuzz'
    elsif current_num % 5 == 0
      puts 'Buzz'
    elsif current_num % 3 == 0
      puts 'Fizz'
    else
      puts current_num
    end
    current_num += 1
  end
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
  