=begin
Problem
Given an odd, positive integer, display a 4-pointed diamond in an
n x n grid.
Input: An odd positive integer
Output: A display of a diamond

Examples
diamond(1)

*

diamond(3)

 *
***
 *

diamond(9)

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *

Row 1: 4 spaces 1 *
Row 2: 3 spaces 3 *
Row 3: 2 spaces 5 *
Row 4: 1 space  7 *
Row 5: 0 spaces 9 *

Height of top: (n / 2) + 1 ('half')

Number of spaces: half - row_number

Number of *: (row_number * 2) -1

Bottom half
Iteration Rows
1: 4
2: 3
3: 2
4: 1


Data structures
Array to hold rows
Each row is a string

Algorithm
Initialize array: diamond
half = (n / 2) +1
Iterate 1 to half |row_number|
  Initiailize row to ""
  Add spaces to row (half - row_number)
  Add stars to row (row_number * 2) - 1
  Store row in diamond
Iterate 1 to (half - 1) |row|
  diamond << diamond[half - row - 1]
Display diamond
=end

def diamond(n)
  diamond = []
  half = (n / 2) + 1
  (1..half).each do |row_number|
    row = ""
    row += " " * (half - row_number)
    row += "*" * ((row_number * 2) -1)
    diamond << row
  end
  (1..(half - 1)).each do |row|
    diamond << diamond[half - row - 1]
  end
  puts diamond
end

diamond(13)