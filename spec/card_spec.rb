# run with rspec ./spec/card_spec.rb
class Card
  attr_accessor :rank, :suit

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
  it 'has a rank and that rank can change' do
    expect(card.rank).to eq('Ace')
    card.rank = 'Queen'
    # you would be getting back a brand new card
    expect(card.rank).to eq('Queen')
  end

  it 'has a suit' do
    expect(card.suit).to eq('Spades')
  end

end