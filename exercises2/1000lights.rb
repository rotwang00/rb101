=begin
Problem
You have a bank of switches, each connected to a light.
You are givin one parameter, n, an integer denoting how many switches there are.
All switches begin in the off position.
You will make n passes through the switches.
The first pass, you will toggle every switch.
On pass 2, you will toggle switches 2, 4, 6, 8 and so on.
On pass 3, you will toggle switches 3, 6, 9, and so on.
In general, on pass x you will toggle every x switch.
Continue until you have made n passes.
Which lights are now on?
The answer will be an array of integers indicating which lights are on.

Input: An integer
Output: An array of integers

Examples
Example with n = 5 lights:

round 1: every light is turned on
round 2: lights 2 and 4 are now off; 1, 3, 5 are on
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
The return value is [1, 4]

n = 10 => [1, 4, 9]

Data structrues/Algorithm
An array to hold the results

The mathmatical method
Initiailize a result array
Initialize a counter to 1
Start an infinite loop
  Square the counter
  If that square is <= n
    Add square to result
  Else
    Return result
  Increment counter
=end

def lights(n)
  result = []
  counter = 1
  while true do
    square = counter ** 2
    if square <= n
      result << square
    else
      return result
    end
    counter += 1
  end
end

p lights(22)