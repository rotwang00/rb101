HEX_DIGITS = %w(0 1 2 3 4 5 6 7 8 9 a b c d e f)
UUID_FORMAT = [8, 4, 4, 4, 12]

def create_UUID()
  uuid = ""
  UUID_FORMAT.each do |digits|
    digits.times do
      uuid += HEX_DIGITS.sample
    end
    if uuid.size < 36
      uuid += "-"
    end
  end
  uuid
end

puts create_UUID()