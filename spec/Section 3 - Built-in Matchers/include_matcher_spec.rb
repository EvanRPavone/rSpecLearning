# allows us to check whether an object includes something else
RSpec.describe 'include matcher' do
  describe 'hot chocolate' do
    it 'checks for substring inclusion' do
      expect(subject).to include('hot')
      expect(subject).to include('choc')
      expect(subject).to include('late')
    end

    it { is_expected.to include('choc')}
  end

  describe [10,20,30] do
    it 'checks for inclusion in the array, regardless of order' do
      expect(subject).to include(10)
      expect(subject).to include(10,20)
    end

    it { is_expected.to include(10,20)}
  end

  describe ({ a:2, b:4 }) do
    #check for key or key value pair
    it 'can check for a key existence' do
      expect(subject).to include(:a)
      expect(subject).to include(:b, :a)
    end

    it 'can check for a key-value pair' do
      expect(subject).to include(a: 2)
    end

    it { is_expected.to include(a:2) }
    it { is_expected.to include(:b) }

  end

end