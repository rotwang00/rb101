def reverse_sentence(sent)
  result = []
  words = sent.split(" ")
  words.map do |x|
    result.prepend(x) 
  end
  return result.join(" ")
end

p reverse_sentence("Hello world")
p reverse_sentence("    ")