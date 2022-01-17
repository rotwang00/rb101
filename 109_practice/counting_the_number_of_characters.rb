print "Please enter a word or multiple words: "
str = gets.chomp
chars = str.split(" ").join("").size
puts "There are #{chars} characters in \"#{str}\""
