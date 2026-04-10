describe 'Matchers Verdadeiro / Falso' do
  it 'be true' do
    expect(1.odd?).to be true # impar 
  end

  it 'be_truthy' do
    expect(1.odd?).to be_truthy # impar 
  end

  it 'be false' do
    expect(1.even?).to be false # par
  end

   it 'be_falsey' do
    expect(1.even?).to be_falsey # par 
  end
end