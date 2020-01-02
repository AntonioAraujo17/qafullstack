class ContaCorrente
    attr_accessor :saldo
    
    def initialize(saldo)
       self.saldo = saldo 
    end
    
    def saque(saque)
        self.saldo -= saque
    end    

end

a


describe ContaCorrente do
    
    describe 'Saque' do
        context 'quando o valor é positivo' do
             before(:all) do
                 @conta = ContaCorrente.new(1000.00)
                 @conta.saque(200.00)
             end

            it 'entao meu saldo fica R$800' do
               expect(@conta.saldo).to eql 800.00 
            end
        end
    end
end