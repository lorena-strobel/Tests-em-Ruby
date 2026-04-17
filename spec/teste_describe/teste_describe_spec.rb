describe 'description' do
  it 'String' do
    str = "Jackson"
    expect(str.size).to eq(7)
  end
end

describe "jackson" do
  it 'String' do
    expect(subject.size).to eq(7)
  end
end
describe [1,2] do
  it 'Array' do 
    expect(subject).to be_kind_of(Array)
  end
end