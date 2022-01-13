print "What is your age? "
current_age = gets.chomp.to_i

print "At what age would you like to retire? "
retirement_age = gets.chomp.to_i

years_left = retirement_age - current_age
year = Time.new.year


puts "It's #{year}. You will retire in #{year + years_left}."
puts "You have only #{years_left} years of work to go!"
