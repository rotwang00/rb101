=begin
Problem
Given an integer, find the maximum number you can get by deleting
one of its digits.
Input: An integer between 10 and 1_000_000
Output: An integer

Examples
delete_digit(152) == 52
delete_digit(1001) == 101
delete_digit(10) == 1

Data structure
An array version of the parameter

Algorithm
Create array version of parameter: digits
Initiailize max_num to 0
Iterate through 0 to size of digits - 1: index
  Get version of digits with element at index removed
  Convert this to integer
  If higher than max_num, replace max_num
Return max_num

=end

def delete_digit(num)
  digits = num.to_s.chars
  max_num = 0
  (0..(digits.size - 1)).each do |index|
    test_num = digits.map(&:itself)
    test_num.delete_at(index)
    test_num = test_num.join("").to_i
    if test_num > max_num
      max_num = test_num
    end
  end
  max_num
end
# p delete_digit(123552) == 52
p delete_digit(152) == 52
p delete_digit(1001) == 101
p delete_digit(10) == 1