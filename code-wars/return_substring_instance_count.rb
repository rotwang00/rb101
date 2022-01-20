# Problem
# Count the number a times a string countains a substring
# Input - Two strings, a full string and a substring
# Output - An integer denoting the occurences of the substring within the full string
#
# Examples
# p solution('abcdeb','b') == 2
# p solution('abcdeb', 'a') == 1
#
# Data structure
# Two string parameters, one integer with the count of occurences
#
# Algorithm
# I don't know Regex, which would probably be easiest.
# Instead, I'll search by slice.
# if substring.size > string.size
#   return 0
# searches = string.size - substring.size + 1
# hits = 0
# (0..searches).each do |index|
#   if string[index, substring.size] == substring
#     hits += 1
#   end
#  end
# hits

def solution(string, substring)
  if substring.size > string.size
    return 0
  end
  searches = string.size - substring.size + 1
  hits = 0
  (0..searches).each do |index|
    if string[index, substring.size] == substring
      hits += 1
    end
  end
  hits
end

p solution('abcdeb','b') == 2
p solution('abcdeb', 'a') == 1
p solution('abbc', 'bb') == 1