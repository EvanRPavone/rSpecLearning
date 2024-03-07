class King
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

RSpec.describe King do
  subject { described_class.new('Boris') }
  let(:louis) { described_class.new('Louis') }
  # referencing whatever class is under Test
  # dynamically describes whatever class
  it 'represents a great person' do
    expect(subject.name).to eq('Boris')
    expect(louis.name).to eq('Louis')
  end

end