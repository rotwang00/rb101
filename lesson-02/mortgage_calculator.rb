require "pry"
require "yaml"

MESSAGES = YAML.load_file("mortgage_calculator_messages.yml")

loan_duration_total_months = ""
monthly_interest_rate = ""
monthly_payment = ""

def compute(
    loan_amount,
    loan_duration_years_part,
    loan_duration_months_part,
    apr
  )
  loan_duration_total_months = (loan_duration_years_part * 12) + loan_duration_months_part
  monthly_interest_rate = apr / 12
  monthly_payment = (loan_amount * ((monthly_interest_rate * 0.01) / (1 - (1 + (monthly_interest_rate * 0.01))**(-loan_duration_total_months))))
  return loan_duration_total_months,
    monthly_interest_rate,
    monthly_payment
end

def prompt(key, custom_data="")
  message = format(MESSAGES[key], custom_data: custom_data)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_f.to_s == num || num.to_i.to_s == num
end

def non_negative_number?(num)
  num.to_f >= 0
end

# Get name and greet
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

    if valid_number?(loan_amount) && non_negative_number?(loan_amount)
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

    if valid_number?(apr) && non_negative_number?(apr)
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

    if valid_number?(loan_duration_years_part) && non_negative_number?(loan_duration_years_part)
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

    if valid_number?(loan_duration_months_part) && non_negative_number?(loan_duration_months_part)
      break
    else
      prompt(:number_invalid)
    end
  end

  # Compute results
  loan_duration_total_months, monthly_interest_rate, monthly_payment = compute(loan_amount.to_f, loan_duration_years_part.to_f, loan_duration_months_part.to_f, apr.to_f)

  # Display results
  system("clear") || system("cls")

  prompt(:results)
  puts "\n"
  prompt(:loan_amount_result, format("%.2f", loan_amount))
  prompt(:monthly_interest_rate_result, format("%.2f", monthly_interest_rate))
  prompt(:loan_duration_months_result, loan_duration_total_months.to_i)
  prompt(:monthly_payment_result, format("%.2f", monthly_payment))
  puts "\n"

  # Ask about going again
  prompt(:go_again)
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?("y")
end

prompt(:bye, name)
