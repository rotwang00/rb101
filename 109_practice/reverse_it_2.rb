def reverse_words(original)
  words = original.split
  reversed = words.map do |word|
    if word.length >= 5
      word.chars.reverse.join
    else
      word
    end
  end
  reversed.join(" ")
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS