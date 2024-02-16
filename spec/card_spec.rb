# run with rspec ./spec/card_spec.rb
class Card
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do
  # This is a helper method
  def card
    Card.new('Ace', 'Spades')
  end

  # This 'it' block is an 'Example'
  it 'has a rank' do
    expect(card.rank).to eq('Ace')
  end

  it 'has a suit' do
    expect(card.suit).to eq('Spades')
  end

end