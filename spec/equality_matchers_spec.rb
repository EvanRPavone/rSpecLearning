RSpec.describe 'equality matchers' do
  let(:a) { 3.0 }
  let(:b) { 3 }

  describe 'eq matcher' do
    it 'tests for value and ignores type' do
      expect(a).to eq(3)
    end
  end

  describe 'eql matcher' do
    it 'tests for value, including same type' do
      expect(a).not_to eql(b)
      expect(b).not_to eql(3.0)

      expect(a).to eql(3.0)
      expect(b).to eql(3)
    end
  end

  describe 'equal and be matcher' do
    let(:c) { [1,2,3] }
    let(:d) { [1,2,3] }
    let(:e) { c }
    # equality and identity
    # equality = checking two things equal in design
    # identity = check if the 2 things are the same thing

    it 'cares about object identity' do
      expect(c).to eq(d) # This would pass
      expect(c).to eql(d) # This would pass

      expect(c).to equal(e) # its the same array, same object
      # expect(c).to equal(d) # fails
      # expected #<Array:2260> => [1, 2, 3]
      # got #<Array:2280> => [1, 2, 3]
      expect(c).to be(e) # same thing as equal, preferred
      expect(c).not_to equal(d)
      expect(c).not_to equal([1,2,3])
    end
  end

end