RSpec.describe Array do
  subject(:sally) do
    ["Hello", "World"]
  end

  it 'starts with 2 values and is able to remove one' do
    puts sally
    expect(sally.length).to eq(2)
    sally.pop
    puts sally
    expect(sally.length).to eq(1)
  end

  it 'starts with 2 values' do
    puts sally
    expect(sally.length).to eq(2)
  end

end