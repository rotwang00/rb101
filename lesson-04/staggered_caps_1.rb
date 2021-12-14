def staggered_case(str)
  counter = 0
  result = str.chars.map do |char|
    if counter.even?
      char.upcase!
    else
      char.downcase!
    end
    counter += 1
    char
  end
  result.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'