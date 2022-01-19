# Find all pairs
#
# Problem
# Given an array of integers, counts all pairs in the array and return their count.
# If the array length is 0 or 1, return 0.

# Input - An array of integers. Max length is 1000. Range of values is 0 to 1000.
# Output - A single integer representing the number of pairs.
#
# Examples
# [1, 2, 5, 6, 5, 2] --> 2 (Pairs of 2's and 5's)
# [1, 2, 2, 20, 6, 20, 2, 6, 2] --> 4 (Pairs of 2's, 20's, 6's, and 2's again)
# [5] --> 0
# [] --> 0
#
# Data structure
# The original array
#
# Algorithm
# If array length is 0 or 1, return 0
# Sort the array in place. The pairs are now next to each other.
# index = 0
# pairs = 0
# loop do
#   if array[index] == array [index + 1]
#     pairs += 1
#     index += 2 Found a pair, so the next number can be skipped
#   else
#     index += 1 Didn't find a pair. Go to the next number.
#   end
#   break if index > array.size - 2
# end
# pairs

def pairs(arr)
  if arr.size <= 1
    return 0
  end
  arr.sort!
  index = 0
  pairs = 0
  loop do
    if arr[index] == arr[index + 1]
      pairs += 1
      index += 2
    else
      index += 1
    end
    break if index > arr.size - 2
  end
  pairs
end

p pairs([1, 2, 5, 6, 5, 2]) == 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3
p pairs([1000, 1000]) == 1
p pairs([]) == 0
p pairs([54]) == 0
