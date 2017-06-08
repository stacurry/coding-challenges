def convert_to_roman(arabic_number, modern=false)
  old_arabic_to_roman = { 1000  => "M",
                          500   => "D",
                          100   => "C",
                          50    => "L",
                          10    => "X",
                          5     => "V",
                          1     => "I" }

  new_arabic_to_roman = { 1000  => "M",
                          900   => "CM",
                          500   => "D",
                          400   => "CD",
                          100   => "C",
                          90    => "XC",
                          50    => "L",
                          40    => "XL",
                          10    => "X",
                          9     => "IX",
                          5     => "V",
                          4     => "IV",
                          1     => "I" }                          

  if modern
    convert(arabic_number, new_arabic_to_roman)
  else
    convert(arabic_number, old_arabic_to_roman)
  end
end

def convert(arabic_number, conversion_hash)
  roman_numeral = ""
  remainder = arabic_number
  
  conversion_hash.each do |arabic, roman|
    until remainder < arabic
      roman_numeral << roman
      remainder -= arabic
    end
  end
  return roman_numeral
end
