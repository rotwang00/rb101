def minilang(str)
  input = str.split(" ")
  register = 0
  stack = []

  loop do
    instruction = input.shift
    if instruction.to_i.to_s == instruction
      register = instruction.to_i
    else case instruction
      when "PUSH"
        stack.unshift register
      when "ADD"
        register += stack.shift
      when "SUB"
        register -= stack.shift
      when "MULT"
        register *= stack.shift
      when "DIV"
        register /= stack.shift
      when "MOD"
        register = register % stack.shift
      when "POP"
        register = stack.shift
      when "PRINT"
        puts register
      end
    end
    break if input.size == 0
  end
end

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
