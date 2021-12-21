def find_anagrams(list)
  sets_of_anagrams = []
  current_array = []

  while list.size > 1 
    search_word = list.shift
    current_array = []
    current_array << search_word
    list.select do |word|
      if anagram?(search_word, word)
        current_array << word
      end
      current_array.each do |word|
        list.delete(word)
      end
    end
    if current_array.size > 1
      sets_of_anagrams << current_array
    end
  end
  p sets_of_anagrams
end

def anagram?(a, b)
  a.chars.sort == b.chars.sort
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
    'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
    'flow', 'neon', 'paul']

find_anagrams(words)