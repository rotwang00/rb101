require "pry"
require "yaml"

MESSAGES = YAML.load_file("mortgage_calculator_messages.yml")

loan_dur_tot_mon = ""
mon_int_rate = ""
mon_pmnt = ""

def compute(loan_amt, loan_dur_yrs_part, loan_dur_mth_part, apr)
  loan_dur_tot_mon = (loan_dur_yrs_part * 12) + loan_dur_mth_part
  mon_int_rate = apr / 12

  mon_pmnt = (loan_amt * ((mon_int_rate * 0.01) / (1 -
    (1 + (mon_int_rate * 0.01))**(-loan_dur_tot_mon))))

  return loan_dur_tot_mon,
    mon_int_rate,
    mon_pmnt
end

def prompt(key, custom_data="")
  message = format(MESSAGES[key], custom_data: custom_data)
  Kernel.puts("=> #{message}")
end

def valid_num?(num)
  num.to_f.to_s == num || num.to_i.to_s == num
end

def non_neg_num?(num)
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
  loan_amt = ""
  loop do
    prompt(:loan_amt_prompt)
    loan_amt = Kernel.gets().chomp()

    if valid_num?(loan_amt) && non_neg_num?(loan_amt)
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

    if valid_num?(apr) && non_neg_num?(apr)
      break
    else
      prompt(:number_invalid)
    end
  end

  # Get years part of term
  loan_dur_yrs_part = ""
  loop do
    prompt(:loan_dur_yrs_prompt)
    loan_dur_yrs_part = Kernel.gets().chomp()

    if valid_num?(loan_dur_yrs_part) && non_neg_num?(loan_dur_yrs_part)
      break
    else
      prompt(:number_invalid)
    end
  end

  # Get months part of term
  loan_dur_mth_part = ""
  loop do
    prompt(:loan_dur_mon_prompt)
    loan_dur_mth_part = Kernel.gets().chomp()

    if valid_num?(loan_dur_mth_part) && non_neg_num?(loan_dur_mth_part)
      break
    else
      prompt(:number_invalid)
    end
  end

  # Compute results
  loan_dur_tot_mon, mon_int_rate, mon_pmnt = compute(loan_amt.to_f,
                                                     loan_dur_yrs_part.to_f,
                                                     loan_dur_mth_part.to_f,
                                                     apr.to_f)

  # Display results
  system("clear") || system("cls")

  prompt(:results)
  puts "\n"
  prompt(:loan_amt_result, format("%.2f", loan_amt))
  prompt(:mon_int_rate_result, format("%.2f", mon_int_rate))
  prompt(:loan_dur_mon_result, loan_dur_tot_mon.to_i)
  prompt(:mon_pmnt_result, format("%.2f", mon_pmnt))
  puts "\n"

  # Ask about going again
  prompt(:go_again)
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?("y")
end

prompt(:bye, name)
