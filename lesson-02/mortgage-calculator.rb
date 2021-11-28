require "pry"

MESSAGES = {
  intro: "Welcome to the Mortgage Calculator!",
  name_prompt: "What is your name?",
  name_invalid: "That doesn't seem to be a real name.",
  number_invalid: "That's not a valid number.",
  welcome: "Welcome, %{custom_data}!",
  loan_amount_prompt: "Please enter loan amount:",
  apr_prompt: "Please enter the annual percentage rate, or APR. For example, for 6.9%% you would enter '6.9':",
  loan_duration_years_prompt: "We'll get the duration of the loan in years and months. For example: 5 years and 3 months. First, please enter the years part of the loan duration:",
  loan_duration_months_prompt: "Now please enter the months part of the duration:",
  results: "Here are the results.",
  loan_amount_result: "The loan amount is $%{custom_data}",
  monthly_interest_rate_result: "The monthly interest rate is %{custom_data}%%",
  loan_duration_months_result: "The term of the loan is %{custom_data} months",
  monthly_payment_result: "The monthly payment will be $%{custom_data}"
}

#################################

loan_duration_total_months = ""
monthly_interest_rate = ""
monthly_payment = ""

def compute(loan_amount, loan_duration_years_part, loan_duration_months_part, apr)
  loan_duration_total_months = (loan_duration_years_part * 12) + loan_duration_months_part
  monthly_interest_rate = apr / 12
  monthly_payment = (loan_amount * ((monthly_interest_rate * 0.01) / (1 - (1 + (monthly_interest_rate * 0.01))**(-loan_duration_total_months))))
  return loan_duration_total_months, monthly_interest_rate, monthly_payment
end

def prompt(key, custom_data="")
  message = format(MESSAGES[key], custom_data: custom_data)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_f.to_s == num || num.to_i.to_s == num
end

##################################

system("clear") || system("cls")

prompt(:intro)

name = ""
loop do
  prompt(:name_prompt)
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(:name_invalid)
  else
    break
  end
end

prompt(:welcome, name)

# Main loop
loop do

  # Get loan amount
  loan_amount = ""
  loop do
    prompt(:loan_amount_prompt)
    loan_amount = Kernel.gets().chomp()

    if valid_number?(loan_amount)
      break
    else
      prompt(:number_invalid)
    end
  end

  # Get APR
  apr = ""
  loop do
    prompt(:apr_prompt)
    apr = Kernel.gets().chomp()

    if valid_number?(apr)
      break
    else
      prompt(:number_invalid)
    end
  end

  # Get years part of term
  loan_duration_years_part = ""
  loop do
    prompt(:loan_duration_years_prompt)
    loan_duration_years_part = Kernel.gets().chomp()

    if valid_number?(loan_duration_years_part)
      break
    else
      prompt(:number_invalid)
    end
  end

  # Get months part of term
  loan_duration_months_part = ""
  loop do
    prompt(:loan_duration_months_prompt)
    loan_duration_months_part = Kernel.gets().chomp()

    if valid_number?(loan_duration_months_part)
      break
    else
      prompt(:number_invalid)
    end
  end

loan_duration_total_months, monthly_interest_rate, monthly_payment = compute(loan_amount.to_f, loan_duration_years_part.to_f, loan_duration_months_part.to_f, apr.to_f)

system("clear") || system("cls")

prompt(:results)
prompt(:loan_amount_result, format("%.2f", loan_amount))
prompt(:monthly_interest_rate_result, format("%.2f", monthly_interest_rate))
prompt(:loan_duration_months_result, loan_duration_total_months.to_i)
prompt(:monthly_payment_result, format("%.2f", monthly_payment))

end  



