# Problem
# Given a string of text, find the top-3 most-used words.
# Input - a string
# Output - an array of three strings
# Case is irrelevant. The answer strings should be lowercase
# Only letters and apostrophes in words.
# The original string can have punctuation and line breaks, which should be ignored.
# Ties should be broken arbitratily
# If there are fewer than three unique words, return an array with fewer than three members.
# 
# Examples
# top_3_words("In a village of La Mancha, the name of which I have no desire to call to
#   mind, there lived not long since one of those gentlemen that keep a lance
#   in the lance-rack, an old buckler, a lean hack, and a greyhound for
#   coursing. An olla of rather more beef than mutton, a salad on most
#   nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
#   on Sundays, made away with three-quarters of his income.")
#   # => ["a", "of", "on"]
#   top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e")
#   # => ["e", "ddd", "aa"]
#   top_3_words(" //wont won't won't")
#   # => ["won't", "wont"]
#   Bonus points (not really, but just for fun):
#   Avoid creating an array whose memory footprint is roughly as big as the input text.
#   Avoid sorting the entire array of unique words.
#   =end
#   p top_3_words("a a a b c c d d d d e e e e e") == ["e", "d", "a"]
#   p top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e") == ["e", "ddd", "aa"]
#   p top_3_words(" //wont won't won't ") == ["won't", "wont"]
#   p top_3_words(" , e .. ") == ["e"]
#   p top_3_words(" ... ") == []
#   p top_3_words(" ' ") == []
#   p top_3_words(" ''' ") == []
#   p top_3_words("""In a village of La Mancha, the name of which I have no desire to call to
#   mind, there lived not long since one of those gentlemen that keep a lance
#   in the lance-rack, an old buckler, a lean hack, and a greyhound for
#   coursing. An olla of rather more beef than mutton, a salad on most
#   nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
#   on Sundays, made away with three-quarters of his income.""") == ["a", "of", "on"]
#
# Data structure
# A hash to keep track of unique words and occurences
#
# Algorithm
# Split the text into an array of words
# Strip each word's beginning and ending punctuation
# Lowercase each word
# Create an empty hash
# Loop through words
#   If word has been found before, increment count
#   If not, add to hash
# Sort hash in reverse by count
# Remove top three words and store them in an array
# Return this array

def top_3_words(string)
  words = string.split(" ")
  cleaned_words = words.map do |word|
    clean_word = word.downcase.gsub(/\W/, '')
  end
  if cleaned_words.size < 3
    return cleaned_words
  end
  counts = {}
  cleaned_words.each do |word|
    if word == ""
      next
    elsif counts.key? word
      counts[word] += 1
    else
      counts[word] = 1
    end
  end
  sorted = counts.sort_by { |k, v| -v}
  answer = []
  answer << sorted[0][0] << sorted[1][0] << sorted[2][0]
end

# top_3_words("In a village of La Mancha, the name of which I have no desire to call to
#   mind, there lived not long since one of those gentlemen that keep a lance
#   in the lance-rack, an old buckler, a lean hack, and a greyhound for
#   coursing. An olla of rather more beef than mutton, a salad on most
#   nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
#   on Sundays, made away with three-quarters of his income.")
#   # => ["a", "of", "on"]
#   top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e")
#   # => ["e", "ddd", "aa"]
#   top_3_words(" //wont won't won't")
#   # => ["won't", "wont"]
  
  p top_3_words("a a a b c c d d d d e e e e e") == ["e", "d", "a"]
  p top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e") == ["e", "ddd", "aa"]
  # p top_3_words(" //wont won't won't ") == ["won't", "wont"]
  p top_3_words(" , e .. ") == ["e"]
  p top_3_words(" ... ") == []
  p top_3_words(" ' ") == []
  p top_3_words(" ''' ") == []
  # p top_3_words("""In a village of La Mancha, the name of which I have no desire to call to
  # mind, there lived not long since one of those gentlemen that keep a lance
  # in the lance-rack, an old buckler, a lean hack, and a greyhound for
  # coursing. An olla of rather more beef than mutton, a salad on most
  # nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
  # on Sundays, made away with three-quarters of his income.""") == ["a", "of", "on"]
