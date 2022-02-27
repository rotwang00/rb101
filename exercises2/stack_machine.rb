=begin
Problem
Implement a stack and register language.
The instructions and values will be supplied in a single string,
  with items separated by spaces.
All operations will be integer operations, including DIV and MOD
The register should be initiailized to 0.
The stack will begin empty.
#push and #pop will be the primary methods used.
If an operation requires two values, such as ADD,
  pop the topmost item from the stack (which removes the item),
  perform the operation using that value and the register value,
  and store the result in the register.
You can assume the program is well-formed.

Commands
n     Place n in the register. Don't change the stack
PUSH  Put the register value in the stack, leaving the value in the register
ADD   Pop a value from the stack, add it to the register, and store the result in the register
SUB   Same idea
MULT  Same idea
DIV   Same idea
MOD   Same idea
POP   Remove the topmost item from the stack and place in register
PRINT Display the register value

Input: A string of commands and values
Output: Nothing or printout from the program that's running

Examples
minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)

Data structures
An array for the stack
An int variable for the register

Algorithm
Initiailize stack to []
Initiailize register to 0
Split parameter string into array by spaces: program
Iterate through program
Use case to branch
  Handle words first
  Handle numbers last, as default

=end

def minilang(program_str)
  stack = []
  register = 0
  program = program_str.split(" ")
  program.each do |step|
    
    case step
    
    when "PUSH"
      stack.push(register)
    when "ADD"
      register += stack.pop
    when "SUB"
      register -= stack.pop
    when "MULT"
      register *= stack.pop
    when "DIV"
      register /= stack.pop
    when "MOD"
      register %= stack.pop
    when "POP"
      register = stack.pop
    when "PRINT"
      puts register
    else
      register = step.to_i
    end
  end
end

minilang('PRINT')