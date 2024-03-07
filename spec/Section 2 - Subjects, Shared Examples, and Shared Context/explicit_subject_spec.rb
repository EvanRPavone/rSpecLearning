RSpec.describe Hash do
  subject(:bob) do
    # whatever is in this block will be what the subject is.
    { a: 1, b: 2}
  end
  # you can use let(:bob) = { {a: 1, b: 2} }

  it 'has two key-value pairs' do
    expect(subject.length).to eq(2)
    expect(bob.length).to eq(2)
  end

  describe 'nested example' do
    it 'has two key-value pairs' do
      expect(subject.length).to eq(2)
      expect(bob.length).to eq(2)
    end
  end
end