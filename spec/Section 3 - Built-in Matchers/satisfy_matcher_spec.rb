# allows us to create our very own assertions/expectations
RSpec.describe 'satisfy matcher' do
  subject{ 'racecar' }
  # subject{ 'racecars' }

  it 'is a palendrome' do
    expect(subject).to satisfy { |value| value == value.reverse }
  end

  it 'can accept a custom error message' do
    expect(subject).to satisfy('be a palendrome') do |value|
      value == value.reverse
    end
    # IS THE SAME AS
    expect(subject).to satisfy { |value| value == value.reverse }
  end

end