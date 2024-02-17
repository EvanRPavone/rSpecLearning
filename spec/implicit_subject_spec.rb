RSpec.describe Hash do
  # subject is the equivalent of calling Hash.new
  # subject is "Hash"

  it 'should start off empty' do
    puts subject
    puts subject.class
    expect(subject.length).to eq(0)
    subject[:some_key] = "Some Value"
    puts subject
    expect(subject.length).to eq(1)
  end

  it 'is isolated between examples' do
    expect(subject.length).to eq(0)
  end

end