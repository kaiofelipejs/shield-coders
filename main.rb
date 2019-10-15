class Pessoa
  attr_reader :name, :email
  
  def initialize(name, email)
    @name = name
    @email = email
  end
end

class Rdoer < Pessoa
  attr_accessor :squad, :nickname
  
  def initialize(name, email, squad, nickname)
    super(name, email)
    @squad = squad
    @nickname = nickname
  end

  def summit(will_work, reason)
    will_work == true ? "Go to summit" : "#{name} não vai por esse motivo: #{reason}"
  end
end
# novoRdoer = Rdoer.new("Kaio", "kaio.silva@", "TM", "Kaiera")