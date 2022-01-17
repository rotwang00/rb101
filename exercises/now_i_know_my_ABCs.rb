def block_word?(word)
  blocks = {
    'B:O' => false,
    'G:T' => false,
    'V:I' => false,
    'X:K' => false,
    'R:E' => false,
    'L:Y' => false,
    'D:Q' => false,
    'F:S' => false,
    'Z:M' => false,
    'C:P' => false,
    'J:W' => false,
    'N:A' => false,
    'H:U' => false
  }
  word.upcase!
  chars = word.chars
  chars.each do |char|
    blocks.each do |k, v|
      if k.include? char
        if v == true
          return false
        else
          blocks[k] = true
        end
      end
    end
  end
  p blocks
  return true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true