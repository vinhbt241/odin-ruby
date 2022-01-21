require 'pry-byebug'

def caesar_cipher(str, shift)
  chars = str.split("")
  result = chars.map do |char|
    if char.match?(/[A-Za-z]/)
      trans_val = char.downcase.ord + shift
      if trans_val > "z".ord
        trans_val = "a".ord + (shift - ("z".ord - char.downcase.ord)) - 1
      end
      if char.match?(/[[:upper:]]/)
        trans_val.chr.upcase
      else
        trans_val.chr
      end
    else
      char
    end
  end
  result.join("")
end

# Example
puts caesar_cipher("What a string!", 5)




