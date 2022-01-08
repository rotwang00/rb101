In line 5 the `average` method is invoked and the return value passed to the `puts` method. This `puts` method will output that return value from `average` and return an unused `nil`. The parameter passed into `average` is an array of integers.

Lines 1-3 are a method definition for `average` which accepts one parameter, an array of integers. The local variable `arr` is set to the value of that array for the duration of the `average` method.

Line 2 contains all the computation, via three method calls. First, the `reduce` method is called on `arr` with syntactic sugar `(:+)` in place of tradition block notation, `do...end` or `{}`. The return value of `reduce` is the total of all the integers in the array.

On the right side of the division operator is another method call on `arr`, `size`. This returns the number of elements in `arr`.

Once these two numbers are determined, they are passed to the division operator. The result of this operation, which is the average of the integers in `arr`, is the return value of the `average` method, since it is the last value computed.
