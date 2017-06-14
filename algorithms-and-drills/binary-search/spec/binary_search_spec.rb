require_relative '../binary_search'

describe 'binary_search' do
  let(:even_letters) { ["a", "b", "c", "d", "e", "f"] }
  let(:odd_letters) { ["a", "b", "c", "d", "e"] }

  context 'array contains even number of elements, including searched for element' do
    it 'returns the index of the element' do
      index_of_a = binary_search("a", even_letters)
      expect(index_of_a).to eq 0
    end

    it 'returns the index of the element' do
      index_of_b = binary_search("b", even_letters)
      expect(index_of_b).to eq 1
    end

    it 'returns the index of the element' do
      index_of_c = binary_search("c", even_letters)
      expect(index_of_c).to eq 2
    end

    it 'returns the index of the element' do
      index_of_d = binary_search("d", even_letters)
      expect(index_of_d).to eq 3
    end

    it 'returns the index of the element' do
      index_of_e = binary_search("e", even_letters)
      expect(index_of_e).to eq 4
    end

    it 'returns the index of the element' do
      index_of_f = binary_search("f", even_letters)
      expect(index_of_f).to eq 5
    end           
  end

  context 'array contains even number of elements, not including searched for element' do
    it 'returns nil if the element cannot be found' do
      index_of_g = binary_search("g", even_letters)
      expect(index_of_g).to eq nil
    end
  end

  context 'array contains odd number of elements, including searched for element' do
    it 'returns the index of the element' do
      index_of_a = binary_search("a", odd_letters)
      expect(index_of_a).to eq 0
    end

    it 'returns the index of the element' do
      index_of_b = binary_search("b", odd_letters)
      expect(index_of_b).to eq 1
    end

    it 'returns the index of the element' do
      index_of_c = binary_search("c", odd_letters)
      expect(index_of_c).to eq 2
    end

    it 'returns the index of the element' do
      index_of_d = binary_search("d", odd_letters)
      expect(index_of_d).to eq 3
    end

    it 'returns the index of the element' do
      index_of_e = binary_search("e", odd_letters)
      expect(index_of_e).to eq 4
    end       
  end

  context 'array contains odd number of elements, not including searched for element' do
    it 'returns nil if the element cannot be found' do
      index_of_g = binary_search("g", odd_letters)
      expect(index_of_g).to eq nil
    end
  end
end
