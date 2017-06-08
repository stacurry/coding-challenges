require_relative '../roman_numerals'

describe 'converting an Arabic number to a Roman numeral' do
  describe 'old Roman numerals' do
    it 'converts 1 to I' do
      expect(convert_to_roman(1)).to eq "I"
    end

    it 'converts 4 to IIII' do
      expect(convert_to_roman(4)).to eq "IIII"
    end

    it 'converts 5 to V' do
      expect(convert_to_roman(5)).to eq "V"
    end

    it 'converts 9 to VIIII' do
      expect(convert_to_roman(9)).to eq "VIIII"
    end

    it 'converts 2942 to MMDCCCCXXXXII' do
      expect(convert_to_roman(2942)).to eq "MMDCCCCXXXXII"
    end
  end

  describe 'modern Roman numerals' do
    it 'converts 4 to IV' do
      expect(convert_to_roman(4, true)).to eq "IV"
    end

    it 'converts 9 to IX' do
      expect(convert_to_roman(9, true)).to eq "IX"
    end

    it 'converts 8 to VIII' do
      expect(convert_to_roman(8, true)).to eq "VIII"
    end

    it 'converts 39 to XXXIX' do
      expect(convert_to_roman(39, true)).to eq "XXXIX"
    end

    it 'converts 99 to XCIX' do
      expect(convert_to_roman(99, true)).to eq "XCIX"
    end

    it 'converts 400 to CD' do
      expect(convert_to_roman(400, true)).to eq "CD"
    end

    it 'converts 944 to CMXLIV' do
      expect(convert_to_roman(944, true)).to eq "CMXLIV"
    end

    it 'converts 2999 to MMCMXCIX' do
      expect(convert_to_roman(2999, true)).to eq "MMCMXCIX"
    end
  end
end
