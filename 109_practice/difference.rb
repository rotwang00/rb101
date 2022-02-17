def scramble(s1,s2)
  return s2.chars.difference(s1.chars) == []
end

p scramble('rkqodlw', 'world')