=begin
P: Understand the Problem
---------------------------------
Problem Statement
Given a string of at least 6 digits, find the greatest product
  of five consecutive digits.

Inputs: A string of digits
- Data types always the same? Yes
- Edge cases (emptiness, zero, negative, case-sensitivity, boundary conditions) N/A
- Validate input? Not necessary

Outputs: An integer
- Print or return? return new object or mutate existing? Return a new object
- Does element order matter? No
- How to handle duplicates? N/A

Explicit Requirements
- 

Implicit Requirements - Review problem and examples


E: Examples, Test Cases, Edge Cases
-------------------------------------------
greatest_product("123834539327238239583") == 3240


D: Data Structure
---------------------
Input: String of digits
Intermediate: 
Output: An integer


A: Algorithm
----------------
Pseudo-code:
Initiailize max_product
Iterate through str fron index 0 to index str.size - 5
  Take 5-character slice of str starting at index
  Convert slice to array of chars
  Find the product of the digits in the array
  If the product is larger than max_product, replace max_product
Return max_product

Helper method(s):


C: Code
---------
=end

def greatest_product(str)
  max_product = 0
  (0..(str.size - 5)).each do |index|
    segment = str.slice(index, 5)
    digits = segment.each_char.map(&:to_i)
    product = digits.reduce(:*)
    max_product = product > max_product ? product : max_product
  end
  max_product
end

p greatest_product("123834539327238239583") == 3240
p greatest_product("395831238345393272382") == 3240
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("02494037820244202221011110532909999") == 0