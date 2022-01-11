def print_age(name)
  puts "#{name} is #{rand(20..200)} years old!"
end

print "Please give me a name: "
input = gets.chomp
if input == ""
  input = "Teddy"
end

print_age(input)
