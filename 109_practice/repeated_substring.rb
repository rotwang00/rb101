# Problem
# Given a non-empty lowercase string, find a minimum substring t and the maximum number k 
# such that the eitire string is equal to t repeated k times.
# The answer should be an array [t, k]
# Input - a string
# Output- an array [t, k] where t is the substring and k is the number of times it repeats
#
# Examples
# p f("ababab") == ["ab", 3]
# p f("abcde") == ["abcde", 1]
#
# Data structure
# The given string
# t, the longest repeating substring
# k, the number of times it repeats
# answer, an array [t, k]
# 
# Algorithm
# t = ""
# # string.chars.each do |char|
#   if t.include? char
#     break
#   else
#     t << char
#   end
# end
# k = string.size / t.size
# answer = [t, k]

def f(string)
  t = ""
  string.chars.each do |char|
    if t.include? char
      break
    else
      t << char
    end
  end
  k = string.size / t.size
  answer = [t, k]
end

p f("ababab") == ["ab", 3]
p f("abcde") == ["abcde", 1]