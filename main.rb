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

  def summit(will_work, reason="")
    jobs = ['Chopeira', 'Credenciamento', 'Gerenciamento de Filas', 'Hosts dos Palestrantes']

    if will_work == true
      rdoerJob = job_select(jobs)
      puts "#{name} vai no Summit e vai trabalhar com #{rdoerJob}"
    else 
      "#{name} não vai no Summit por esse motivo: #{reason}"
    end
  end

  private def job_select(jobs)
    @jobs = jobs
    randomNumber = rand(0...4)
    rdoerJob = jobs[randomNumber]
    return rdoerJob
  end
end
# novoRdoer = Rdoer.new("Kaio", "kaio.silva@", "TM", "Kaiera")