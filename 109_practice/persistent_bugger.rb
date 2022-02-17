=begin
Problem
Given a positive integer, find its multiplicative persistence.
That's the number of times you must multiply the digits to
reach a single digit.
Parameters of single digits should return 0.

Examples
39 => 3
3 * 9 = 27
2 * 7 = 14
1 * 4 = 4

64 => 2
6 * 4 = 24
2 * 4 = 8

4 => 0

1234 => 2
1 * 2 * 3 *4 = 24
2 * 4 = 8

Data structure
The parameter integer stringified and split into an array of chars

Algorithm
Initiailize counter to 0
Begin loop
  If num < 10, return counter
  Split num into array of ints and multiply them to get new num
  Increment counter

=end

def persistence(num)
  counter = 0
  loop do
    return counter if num < 10
    num = num.to_s.chars.map(&:to_i).reduce(:*)
    counter += 1
  end
end

p persistence(39) == 3
p persistence(4) == 0
p persistence(25) == 2
p persistence(999) == 4