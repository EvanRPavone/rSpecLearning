RSpec.describe Array do 

  it 'starts empty and can have values added' do
    puts subject
    expect(subject.length).to eq(0)
    subject.push("A Value")
    puts subject
    expect(subject.length).to eq(1)
  end

end