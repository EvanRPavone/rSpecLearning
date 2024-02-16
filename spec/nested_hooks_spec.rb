RSpec.describe 'nested hooks' do
  before(:context) do
    puts 'OUTER Before Context'
  end
  before(:example) do
    puts 'OUTER Before Example'
  end

  it 'does basic math' do
    expect(1+1).to eq(2)
  end

  context 'with condition A' do
    before(:context) do
      puts 'INNER Before Context'
    end
    before(:example) do
      puts 'INNER Before Example'
    end

    it 'does some more basic math' do
      expect(1+1).to eq(2)
    end
    it 'does subtraction as well' do
      expect(3-1).to eq(2)
    end
  end
end