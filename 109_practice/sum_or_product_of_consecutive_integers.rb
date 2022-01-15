print "Please enter an integer greater than 0: "
num = gets.chomp.to_i

print "Enter 's' to compute the sum, 'p' to compute the product: "
oper = gets.chomp

case oper
when 's'
  sum = (1..num).reduce(&:+)
  puts "The sum of the integers between 1 and #{num} is #{sum}."
when 'p'
  product = (1..num).reduce(&:*)
  puts "The product of the integers between 1 and #{num} is #{product}."
else
  puts "Sorry, I didn't understand that."
end
