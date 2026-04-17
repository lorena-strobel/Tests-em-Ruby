require 'pessoa'

=begin 
Hooks
before (:each) antes de cada teste
before(:example)

after(:each)
after(:example)
=end
describe 'Atributos' do
  before(:context) do
    puts ">>>>>>>>>> ANTES de TODOS os suítes de testes"
  end

  after(:all) do
    puts ">>>>>>>>>> DEPOIS de TODOS os suítes de testes"
  end

  # before(:each) do 
   #  puts "ANTES"
   #  @pessoa = Pessoa.new
  # end

  # after(:each) do
  #   @pessoa.nome = "Sem nome"
   #  puts "DEPOIS >>>>>> #{@pessoa.inspect}"
  # end

  around(:each) do |teste|
    puts "ANTES"
    @pessoa = Pessoa.new

    teste.run

    @pessoa.nome = "Sem nome"
    puts "DEPOIS >>>>>> #{@pessoa.inspect}"
  end
  it 'have_attributes' do 
    @pessoa.nome = "Jackson"
    @pessoa.idade = 20
    expect(@pessoa).to have_attributes(nome: a_string_starting_with("J"), idade: (a_value >= 20))
  end

    it 'have_attributes' do 
    @pessoa.nome = "Jackson"
    @pessoa.idade = 25
    expect(@pessoa).to have_attributes(nome: a_string_starting_with("J"), idade: (a_value >= 20))
  end
end