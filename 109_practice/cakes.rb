=begin
Problem
Given a recipe for a cake and the contents of a pantry,
determine how many cakes (if any) can be made.
Both the recipe and the pantry contents are provided as hashes, with 
ingredients as keys and amounts as values. {"flour" => 200}
There are no units to the amounts, just integers.
If an ingredient is not present in the pantry, assume the amount on hand is 0
Input: A hash for recipe requirements and a hash for ingredients on hand
Output: An non-negative integer

Examples
// must return 2
cakes({flour: 500, sugar: 200, eggs: 1}, 
  {flour: 1200, sugar: 1200, eggs: 5, milk: 200});
// must return 0 (we have no oil on hand)
cakes({apples: 3, flour: 300, sugar: 150, milk: 100, oil: 100}, 
  {sugar: 500, flour: 2000, milk: 2000});
// must return 0 (the pantry is empty)
cakes({"eggs"=>4, "flour"=>400},
  {}

Data structures
The parameter hashes
An answer integer

Algorithm
Iterate through the recipe hash
  For each key, determine how many cakes could be made based on the amount in the pantry (pantry_num)
  If that key (ingredient) doesn't exist in the panty, return 0
  If that key exists, but there isn't enough for even one cake, return 0
  If the num_of_cakes possible variable doesn't exist, initiailize it and set its value
    Else, if num_of_cakes is greater than this ingredient's pantry_num, set pantry_num
Return num_of_cakes
=end

def cakes(recipe, pantry)
  num_of_cakes = 0
  recipe.each do |ingredient, amount|
    return 0 if !pantry.key? ingredient
    num_possible = pantry[ingredient] / recipe[ingredient]
    return 0 if num_possible == 0
    if num_of_cakes == 0
      num_of_cakes = num_possible
    elsif num_possible < num_of_cakes
      num_of_cakes = num_possible
    end
  end
  num_of_cakes
end

p cakes({"flour"=>500, "sugar"=>200, "eggs"=>1},{"flour"=>1200, "sugar"=>1200, "eggs"=>5, "milk"=>200}) == 2
p cakes({"cream"=>200, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>1700, "flour"=>20000,
"milk"=>20000, "oil"=>30000, "cream"=>5000}) == 11
p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000,
"milk"=>2000}) == 0
p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000,
"milk"=>2000, "apples"=>15, "oil"=>20}) == 0
p cakes({"eggs"=>4, "flour"=>400},{}) == 0
p cakes({"cream"=>1, "flour"=>3, "sugar"=>1, "milk"=>1, "oil"=>1, "eggs"=>1},{"sugar"=>1, "eggs"=>1, "flour"=>3,
"cream"=>1, "oil"=>1, "milk"=>1}) == 1
