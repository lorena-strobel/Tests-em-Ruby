$counter = 0

describe "let" do
  let(:count) {$counter += 1}

  it "memoriza o valor" do
    expect(count).to eq(1) # 1a vez
    expect(count).to eq(1) # 2a vez, valor fica em cache
  end

  it "não é cahceado entre so testes" do
    expect(count).to eq(2) 
  end
end