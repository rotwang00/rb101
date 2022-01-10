In line 5 is an invocation of the method `calculate_bonus` with two parameters, the integer value `2800` and the boolean value `true`.

Lines 1-3 are the definition of the `calculate_bonus` method, which takes two parameters, an integer and a boolean. The integer is assigned to the local variable `salary`, and the boolean is assigned to the local variable `bonus`.

On line 2 is a ternary operator. If `bonus` is `true`, the value of line 2 will be `salary / 2`. If `bonus` is false, the value will be `0`. Since this is the final line of the method, the value of line 2 is the method's return value.

In line 5 the return value of the `calculate_bonus` method is passed to the `puts` method, which outputs that return value, and returns `nil`.
