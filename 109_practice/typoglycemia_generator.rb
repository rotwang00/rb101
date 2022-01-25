# Problem
# Provided a string, for each word in the string, alphabatize all interior letters.
# The first and last letters remain as they are.
# Words are separated only by spaces.
# The only four punctuation marks: - ' , .
# Even in punctuation starts or ends a word, the first and last letters remain.
# Ignore capitalization
# Input - A string, which can be empty or contain one or multiple words.
# Output - A string with the interior letters of each word alphabatized.
#
# Examples
# p scramble_words('professionals') == 'paefilnoorsss'
# p scramble_words('i') == 'i'
# p scramble_words('') == ''
# p scramble_words('me') == 'me'
# p scramble_words('you') == 'you'
# p scramble_words('card-carrying') == 'caac-dinrrryg'
# p scramble_words("shan't") == "sahn't"
# p scramble_words('-dcba') == '-dbca'
# p scramble_words('dcba.') == 'dbca.'
# p scramble_words("you've gotta dance like there's nobody watching, love like you'll never be hurt, sing like there's
# nobody listening, and live like it's heaven on earth.") == "you've gotta dacne like teehr's nbdooy wachintg, love like ylo'ul
# neevr be hrut, sing like teehr's nbdooy leiinnstg, and live like it's haeevn on earth."
#
# Data structure
# The original string
# Temp variables for the first and last letters, and any punctuation that might be included
# The answer string
#
# Algorithm
# If string is empty, return an empty string
# Split string into words based on spaces into an array called "words"
# Map words to a new string called "reversed"
# For each word:
#   Split word into array called "chars"
#   