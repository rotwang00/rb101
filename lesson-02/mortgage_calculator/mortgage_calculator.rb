require "yaml"

MESSAGES = YAML.load_file("mortgage_calculator_messages.yml")

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

def get_loan_amount
  amount = ""
  loop do
    prompt(:loan_amt_prompt)
    amount = Kernel.gets().chomp()

    if valid_num?(amount) && non_neg_num?(amount)
      return amount
    else
      prompt(:number_invalid)
    end
  end
end

def get_apr
  rate = ""
  loop do
    prompt(:apr_prompt)
    rate = Kernel.gets().chomp()

    if valid_num?(rate) && non_neg_num?(rate)
      return rate
    else
      prompt(:number_invalid)
    end
  end
end

def get_loan_dur_yrs_part
  years = ""
  loop do
    prompt(:loan_dur_yrs_prompt)
    years = Kernel.gets().chomp()

    if valid_num?(years) && non_neg_num?(years)
      return years
    else
      prompt(:number_invalid)
    end
  end
end

def get_loan_dur_mth_part
  months = ""
  loop do
    prompt(:loan_dur_mon_prompt)
    months = Kernel.gets().chomp()

    if valid_num?(months) && non_neg_num?(months)
      return months
    else
      prompt(:number_invalid)
    end
  end
end


loan_dur_tot_mon = ""
mon_int_rate = ""
mon_pmnt = ""

def compute(loan_amt, loan_dur_yrs_part, loan_dur_mth_part, apr)
  loan_dur_tot_mon = (loan_dur_yrs_part * 12) + loan_dur_mth_part
  mon_int_rate = apr / 12

  # Version if APR is 0%
  if apr == 0
    mon_pmnt = loan_amt / loan_dur_tot_mon
    return loan_dur_tot_mon,
      mon_int_rate,
      mon_pmnt
  end

  #Version if APR is positive
  mon_pmnt = (loan_amt * ((mon_int_rate * 0.01) / (1 -
    (1 + (mon_int_rate * 0.01))**(-loan_dur_tot_mon))))

  return loan_dur_tot_mon,
    mon_int_rate,
    mon_pmnt
end

def run_again?
  prompt(:go_again)
  answer = ""
  loop do
    answer = Kernel.gets().chomp()
    answer.downcase!
    if answer == "y" or answer == "yes"
      return true
    elsif answer == "n" or answer == "no"
      return false
    end
    prompt(:go_again_invalid)
  end
end

 def display_results(amount, rate, dur, payment)
  system("clear") || system("cls")
  prompt(:results)
  puts "\n"
  prompt(:loan_amt_result, format("%.2f", amount))
  prompt(:mon_int_rate_result, format("%.2f", rate))
  prompt(:loan_dur_mon_result, dur.to_i)
  prompt(:mon_pmnt_result, format("%.2f", payment))
  puts "\n"
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

first_time = true

# Main loop
loop do
  system("clear") || system("cls")

  if first_time
    prompt(:welcome, name)
    first_time = false
  end

  loan_amt = get_loan_amount()
  apr = get_apr()
  loan_dur_yrs_part = get_loan_dur_yrs_part()
  loan_dur_mth_part = get_loan_dur_mth_part()
 
  loan_dur_tot_mon, mon_int_rate, mon_pmnt = compute(loan_amt.to_f,
                                                     loan_dur_yrs_part.to_f,
                                                     loan_dur_mth_part.to_f,
                                                     apr.to_f)

  display_results(loan_amt, mon_int_rate, loan_dur_tot_mon, mon_pmnt)
  
  break unless run_again?()
end

prompt(:bye, name)
