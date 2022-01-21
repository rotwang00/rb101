# Problem - Given a string of lowercase characters, find the longest substring
# of consecutive vowels. Return the length of that substring.
#
# Examples -
# p solve("codewarriors") == 2
# p solve("suoidea") == 3
# p solve("iuuvgheaae") == 4
#
# Data structure -
# The parameter string
# An constant array of vowels
# An integer containing the size of the longest string of vowels
#
# Algorithm -
# Define array 'vowels'
# Longest = 0
# counter = 0
# string.each do |char|
#   does vowels include char?
#     counter += 1
#   else
#     is counter > longest?
#       longest = counter
#     end
#     counter = 0
#   end
#   longest
# end

def solve(string)
  vowels = %w(a e i o u)
  longest = 0
  counter = 0
  string.chars.each do |char|
    if vowels.include? char
      counter += 1
    else
      if counter > longest
        longest = counter
      end
      counter = 0
    end
    if counter > longest
      longest = counter
    end
  end
  longest
end

p solve("codewarriors") == 2
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8