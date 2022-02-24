=begin
Problem
Given an array of integers, find the group of contiguous elements whose sum is
the maximum possible. Return that sum.
If all the integers are positive, the answer will be the sum of the entire array.
If all the integers are negative, return 0.
If the array is empty, return 0.
Input - An array of integers. Can be all positive, all negative, or a mix. Can be empty.
Output - The highest possible sum of contiguous elements, or 0.

Examples
[] == 0
[11] == 11
[-32] == 0
[-2, 1, -3, 4, -1, 2, 1, -5, 4] == 6 ([4, -1, 2, 1])

Data structure
An array of all possible sub-arrays

Algorithm
Return 0 if arr is empty

Helper method: all_neg?

Initiailize subarrays
Set arr_size to size of parameter array
Outer loop: for i in (0..arr_size - 1)
  Inner loop: for j in (1..arr.size - i)
  Add i, j slice to subarrays
Initiailize max_sum
Iterate subarrays with each
  If sum of array > max_sum, replace max_sum
Return max_sum

==============
all_neg?(array)

Iterate through array
  If element is positive, return false
Return true
==============

=end

def all_neg?(array)
  array.each do |num|
    return false if num > 0
  end
  return true
end


def max_sequence(arr)
  return 0 if arr.size == 0
  return 0 if all_neg?(arr) == true
  
  subarrays = []
  arr_size = arr.size
  for i in (0..arr_size - 1)
    for j in (1..arr_size - i)
      subarrays << arr.slice(i, j)
    end
  end
  
  max_sum = 0
  subarrays.each do |subarray|
    if subarray.sum > max_sum
      max_sum = subarray.sum
    end
  end
  max_sum
end

p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4])
# p max_sequence([-32, 1])