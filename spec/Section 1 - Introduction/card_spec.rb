# run with rspec ./spec/card_spec.rb
class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do
  # lazy loading... This line will not run until it is called in the example
  let(:card) { Card.new('Ace', 'Spades') }
  # let! with a ! before every example it will run. basically the before block we used a few commits ago

  # This 'it' block is an 'Example'
  it 'has a rank and that rank can change' do
    expect(card.rank).to eq('Ace') # the first time this runs, it will cache so it will not make a new card when reassigning
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen')
  end

  it 'has a suit' do
    # will get new card for this example
    expect(card.suit).to eq('Spades')
  end

  it 'has a custom error message' do
    comparison = 'Spades'
    expect(card.suit).to eq(comparison), "Hey, I expected #{comparison} but I got #{card.suit} instead"
  end

end