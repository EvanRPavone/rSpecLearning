# allow us to combine more than one matcher on a single line

RSpec.describe 25 do
  it 'can test for multiple matchers' do
    # expect(subject).to be_odd
    # expect(subject).to be > 20

    expect(subject).to be_odd.and be > 20
  end

  it { is_expected.to be_odd.and be > 20 }
end

describe 'caterpillar' do
  it 'supports multiple matchers on a single line' do
    expect(subject).to start_with('cat').and end_with('pillar')
  end

  it { is_expected.to start_with('cat').and end_with('pillar')}
end

RSpec.describe [:usa, :canada, :mexico] do
  it 'can check for multiple possiblities' do
    expect(subject.sample).to eq(:usa).or eq(:canada).or eq(:mexico)
  end
end