class Veiculo

    attr_accessor :marca, :nome, :ano

    def initialize(marca, nome, ano)
      @marca = marca
      @nome = nome
      @ano = ano
    end
  
    def ligar
      puts "Seu carro #{nome} do ano #{ano} foi ligado"
    end
  
    def buzinar
      puts "beep! beep!"
    end

end

class Carro < Veiculo
    def dirigir
        puts "dirigindo o carro"
    end

end

class Moto < Veiculo

    def pilotar
        puts "pilotando a #{nome} top"
    end

end

fox = Carro.new("Volks", "fox", "2009")

fox.ligar
fox.buzinar

gol = Carro.new("Volks", "gol", "2019")

gol.ligar
gol.buzinar

fan = Moto.new("Honda", "fan", "2018")
fan.pilotar
