def convert_to_roman(arabic_number, modern=false)
  roman_numeral = ""

  thousands = arabic_number/1000
  five_hundreds = (arabic_number%1000)/500
  hundreds = (arabic_number%500)/100
  fifties = (arabic_number%100)/50
  tens = (arabic_number%50)/10
  fives = (arabic_number%10)/5
  ones = (arabic_number%5)

  if !modern
    roman_numeral << "M" * thousands
    roman_numeral << "D" * five_hundreds
    roman_numeral << "C" * hundreds
    roman_numeral << "L" * fifties
    roman_numeral << "X" * tens
    roman_numeral << "V" * fives
    roman_numeral << "I" * ones
  else
    roman_numeral << "M" * thousands

    if five_hundreds == 1 && hundreds == 4
      roman_numeral << "CM"
    elsif hundreds == 4
      roman_numeral << "CD"
    else
      roman_numeral << "D" * five_hundreds
      roman_numeral << "C" * hundreds
    end

    if fifties == 1 && tens == 4
      roman_numeral << "XC"
    elsif tens == 4
      roman_numeral << "XL"
    else
     roman_numeral << "L" * fifties
     roman_numeral << "X" * tens
    end

    if fives == 1 && ones == 4
      roman_numeral << "IX"
    elsif ones == 4
      roman_numeral << "IV"
    else
      roman_numeral << "V" * fives
      roman_numeral << "I" * ones
    end
  end
end
