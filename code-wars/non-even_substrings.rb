# Problem
# Given a string of integers, return the number of odd-numbered substrings that can be formed
#
# Input - A string of integers
# Output - An integer
#
# Examples
# p solve("1341") == 7
# p solve("1357") == 10
# p solve("13471") == 12
# p solve("134721") == 13
# p solve("1347231") == 20
# p solve("13472315") == 28
#
# Data structure
# An array with all the odd substrings
#
# Algorithm
# odds = []
# loops = string.size - 1
# for i in (0..loops)
#   for j in (i..loops)
#     substring = string[i..j]
#     if substring.to.i.odd?
#       odds << substring.to_i
#     end
#   end
#   odds.size
# end

def solve(string)
  odds = []
  loops = string.size - 1
  for i in (0..loops)
    for j in (i..loops)
      substring = string[i..j]
      if substring.to_i.odd?
        odds << substring.to_i
      end
    end
  end
  odds.size
end

p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28