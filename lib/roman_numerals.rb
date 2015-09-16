class RomanNumerals
  ROMAN_NUMERALS = {1000 => "M", 900 => "CM", 400 => "CD", 500 => "D", 
                    100 => "C", 90 => "XC", 40 => "XL", 50 => "L", 
                    10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I"}

  def self.convert(number)
    roman_numeral = ""
    ROMAN_NUMERALS.each do |k,v|
      (number / k).times { roman_numeral << v; number -= k}
    end
    roman_numeral
  end
end