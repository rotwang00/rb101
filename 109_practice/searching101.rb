ORDINALS = %w(1st 2nd 3rd 4th 5th)

data = []

ORDINALS.each do |num|
  print "Enter the #{num} number: "
  input = gets.chomp.to_i
  data << input
end

print "Enter the number to search for: "
search = gets.chomp.to_i

if data.include? search
  puts "#{search} appears in #{data}."
else
  puts "#{search} does not appear in #{data}."
end
