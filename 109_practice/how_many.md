Lines 1-13 are a method definition which takes one parameter, an Array object named `arr`. Line 2 instantiates the local variable `counts` and points it to an empty Hash object.

Lines 3-9 are an `each` loop interating through `arr`. This loop will return `arr`, although in this case that value is not used. Each element of `arr` is succesively assigned to the local variable `elem`. 

Within the loop is an `if..else` structure. In line 4 the `has_key?` method checks to see if the current element, `elem`, already exists as a key in the hash `counts`. `has_key?` returns `true` or `false`. If `elem` does exist, line 5 increments the value associated with the `elem` key by one. If it does not already exist, line 7 adds `elem` as a new key in `counts` and sets its value to `1`.

Lines 10-12 are another `each` loop. The key-value pairs of `counts` are successively assigned to the local variables `k` and `v`. In line 11 those values are output by the `puts` method with a return value of `nil`.

The method end, returning the value of `counts`.

Line 15-18 instantiate the local variable `vehicles` and assign it to an Array object.

Line 20 invokes the `count_occurrences` method using the parameter `vehicles`.
