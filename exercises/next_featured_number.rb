=begin
Problem
Given an integer, find the next featured number greater than the argument.
A featured number has three characteritics:
  1. Odd
  2. Multiple of 7
  3. It digits occur exactly once each
There are no featured numbers greater than 9_999_999_999.
  If we hit 10 billion, return an error message.
Input - An integer
Output - An integer or an error message

Examples
featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

Data structure
The original integer
The incremented test integers

Algorithm
If num is even, add 1
Loop
  Is it divisible by 7 AND does each digit occur once?
  If yes, return it
  If no, increment it by 2
  If greater than 10 billion, return error message
=end

def featured(num)
  if num.even?
    num += 1
  else
    num += 2
  end

  loop do
    if (num % 7 == 0) && (unique_digits?(num))
      return num
    end
    num += 2
    if num > 9_999_999_999
      return "There is no possible number that fulfills those requirements"
    end
  end
end

def unique_digits?(x)
  digits = x.to_s.chars
  return digits.size == digits.uniq.size
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
