def word_sizes(str)
  lengths = Hash.new(0)
  words = str.split(" ").each do |word|
    size = word.count('a-zA-Z')
    lengths[size] += 1
  end
  lengths
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}