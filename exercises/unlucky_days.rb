=begin
Problem
Given a year, return the number of Friday the 13ths in that year.
The year will be > 1752
Data class may be helpful
May need to initialize a Date object
There is a method called friday?
Input - A year, as an integer
Output - An integer

Examples
friday_13th(2015) == 3
friday_13th(1986) == 1
friday_13th(2019) == 2

Data structure
A Date object for the given year
A counter for the number of Friday the 13ths

Algorithm
Create a Date object for the given year
Create a counter
Loop through the months
Check each 13th to see if it's a Friday. If so, increment the counter.
Return the counter
=end

require 'date'

def friday_13th(year)
  counter = 0
  (1..12).each do |month|
    if Date.parse("13/#{month}/#{year}").friday?
      counter += 1
    end
  end
  counter
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2

