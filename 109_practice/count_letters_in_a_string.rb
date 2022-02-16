=begin
Problem
Given a string, count the lowercase letters and add them to
  a hash with the letter as the key and the count as the value
The key must be a symbol, not a string.
The given string will consist solely of lowercase letters.
Input - a string of lowercase letters
Output - a hash of letter counts

Examples
p letterCount('arithmetics') #=> {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}
p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1})
p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}

Data structure
A hash containing the counts

Algorithm
Initiailize empty hash
Examine each character of the string
If a char as a symbol is already a key, increment the value
If not already a key, add its symbol version with count 1
=end

def letter_count(str)
  counts = {}
  str.chars.each do |char|
    if counts.key? char.to_sym
      counts[char.to_sym] += 1
    else
      counts[char.to_sym] = 1
    end
  end
  p counts
end

p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}
p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1}
p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}