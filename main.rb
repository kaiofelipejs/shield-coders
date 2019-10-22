class Pessoa
  attr_reader :name, :email
  
  def initialize(name, email)
    @name = name
    @email = email
  end
end

class Rdoer < Pessoa
  attr_accessor :squad, :nickname
  
  def initialize(name, email, squad, nickname, job)
    super(name, email)
    @squad = squad
    @nickname = nickname
    @job = job
  end

  def summit(will_work, reason="")
    if will_work == true
      rdoer_job = job_select
      puts "#{name} vai trabalhar com #{rdoer_job}."
    else 
      "#{name} não vai no Summit por esse motivo: #{reason}."
    end
  end

  private 
  
  def job_select
    all_jobs = ['Chopeira', 'Credenciamento', 'Gerenciamento de Filas', 'Hosts dos Palestrantes']
    if all_jobs.include?(@job)
      return @job
    end
      puts "Ops! #{@job} não está disponível, vamos sortear outra job aleatoriamente."
      puts ".\n" * 3 
      random_number = rand(all_jobs.length)
      rdoer_job = all_jobs[random_number]
      return rdoer_job
  end
end
novoRdoer = Rdoer.new("Kaio", "kaio.silva@", "TM", "Kaiera", "Limpeza")