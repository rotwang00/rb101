=begin
P: Understand the Problem
---------------------------------
Problem Statement
Given an array, count the occurences of each element and store those counts
in a hash. The keys are the unique elements of the array, and the values
are the counts of those elements.
If the input is nil or an empty array, return nil.

E: Examples, Test Cases, Edge Cases
------------------------------------------
input = [1,1,2,2,2,3]
group_and_count(input)# == {1=>2, 2=>3, 3=>1}

D: Data Structure
---------------------
Input: 
Intermediate: 
Output: 


A: Algorithm
----------------
Pseudo-code:
return nil if input is nil or input in empty
Initiailize hash counts
Iterate through arr with each |element|
  If that element exists as a key in counts
    Increment that value
  Else
    Add that key with a value of 1
Return counts

Helper method(s):


C: Code
---------
=end
def group_and_count(arr)
  return nil if (arr == nil) || (arr == [])
  counts = {}
  arr.each do |element|
    if counts.key? element
      counts[element] += 1
    else
      counts[element] = 1
    end
  end
  counts
end

p group_and_count([1,1,2,2,2,3]) == {1=>2, 2=>3, 3=>1}
p group_and_count([]) == nil
p group_and_count(nil) == nil
p group_and_count([1, 7, 5, -1]) == {1=>1, 7=>1, 5=>1, -1=>1}