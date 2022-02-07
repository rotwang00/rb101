=begin
Problem
Given a string, determine if all parentheses in the string are in balanced pairs.
To be balanced, there must be an equal number of open and close parentheses.
They must also occur in ( ) order, not ) (.
Input - a string
Output - a Boolean

Examples
balanced?('What (is) this?') == true
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
balanced?('((What)) (is this))?') == false
balanced?('Hey!') == true
balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false

Data structure
The original string

Algorithm
Loop through chars
  Keep a running total
  ( += 1
  ) -= 1
  Break if parens < 0

  return true if running total is 0
=end

def balanced?(string)
  parens = 0
  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    break if parens < 0
  end

  parens.zero?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false