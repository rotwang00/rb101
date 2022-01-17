fname = 'text2.txt'

content = File.read(fname)
sentences = content.split(/\.|\?|!/)
longest_sentence = ""
longest_word_count = 0
sentences.each do |sentence|
  words = sentence.split(" ")
  if words.size > longest_word_count
    longest_sentence = sentence
    longest_word_count = words.size
  end
end

puts "The longest sentence is:"
puts longest_sentence
puts "It has #{longest_word_count} words."