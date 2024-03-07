RSpec.describe 'shorthand syntax' do
  subject { 5 }


  context 'with classic syntax' do
    it 'should equal 5' do
      expect(subject).to eq(5)
    end
  end

  context 'with my one-liner syntax' do
    it { is_expected.to eq(5)}
  end

  # shorthand syntax
  # with classic syntax
  #   should equal 5
  # with my one-liner syntax
  #   is expected to eq 5

end