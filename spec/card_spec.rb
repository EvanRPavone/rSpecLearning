# run with rspec ./spec/card_spec.rb
class Card
  attr_reader :type

  def initialize(type)
    @type = type
  end
end

RSpec.describe 'Card' do

  # This block is an 'Example'
  # can be ran with rspec ./spec/card_spec.rb:7
  it 'has a type' do
    card = Card.new('Ace of Spades')
    # creating a new card
    # expect it to have a publicly available attribute called type
    # that i can access
    expect(card.type).to eq('Ace of Spades')
  end

end