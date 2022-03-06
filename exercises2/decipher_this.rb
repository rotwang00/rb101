=begin
P: Understand the Problem
---------------------------------
Problem Statement
Given a string of encoded words, decode the message.
The second and last letter of each word have been switched
The first letter has been replaced by its ASCII code.
Return the decoded message
There will only be letters and spaces in the message

E: Examples, Test Cases, Edge Cases
------------------------------------------
p decipher_this("65 119esi 111dl 111lw 108dvei 105n 97n 111ka") == "A wise old owl lived in an oak"
p decipher_this("84eh 109ero 104e 115wa 116eh 108sse 104e 115eokp") == "The more he saw the less he spoke"
p decipher_this("84eh 108sse 104e 115eokp 116eh 109ero 104e 104dare") == "The less he spoke the more he heard"
p decipher_this("87yh 99na 119e 110to 97ll 98e 108eki 116tah 119esi 111dl 98dri") == "Why can we not all be like that
wise old bird"
p decipher_this("84kanh 121uo 80roti 102ro 97ll 121ruo 104ple") == "Thank you Piotr for all your help"

D: Data Structure
---------------------
Input: A string of words
Intermediate: 
Output: A string of words


A: Algorithm
----------------
Pseudo-code:
Convert str to array encoded
Iterate through encoded using map |word| into array plaintext
  Initiailize string ascii
  While the next char of word is a digit
    Add that digit to ascii
  Convert ascii to letter  
  Replace digits of word with letter
  If size of word > 2
    Swap letters at index 0 and -1
Rejoin words of plaintest and return


Helper method(s):


C: Code
---------
=end

def decipher_this(str)
  encoded = str.split(" ")
  plaintext = encoded.map do |word|
    ascii = ""
    index = 0
    while ("0".."9").include? word[index]
      ascii += word[index]
      index += 1
    end
    letter = ascii.to_i.chr
    word.gsub!(ascii, letter)
    if word.size > 2
      word[1], word[-1] = word[-1,], word[1]
    end
    word
  end
  plaintext.join(" ")
end

p decipher_this("65 119esi 111dl 111lw 108dvei 105n 97n 111ka") == "A wise old owl lived in an oak"
p decipher_this("84eh 109ero 104e 115wa 116eh 108sse 104e 115eokp") == "The more he saw the less he spoke"
p decipher_this("84eh 108sse 104e 115eokp 116eh 109ero 104e 104dare") == "The less he spoke the more he heard"
p decipher_this("87yh 99na 119e 110to 97ll 98e 108eki 116tah 119esi 111dl 98dri") == "Why can we not all be like that wise old bird"
p decipher_this("84kanh 121uo 80roti 102ro 97ll 121ruo 104ple") == "Thank you Piotr for all your help"