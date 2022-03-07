=begin
P: Understand the Problem
---------------------------------
Problem Statement
Given a hash of all integers, find the key-value pair that most closely match each other.
Return the key.
If there is a tie among pairs for closest match, return the lowest key.


E: Examples, Test Cases, Edge Cases
------------------------------------------
p nexus({1 => 3, 3 => 3, 5 => 1}) == 3
p nexus({1 => 10, 2 => 6, 3 => 4, 5 => 1}) == 3
p nexus({1 => 10, 2 => 3, 3 => 4, 5 => 1}) == 2

D: Data Structure
---------------------
Input: A hash
Intermediate: 
Output: An integer


A: Algorithm
----------------
Pseudo-code:
initiailize lowest_difference to difference in first k-v pair
initiailize lowest key to first key

Iterate through hash with each |k, v|
  Find absolute value of k - v
  Is is less than lowest_difference?
    Set lowest_difference to this difference
    Set lowest_key to this key
    next
  Is this difference the same as lowest_difference AND is this key less than lowest_key?
    Set lowest_key to this key
    next
Return lowest_key

C: Code
---------
=end

def nexus(hash)
  key, value = hash.first
  lowest_difference = (key - value).abs
  lowest_key = key
  hash.each do |k, v|
    difference = (k - v).abs
    p k, v, difference
    if difference < lowest_difference
      lowest_difference = difference
      lowest_key = k
    end
    if (difference == lowest_difference) && (k < lowest_key)
      lowest_key = k
    end
  end
  p lowest_key
end

p nexus({1 => 3, 3 => 3, 5 => 1}) == 3
p nexus({1 => 10, 2 => 6, 3 => 4, 5 => 1}) == 3
p nexus({1 => 10, 2 => 3, 3 => 4, 5 => 1}) == 2