# Problem
# Remove all occurences of WUB from a string.
# The string is all uppercase letters
# The string is <= 200 characters
# WUB at the beginning or end of the string should be deleter
# WUB within the string should be replaced with a space
# Multiple consecutive interior WUBs get a single space
# Input - a string with WUBs
# Output - a string without WUBs
#
# Examples
# p song_decoder("AWUBBWUBC") == "A B C"
# p song_decoder("AWUBWUBWUBBWUBWUBWUBC") == "A B C"
# p song_decoder("WUBAWUBBWUBCWUB") == "A B C"
#
# Data structure
# The original and answer strings
#
# Algorighm
# Replace each occurence of WUB with a space
# Chop whitespace from start and end
# Replace consecutive spaces with a single space
# Return the string

def song_decoder(dance)
  dance.gsub!("WUB", " ")
  dance.strip!
  loop do
    dance.gsub!("  ", " ")
    break if !dance.include? "  "
  end
  p dance
  dance
end

p song_decoder("AWUBBWUBC") == "A B C"
p song_decoder("AWUBWUBWUBBWUBWUBWUBC") == "A B C"
p song_decoder("WUBAWUBBWUBCWUB") == "A B C"