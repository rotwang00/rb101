=begin
P: Understand the Problem
---------------------------------
Problem Statement
Compare two given arrays of positive integers.
Are the elements in b each squares of the elements in a?
Although the order of the elements does not matter, 
  there must be a one-to-one correspondence.
An element that's repeated in a must have that same number
  of squares in b.
If a or b is empty, return false.
If a or b is nil, return false.


E: Examples, Test Cases, Edge Cases
------------------------------------------
a = [121, 144, 19, 161, 19, 144, 19, 11]
b = [121, 14641, 20736, 361, 25921, 361, 20736, 361]
comp(a, b) returns true because in b 121 is the square of 11,
14641 is the square of 121, 20736 the square of 144, 361
the square of 19, 25921 the square of 161, and so on.
It gets obvious if we write b's elements in terms of squares:
a = [121, 144, 19, 161, 19, 144, 19, 11]
b = [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]

D: Data Structure
---------------------
Input: Two arrays of integers
Intermediate: 
Output: A Boolean


A: Algorithm
----------------
Pseudo-code:
Return false is a or b is nil
Return false if a and b are different sizes
Return false if a or b is empty
Sort each array
Iterate through a each_with_index |num, index|
  Compare the two elements at that index.
  If a squared doesn't equal b, return false.
Return true

Helper method(s):


C: Code
---------
=end
def comp(a, b)
  return false if (a == nil) || (b == nil)
  return false if a.size != b.size
  return false if (a == []) || (b == [])
  a.sort!
  b.sort!
  a.each_with_index do |num, index|
    return false if num ** 2 != b[index]
  end
  return true
end

p comp([121, 144, 19, 161, 19, 144, 19, 11], [121, 14641, 20736, 361, 25921, 361, 20736, 361]) == true
p comp([121, 144, 19, 161, 19, 144, 19, 11] , [132, 14641, 20736, 361, 25921, 361, 20736, 361]) == false
p comp(nil, [1, 2, 3]) == false
p comp([1, 2], []) == false
p comp([1, 2], [1, 4, 4]) == false