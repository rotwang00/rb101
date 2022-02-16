=begin
Problem
Given the result of rolling 5 6-sided dice, find the maximum score according
  to these values

Three 1's   1000 points
Three 6's    600 points
Three 5's    500 points
Three 4's    400 points
Three 3's    300 points
Three 2's    200 points
One   1      100 points
One   5       50 points

Each die can be counted only once. For example, a 5 could be part of a triplet,
  or score as a singleton, but not both.
Input - an array of integers
Output - an integer

Examples
Throw       Score
 ---------   ------------------
 5 1 3 4 1   250:  50 (for the 5) + 2 * 100 (for the 1s)
 1 1 1 3 1   1100: 1000 (for three 1s) + 100 (for the other 1)
 2 4 4 5 4   450:  400 (for three 4s) + 50 (for the 5)

Data structure
A hash with counts of the results
A hash with the scores for triples
An integer to hold the total score

Algorithm
Create a constant hash with scores for triples.
  Keys are die rolls, and values are scores.
Create an integer for total score
Create an empty hash for roll counts
Iterate through the parameter array
Add each die roll to the hash, with roll values as keys and roll counts as values
Is the value of any key at least 3?
If so, look up the score in the score hash and add it to the total. Also,
  subtract 3 from that key's value.
If any 1's are left in the counts hash, score them.
If any 5's are left in the counts hash, score them.
=end

def score(dice)
  scores = {
    1 => 1000,
    6 =>  600,
    5 =>  500,
    4 =>  400,
    3 =>  300,
    2 =>  200
  }
  total_score = 0
  roll_counts = {
    1 => 0,
    2 => 0,
    3 => 0,
    4 => 0,
    5 => 0,
    6 => 0
  }

  dice.each do |roll|
    roll_counts[roll] += 1
  end
  triple = roll_counts.select { |k, v| v >= 3 }
  if triple.size == 1
    triple_roll = triple.keys[0]
    total_score += scores[triple_roll]
    roll_counts[triple_roll] -= 3
  end
  total_score += roll_counts[1] * 100
  total_score += roll_counts[5] * 50
  p total_score
end

score([5, 1, 1, 4, 1])