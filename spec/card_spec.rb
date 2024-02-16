# run with rspec ./spec/card_spec.rb
class Card
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do
  # This 'before' block of code is going to run before each example in our test suite
  # This is a hook
  before do
    puts "Hey, I'll be output before EACH example"
    @card = Card.new('Ace', 'Spades')
  end

  # This 'it' block is an 'Example'
  it 'has a rank' do
    expect(@card.rank).to eq('Ace')
  end

  it 'has a suit' do
    expect(@card.suit).to eq('Spades')
  end

end