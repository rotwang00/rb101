words = "the flintstones rock"

def titelize(str)
  words = str.split(" ")
  words.each do |word|
    word.capitalize!
  end
  words.join(" ")
end

puts titelize(words)