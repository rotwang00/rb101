hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

flat = hsh.to_a.flatten.each do |elem|
  if elem.is_a? String
    elem.chars.each do |char|
      if "aeiouAEIOU".include? char
        print char
      end
    end
  end
end


