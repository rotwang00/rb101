print "Please enter an integer greater than 0: "
limit = gets.chomp.to_i
print "Enter 's' to compute the sum, 'p' to compute the product: "
operation = gets.chomp

if operation == "s"
  puts (1..limit).reduce(&:+)
elsif operation == "p"
  puts (1..limit).reduce(&:*)
else
  puts "Sorry, I didn't understand you."  
end

