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

  def summit(will_work, reason)
    will_work == true ? "Go to summit" : "#{name} não vai por esse motivo: #{reason}"
  end
end
# novoRdoer = Rdoer.new("Kaio", "kaio.silva@", "TM", "Kaiera")