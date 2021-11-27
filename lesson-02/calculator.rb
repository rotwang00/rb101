require "yaml"
MESSAGES = YAML.load_file("calculator_messages.yml")

LANGUAGE = "es"

def prompt(key)
  message = MESSAGES[LANGUAGE][key]
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_f.to_s == num || num.to_i.to_s == num
end

def valid_operator?(oper)
  ["1", "2", "3", "4"].include?(oper)
end

def operation_to_message(oper)
  case oper
  when "1"
    "Adding"
  when "2"
    "Subtracting"
  when "3"
    "Multiplying"
  when "4"
    "Dividing"
  end
end

prompt(:welcome)

name = ""
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(:invalid_name)
  else
    break
  end
end

prompt(:greeting)
puts(name)

loop do # main loop
  number1 = ""
  loop do
    prompt(:first_number)
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt(:invalid_number)
    end
  end

  number2 = ""
  loop do
    prompt(:second_number)
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt(:invalid_number)
    end
  end

  operator = ""
  loop do
    prompt(:operand)
    operator = Kernel.gets().chomp()

    if valid_operator?(operator)
      break
    else
      prompt(:invalid_operator)
    end
  end

  puts("#{operation_to_message(operator)} the two numbers...")
  sleep(1)

  result = case operator
           when "1"
             number1.to_f() + number2.to_f()
           when "2"
             number1.to_f() - number2.to_f()
           when "3"
             number1.to_f() * number2.to_f()
           when "4"
             number1.to_f() / number2.to_f()
           end

  prompt(:result)
  puts(result)

  prompt(:go_again)
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?("y")
end

prompt(:bye)
