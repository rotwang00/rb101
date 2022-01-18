Problem - Given a string, return a hash with counts of all the lowercase letters.

Input - A string consisting of all lowercase letters

Output - A hash with symbols as keys and integers as values. If a letter doesn't appear in the string, it should not appear as a key in the hash.

Example - letterCount('arithmetics') #=> {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}

Data structure - A hash with lowercase letters as symbols and integers as values

Algorithm
  Create empty hash `counts`
  string.chars.each |char|
    if char.to_s appears as a key in `counts`
      `counts[char.to_s] += 1`
    else
      `counts[char.to_s] = 1`
    end
  counts
end
