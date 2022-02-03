=begin
Problem
Given a string of words separated by spaces, return the same string with all words of five
letters or more reversed
Input - A string of words
Output - A string of words
Words will be separated by spaces
The string will contain only letters and spaces
Don't change the case of letters
If the string has only one word, no spaces will be included

Examples
spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw"

Data structure
The original string

Algorithm
Split the string into an array
Loop through the array
If an element has five or more letters, reverse it
Rejoin the array
=end

def spinWords(sentence)
  words = sentence.split(" ")
  reversed_words = words.each do |word|
    if word.size >= 5
      word.reverse!
    end
  end
  reversed_sentence = reversed_words.join(" ")
end

p spinWords("Hey fellow warriors") == "Hey wollef sroirraw"
p spinWords("This is a test") == "This is a test"
p spinWords("This is another test") == "This is rehtona test"
p spinWords("test") == "test"