print "Please enter a word or multiple words: "
answer = gets.chomp

chars = answer.delete(" ").length

puts "\"#{answer}\" contains #{chars} characters."