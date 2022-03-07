=begin
P: Understand the Problem
---------------------------------
Problem Statement
A ball is dropped from a tall building. Given:
float h: the height of the first drop
float b: the bounce factor, and
float w: the height of a window,
determine how many time the ball will pass by the window.
The answer will be a positive integer.
When determining how many times the ball can be seen from the window, the ball
must be strictly higher than the window to be seen, not just the same height.
Note: A positive answer will always be odd.

You must validate the inputs. 
h must be > 0
b must be 0 < b < 1
w must be 0 < w < h
If any of the inputs is invalid, return -1

E: Examples, Test Cases, Edge Cases
------------------------------------------
h = 3, bounce = 0.66, window = 1.5, result is 3


D: Data Structure
---------------------
Input: Three floats
Intermediate: 
Output: A positive integer, or -1


A: Algorithm
----------------
Pseudo-code:
return -1 if any of the three conditions is not met
Initiailize view_count to 1
While window < h * b
  Increment view_count by 2
  h = h * b
Return view_count

Helper method(s):


C: Code
---------
=end

def bouncingBall(h, b, w)
  return -1 if h <= 0
  return -1 if b <= 0
  return -1 if b >= 1
  return -1 if w <= 0
  return -1 if w >= h

  view_count = 1
  while w < h * b
    view_count += 2
    h *= b
  end
  view_count
end

p bouncingBall(3, 0.66, 1.5) == 3
p bouncingBall(30, 0.66, 1.5) == 15
p bouncingBall(30, 0.75, 1.5) == 21
p bouncingBall(30, 0.4, 10) == 3
p bouncingBall(40, 1, 10) == -1
p bouncingBall(-5, 0.66, 1.5) == -1
p bouncingBall(1, 0.66, 0.66) == 1
p bouncingBall(1, 0.66, 1) == -1