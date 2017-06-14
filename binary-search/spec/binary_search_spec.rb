require_relative '../binary_search'

describe 'binary_search' do
  let(:letters) { ["a", "b", "c", "d"] }
  context 'when the array contains the searched-for element' do
    it 'returns the index of the first occurrence of the element' do
      index_of_c = binary_search("c", letters)
      expect(index_of_c).to eq 2
    end
  end

  context 'when the array does not contain the searched-for element' do
    it 'returns nil if the element cannot be found' do
      index_of_e = binary_search("e", letters)
      expect(index_of_e).to eq nil
    end
  end
end
