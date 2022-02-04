=begin
Problem
Given an integer, return it as a string in expanded form.
The number will be a positive integer

Example
expanded_form(12); # Should return '10 + 2'
expanded_form(42); # Should return '40 + 2'
expanded_form(70304); # Should return '70000 + 300 + 4'

Data structure
Array of digits
Answer string

Algorithm
Convert number to string
Split string into array
Get size of array
Initialize answer string
Start countdown counter from size
Loop through array
  If digit is 0, skip
  Add zeros to the end
  If not the first digit, add + sign
  Concatenate result to answer
  Decrement counter
=end

def expanded_form(number)
  number_array = number.to_s.chars
  size = number_array.size - 1
  index = 0
  answer = ""
  loop do
    digit = number_array[index]
    next if digit == "0"
    term = digit + " + " + ("0" * size)
    p term
    answer = answer + term
    size -= 1
    index += 1
    break if size == 0
  end
end

p expanded_form(12)
# p expanded_form(12) == '10 + 2'
# p expanded_form(42) == '40 + 2'
# p expanded_form(70304) == '70000 + 300 + 4'