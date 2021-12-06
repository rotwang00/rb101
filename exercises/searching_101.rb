numbers = []
ORDINALS = %w(1st 2nd 3rd 4th 5th)

5.times do |x|
  print "Enter the #{ORDINALS[x]} number: "
  numbers << gets.chomp.to_i
end

print "Enter the last number: "
search_term = gets.chomp.to_i

puts "The number #{search_term} #{numbers.include?(search_term) ? "appears" : "does not appear"} in #{numbers}."
