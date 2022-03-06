=begin
P: Understand the Problem
---------------------------------
Problem Statement
You are given a string of integers, str, and an integer, sz
If sz isn't positive, return ""
If sz is greater than the size of str, return ""
Split str into chunks of size sz.
If there is a string left that's less than sz in size, discard the extra string.
  They will have no part in the return value.
For each chunk:
  If the sum of the cubes of it digits is even, reverse that chunk.
  Otherwise, rotate the chunk to the left one position (remove the 
    first char and place it at the end)
Reassemble the chunks and return the result as a string.


E: Examples, Test Cases, Edge Cases
------------------------------------------
p revrot("1234", 0) == ""
p revrot("", 0) == ""
p revrot("1234", 5) == ""
p revrot("733049910872815764", 5) == "330479108928157"
p revrot("123456987654", 6) == "234561876549"
p revrot("123456987653", 6) == "234561356789"
p revrot("66443875", 4) == "44668753"
p revrot("66443875", 8) == "64438756"
p revrot("664438769", 8) == "67834466"
p revrot("123456779", 8) == "23456771"
p revrot("", 8) == ""
p revrot("123456779", 0) == ""
p revrot("563000655734469485", 4) == "0365065073456944"

D: Data Structure
---------------------
Input: A string of digits, and an integer
Intermediate: 
Output: A string of digits, or an empty string


A: Algorithm
----------------
Pseudo-code:
Return "" if sz <= 0
Return "" is sz > str.size
Initiailize an array to hold chunks
Loop while str.size > sz
  Get next chunk and place into chunks
Iterate through chunks with map creating new array: transformed_chunks
  if weird_condition
    reverse chunk
  else
    rotate chunk
  end
end
join transformed_chunks and return

Helper method(s):
weird_condition
  convert chunk to integer
  split chunk into digits
  cube each digit
  sum the cubes
  it is even?
end

C: Code
---------
=end

def revrot(str, sz)
  return "" if sz <= 0
  return "" if sz > str.size
  chunks = []
  while str.size >= sz
    chunks << str.slice!(0, sz)
  end
  transformed_chunks = chunks.map do |chunk|
    if weird_condition(chunk)
      chunk.reverse
    else
      chunk.slice(1, sz - 1) + chunk[0]
    end
  end
  p transformed_chunks.join("")
  return transformed_chunks.join("")
end

def weird_condition(string)
  num = string.to_i.digits
  cubed = num.map do |digit|
    digit * 3
  end
  cubed.sum.even?
end

p revrot("1234", 0) == ""
p revrot("", 0) == ""
p revrot("1234", 5) == ""
p revrot("733049910872815764", 5) == "330479108928157"
p revrot("123456987654", 6) == "234561876549"
p revrot("123456987653", 6) == "234561356789"
p revrot("66443875", 4) == "44668753"
p revrot("66443875", 8) == "64438756"
p revrot("664438769", 8) == "67834466"
p revrot("123456779", 8) == "23456771"
p revrot("", 8) == ""
p revrot("123456779", 0) == ""