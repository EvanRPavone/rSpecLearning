RSpec.describe 'before and after hooks' do
  before(:context) do
    puts "Before context" # runs once -> shows first
  end

  after(:context) do
    puts "After context" # runs once -> shows last
  end

  # this is used to test out speed usually
  before(:example) do
    puts 'Before Example'
  end

  after(:example) do
    puts 'After Example'
  end

  it 'is just a random example' do
    expect(5*4).to eq(20)
  end

  it 'is just another random example' do
    expect(3-2).to eq(1)
  end

end