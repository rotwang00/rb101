=begin
P: Understand the Problem
---------------------------------
Problem Statement
Given a positive integer, sum the digits. If the reusult has more than one digit,
sum them again. Continue to sum the digits until only one digits remains.
Return this digit.

Inputs: A positive integer
- Data types always the same?
- Edge cases (emptiness, zero, negative, case-sensitivity, boundary conditions)
- Validate input?

Outputs: A single-digit integer
- Print or return? Return new object or mutate existing?
- Does element order matter?
- How to handle duplicates?

Explicit Requirements
- 

Implicit Requirements - Review problem and examples
- 


E: Examples, Test Cases, Edge Cases
------------------------------------------
digital_root(942)
=> 9 + 4 + 2
=> 15 ...
=> 1 + 5
=> 6

digital_root(3)
=> 3

D: Data Structure
---------------------
Input: An integer
Intermediate: 
Output: A single-digit integer


A: Algorithm
----------------
Pseudo-code:
Start a while loop. Condition: num is greater than 9
  pass num to sum_digits
End while loop
Return num

Helper method(s):
sum_digits(number)
  convert to string
  convert to array of chars
  initiailize total
  iterate through the array using each
    add int version of each char to total
  return total

C: Code
---------
=end

def digital_root(num)
  while num > 9 do
    num = sum_digits(num)
  end
  num
end

def sum_digits(number)
  arr = number.to_s.chars
  total = 0 
  arr.each do |char|
    total += char.to_i
  end
  total
end

p digital_root(493193)
