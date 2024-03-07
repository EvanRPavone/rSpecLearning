# Spies are an alternate type of test double,
# and the difference between them is that they follow a slightly
# different pattern when it comes to testing

# One big advantage of spies is that they automatically
# observe all the messages that are sent to an object, 
# even if we haven't defined that message

# On a double we have to tell it
# Youre going to have these available methods and we're going to expect
# these methods to be invoked
# A Spy will keep track of any messages that it receives, even if we havent
# explicitly told it that those messages will be received

RSpec.describe 'spies' do
  let(:animal) { spy('animal') }

  it 'confirms that a message has been received' do
    animal.eat_food
    expect(animal).to have_received(:eat_food)
    expect(animal).not_to have_received(:eat_human)
    animal.eat_human
    expect(animal).to have_received(:eat_human)
  end

  it 'resets between examples' do
    expect(animal).not_to have_received(:eat_food)
  end

  it 'retains the same functionality of a regular double' do
    animal.eat_food
    animal.eat_food
    animal.eat_food('Sushi')
    expect(animal).to have_received(:eat_food).exactly(3).times
    expect(animal).to have_received(:eat_food).at_least(3).times
    expect(animal).to have_received(:eat_food).with('Sushi')
    expect(animal).to have_received(:eat_food).once.with('Sushi')
  end

end