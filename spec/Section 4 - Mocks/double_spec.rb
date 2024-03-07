# mock means to emulate something or to replace a real thing with a simulated version of it.
# A Test double is basically just an object that can respond to any variety of methods that we define on it.
RSpec.describe 'a random double' do
  it 'only allows defined methods to be invoked' do
    # stuntman = double("Mr. Danger", fall_off_ladder: "Ouch", light_on_fire: true)
    # expect(stuntman.fall_off_ladder).to eq('Ouch')
    # expect(stuntman.light_on_fire).to eq(true)

    # stuntman = double("Mr. Danger")
    # allow(stuntman).to receive(:fall_off_ladder).and_return('Ouch')
    # expect(stuntman.fall_off_ladder).to eq('Ouch')

    stuntman = double("Mr. Danger")
    allow(stuntman).to receive_messages(fall_off_ladder: 'Ouch', light_on_fire: true)
    expect(stuntman.fall_off_ladder).to eq('Ouch')
    expect(stuntman.light_on_fire).to eq(true)
  end
end