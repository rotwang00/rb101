=begin
Problem
Given a positive integer, return the next higher number
  that can be formed with the same digits.
If no larger number can be formed, return -1.
Input - a positive integer
Output - a positive integer, or -1

Examples
12 => 21
513 => 531
2017 => 2071
9 => -1
111 => -1
531 => -1
107 => 170
137 => 173
1377 => 1737
1378 => 1387
12343 => 12433


Patterns
If the number is <= 9, return -1
If all the digits are the same, return -1
If the digits are sorted in reverse, return -1
Starting from the end, swap the first adjacent digits where
  the first is less than the second

Data Structure
An array of digits

Algorithm
Return -1 if
  num is less than 9
  The digits of num are all the same
  The digits of num appear in reverse sorted order
Starting from the end of the array, find the last adjacent pair of elements where
  the first element is less than the second. Swap this pair.
=end

# def next_bigger_num(num)
#   digits = num.to_s.chars.map(&:to_i)
#   return -1 if digits.size == 1
#   return -1 if digits.uniq.size == 1
#   return -1 if digits.sort { |a, b| b <=> a} == digits
#   orignal_num = num
#   loop do
#     num += 1
#     if orignal_num.to_s.chars.sort == num.to_s.chars.sort
#       return num
#     end
#     # puts num
#   end
# end

def next_bigger_num(num)
  digits = num.to_s.chars.map(&:to_i)
  return -1 if digits.size == 1
  return -1 if digits.uniq.size == 1
  return -1 if digits.sort { |a, b| b <=> a} == digits
  
  permutations = digits.permutation(digits.size).to_a
  permutations.sort!
  permutations.each do |permutation|
    permutation_number = permutation.join.to_i
    if permutation_number > num
      return permutation_number
    end
  end
end

p next_bigger_num(2071)