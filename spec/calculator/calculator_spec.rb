require 'calculator'
describe Calculator do 

  # delcração explícita de subject subject(:calc) { described_class.new(1,2,3)}
  context '#sum' do
    it 'positive numbers ' do
      result = subject.sum(5, 7)
      expect(result).to eq(12)
    end

    it 'negative negative and positive numbers' do
      result = Calculator.new
      result = subject.sum(-5, 7)
      expect(result).to eq(2)
    end

    it 'negative numbers' do
      result = Calculator.new
      result = subject.sum(-5, 7)
      expect(result).to eq(2)
    end
  end
end

=begin 
require 'calculator'
describe 'Classe Calculadora' do 
subject(:calc) { Calculator.new()}
context '#sum' do
it 'positive numbers ' do
result = Calculator.new
result = calc.sum(5, 7)
expect(result).to eq(12)
end
it 'negative negative and positivie numbers' do
result = Calculator.new
result = calc.sum(-5, 7)
(result).to eq(2)
end

it 'negative numbers' do
result = Calculator.new
result = calc.sum(-5, 7)
expect(result).to eq(2)
end
end
end
=end 