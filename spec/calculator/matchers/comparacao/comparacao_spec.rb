describe 'Matchers de Comparacao' do 
  it '#equal - Testa se é o mesmo objeto' do
    x = "ruby"
    y= "ruby"
    expect(x).not_to equal(y) # testa se não é o mesmo objeto
    expect(x).to equal(x) # testa se é o mesmo objeto
  end
  it '#be - Testa se é o mesmo objeto' do
    x = "ruby"
    y = "ruby"
    expect(x).not_to be(y) # testa se não é o mesmo objeto
    expect(x).to be(x) # testa se é o mesmo objeto
  end

   it '#eql - Testa se é o valor/conteúdo' do
    x = "ruby"
    y = "ruby"
    expect(x).to eql(y) # testa se é o mesmo valor
  end

   it '#eq - Testa se é o valor/conteúdo' do
    x = "ruby"
    y = "ruby"
    expect(x).to eq(y) # testa se é o mesmo valor
  end
end
