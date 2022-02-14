=begin
Problem
Write a function that takes two arguments and returns true if
  exactly one of its arguments is truthy, false otherwise.
Input - two arguments
Output - A Boolean

Examples
xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false

Data structure
An if statement

Algorithm
If a is truthy and b is falsey or if a is falsey and b is truthy return true
Else return false
=end

def xor?(a, b)
  if (a == true && b == false) || (a == false && b == true)
    return true
  else
    return false
  end
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false