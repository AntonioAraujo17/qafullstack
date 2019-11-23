class Conta
  #atributos
  attr_accessor :saldo, :nomeCliente

  def initialize(nome)
    self.saldo = 0.0
    self.nomeCliente = "do " + nome
  end

  def depositarDinheiro(valorDepositado)
    self.saldo += valorDepositado
    puts "depositado a quantia de R$ #{valorDepositado} reais na conta #{self.nomeCliente}"
  end
end

c1 = Conta.new("Antonio")

c1.depositarDinheiro(150.00)
