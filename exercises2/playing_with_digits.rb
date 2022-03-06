=begin
P: Understand the Problem
---------------------------------
Problem Statement
You are given two positive integers, n and p
Split n into digits.
Raise each of these digits to a power.
  The first digit is raised to p
  The second digit is raised to p + 1
  The third digit is raised to p + 2
  And so on.
Sum all of the resulting numbers
Determine if this sum is a multiple of n: n * k = sum
If so, return k.
If not, return -1.

E: Examples, Test Cases, Edge Cases
------------------------------------------
p dig_pow(89, 1) == 1
p dig_pow(92, 1) == -1
p dig_pow(46288, 3) == 51
p dig_pow(695, 2) == 2

D: Data Structure
---------------------
Input: Two positive integers
Intermediate: 
Output: A positive integer, or -1


A: Algorithm
----------------
Pseudo-code:
Assign parameters to n and p
Split n into digits and store in an array, digits
Initiailize sum to 0
Iterate through digits using each_with_index |digit, index|
  Add (digit ** (p + index)) to sum
Is sum a multiple of n such that n * k = sum
  If so, return k
  If not, return -1

Helper method(s):

C: Code
---------
=end

def dig_pow(n, p)
  digits = n.digits.reverse
  sum = 0
  digits.each_with_index do |digit, index|
    sum += digit ** (p + index)
  end
  if sum % n == 0
    return sum / n
  else
    return -1
  end
end

p dig_pow(89, 1) == 1
p dig_pow(92, 1) == -1
p dig_pow(46288, 3) == 51
p dig_pow(695, 2) == 2