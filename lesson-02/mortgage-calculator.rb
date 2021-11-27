MESSAGES = {
  intro: "Welcome to the Mortgage Calculator!",
  name_prompt: "What is your name?",
  name_invalid: "That doesn't seem to be a real name.",
  number_invalid: "That's not a valid number.",
  welcome: "Welcome, %{custom_data}!",
  loan_amount_prompt: "Please enter loan amount:",
  apr_prompt: "Please enter the annual percentage rate, or APR. For example, for 6.9% you would enter '6.9':",
  loan_duration_years_prompt: "We'll get the duration of the loan in years and months. For example: 5 years and 3 months. First, please enter the years part of the loan duration:",
  loan_duration_months_prompt: "Now please enter the months part of the duration:",
  results: "Here are the results.",
  monthly_interest_rate_result: "The monthly interest rate is %{custom_data}%",
  loan_duration_months_result: "The term of the loan is %{custom_data} months",
  monthly_payment_result: "The monthly payment will be %{custom_data}"
}

def compute_monthly_payment()
  monthly_payment = (loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-loan_duration_months))))
end

def prompt(key, custom_data="")
  message = format(MESSAGES[key], custom_data: custom_data)
  Kernel.puts("=> #{message}")
end

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
  



end