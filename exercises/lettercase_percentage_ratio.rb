=begin
Problem
Given a string, return a hash with three entries:
The percentages of characters that are lowercase, uppercase, and neither.
The percentages are floats rounded to the nearest tenth
Input: a string with at least one character
Output: A hash with three items

Examples
letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

Data Structure
Variables for counting three types of chars - int
Variable for total number of chars - int
Variables for percentages - float
Answer hash

Algorithm
Initiailize counting variables - lower, upper, neither
Set number of chars variable - size
Convert string to chars
Loop through array of chars - #each method
Increment the proper counting variable
Compute percentages and round them to nearest tenth
Place all data in hash
=end

def letter_percentages(string)
  lower = 0.0
  upper = 0.0
  neither = 0.0
  size = string.length
  chars = string.chars
  chars.each do |char|
    if ("a".."z").include? char
      lower += 1
    elsif ("A".."Z").include? char
      upper += 1
    else
      neither += 1
    end
  end
  lower_percent = ((lower / size) * 100).round(1)
  upper_percent = ((upper / size) * 100).round(1)
  neither_percent = ((neither / size) * 100).round(1)
  answer = {
    lowercase: lower_percent,
    uppercase: upper_percent,
    neither: neither_percent
  }
  p answer
end


letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
letter_percentages('abcdefGHI') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }