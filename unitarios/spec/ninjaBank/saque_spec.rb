class ContaCorrente
    attr_accessor :saldo, :mensagem
    
    def initialize(saldo)
       self.saldo = saldo 
    end
    
    def saque(saque)
        if (saque > self.saldo)
            self.mensagem = 'Saldo insuficiente para saque'
        elsif (saque > 700.00)
            self.mensagem = 'Limite máximo por saque é de R$700'
        else
            self.saldo -= saque
        end
    end    

end

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

        context 'Deu ruim não tenho saldo' do
            before(:all) do
                @conta = ContaCorrente.new(0.0)
                @conta.saque(100.0)
            end

            it 'vejo a mensagem' do
                expect(@conta.mensagem).to eql 'Saldo insuficiente para saque'
            end

            it 'meu saldo final deve ser R$0' do
                expect(@conta.saldo).to eql 0.0
            end
        end

        context 'Tenho saldo mas não suficiente' do
            before(:all) do
                @conta = ContaCorrente.new(500.00)
                @conta.saque(501.00)
            end

            it 'vejo a mensagem' do
                expect(@conta.mensagem).to eql 'Saldo insuficiente para saque'
            end

            it 'meu saldo final deve ser R$500' do
                expect(@conta.saldo).to eql 500.00
            end
        end

        context 'Tentar sacar mais que o permitido por saque' do
            before(:all) do
                @conta = ContaCorrente.new(1000.00)
                @conta.saque(701.00)
            end

            it 'vejo a mensagem' do
                expect(@conta.mensagem).to eql 'Limite máximo por saque é de R$700'       
            end

            it 'meu saldo final deve ser de R$1000' do
                expect(@conta.saldo).to eql 1000.00
            end
        end 

    end
end