def staggered_case(str)
  counter = 0
  result = str.chars.map do |char|
    if counter.even?
      char.upcase!
    else
      char.downcase!
    end
    if char.match?(/[[:alpha:]]/)
      counter += 1
    end
    char
  end
  result.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'