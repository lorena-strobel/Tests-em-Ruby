require 'calculator'
RSpec.describe Calculator, "Sobre a calculadora" do 

  context '#div' do
    it 'divide y 0' do
      expect{subject.div(3,0)}.to raise_exception
      expect{subject.div(3,0)}.to raise_exception(ZeroDivisionError)
      expect{subject.div(3,0)}.to raise_exception("divided by 0")
      expect{subject.div(3,0)}.to raise_exception(ZeroDivisionError, "divided by 0") 
      expect{subject.div(3,0)}.to raise_exception(/divided/) 
    end
  end

  # declaração explícita de subject subject(:calc) { described_class.new(1,2,3)}
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