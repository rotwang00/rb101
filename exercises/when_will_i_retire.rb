print "What is your age? "
age = gets.chomp.to_i
print "At what age would you like to retire? "
retire_age = gets.chomp.to_i

current_year = Time.now.year
work_years_left = retire_age - age

puts "It's #{current_year}. You will retire in #{current_year + work_years_left}."
puts "You only have #{work_years_left} years of work to go!"
