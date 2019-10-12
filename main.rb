class Pessoa
  attr_reader :nome, :email
  
  def initialize(nome, email)
    @nome = nome
    @email = email
  end
end

class Rdoer < Pessoa
  attr_accessor :time, :apelido
  
  def initialize(nome, email, time, apelido)
    super(nome, email)
    @time = time
    @apelido = apelido
  end

end

novoRdoer = Rdoer.new("Kaio", "kaio.silva@", "TM", "Kaiera")