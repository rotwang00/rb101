def reverse_words(sentence)
  words = sentence.split
  result = words.map do |x|
    x.length >= 5 ? x.reverse : x
  end
  return result.join(" ")
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
