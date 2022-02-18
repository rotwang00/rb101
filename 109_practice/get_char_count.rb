=begin
Problem
Given a string, count the occurrences of each character.
Count only letters and numbers. Ignore punctuation and spaces.
Uppercase letters count as lowercase letters.
Group all the occurences of a certain count together in an array, sorted alphabetically.
Place all the arrays in a hash, sorted high to low based on occurences.

Examples
p get_char_count("cba") => {1=>["a", "b", "c"]}
p get_char_count("Mississippi") == {4=>["i", "s"], 2=>["p"], 1=>["m"]}
p get_char_count("Hello. Hello? HELLO!!") == {6=>["l"], 3=>["e", "h", "o"]}
p get_char_count("aaa...bb...c!") == {3=>["a"], 2=>["b"], 1=>["c"]}
p get_char_count("aaabbbccc") == {3=>["a", "b", "c"]}
p get_char_count("abc123") == {1=>["1", "2", "3", "a", "b", "c"]}

Data structure
A hash. The keys are letter counts; the values are arrays of letters

Algorithm
Downcase the string
Convert the string to an array of chars
Initialize the answer hash
Initialize an array of digts, then lowercase letters
Iterate through the range array
  Count the number of occurrences of each letter
  If that count already exists as a hash key,
    add the letter to that key's value (array) with <<
  Else, add a new key-value pair
This should result in already alphabatized arrays
Sort the hash keys in descending order
=end

def get_char_count(str)
  chars = str.downcase.chars
  answer = {}
  range = [*'1'..'9'] + [*'a'..'z']
  range.each do |letter|
    count = chars.count(letter)
    if count >= 1
      if answer.key? count
        answer[count] << letter
      else
        answer[count] = [letter]
      end
    end
  end
  answer.sort.to_h
end

p get_char_count("Mississippi") == {4=>["i", "s"], 2=>["p"], 1=>["m"]}
p get_char_count("Hello. Hello? HELLO!!") == {6=>["l"], 3=>["e", "h", "o"]}
p get_char_count("aaa...bb...c!") == {3=>["a"], 2=>["b"], 1=>["c"]}
p get_char_count("aaabbbccc") == {3=>["a", "b", "c"]}
p get_char_count("abc123") == {1=>["1", "2", "3", "a", "b", "c"]}