RSpec.describe '#even? method' do
  # use these when using if or when in your 'it' block, this organizes it
  describe 'with even number' do
    it 'should return true' do
      expect(4.even?).to eq(true)
    end
  end

  describe 'with odd number' do
    it 'should return false' do
      expect(5.even?).to eq(false)
    end
  end

  # context method, exact same as above -> this is more common

  context 'with even number | Context method' do
    it 'should return true' do
      expect(4.even?).to eq(true)
    end
  end

  context 'with odd number | Context method' do
    it 'should return false' do
      expect(5.even?).to eq(false)
    end
  end
end