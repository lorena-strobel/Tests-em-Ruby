describe 'Test Double' do # cria um duble
  it '--' do
    user = double('User')
    allow(user).to receive_messages(name: 'Jack', password: 'secret')
    user.name
    user.password
  end

  it 'as_null_object' do
    user = double('User').as_null_object
    allow(user).to receive_messages(name: 'Jack', password: 'secret')
    puts user.name
    puts user.password
    user.abc
  end
end

=begin
O dublê de teste é um termo genérico para qualquer objeto falso, utlizado no lugar
de um objeto real, para propósitos de testes.
=end