=begin

Problem
Given an array of directions for a walk, determine if
  1. The walk will take exactly 10 minutes, and
  2. The walk will bring you back where you started
Input - an array of 'n' 'e' 's' 'w'
Output - a Boolean
The array will not be empty
The array will only contain n s e and w

Examples
p is_valid_walk(['n','s','n','s','n','s','n','s','n','s']) == true
p is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e']) == false
p is_valid_walk(['w']) == false
p is_valid_walk(['n','n','n','s','n','s','n','s','n','s']) == false

Data structure
The original array

Algorithm
If the walk lenth isn't 10 minutes, return false
If the number of n's doesn't equal the number of s's, return false
If the number of w's doesn't equal the number of e's, return false
Otherwise, return true
=end

def is_valid_walk(moves)
  return false if moves.size != 10
  return false if moves.count("n") != moves.count("s")
  return false if moves.count("e") != moves.count("w")
  true
end

p is_valid_walk(['n','s','n','s','n','s','n','s','n','s']) == true
p is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e']) == false
p is_valid_walk(['w']) == false
p is_valid_walk(['n','n','n','s','n','s','n','s','n','s']) == false