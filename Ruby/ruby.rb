puts "hello world"

produto1 = 10
produto2 = "1"
produto3 = 1.1

puts produto1 + produto2.to_i + produto3

puts produto3.class

if produto1 >= produto3
  puts "a"
else
  puts "b"
end

def nome(meunome)
  puts "Seu nome, " + meunome
end

nome("Antonio")

def cal(v1, v2)
  total = v1 + v2
  total
end

puts cal(1, 2)

# loops

puts "\nloop times starts here\n"

5.times do |iterador|
  puts "repetição " + iterador.to_s + " vezes"
end

puts "\nLoop while starts here \n\n"

init = 0
while init <= 10
  puts "repetição " + init.to_s + " vezes"
  init += 1
end

puts "\nloop for starts here\n\n"

for item in (3...6)
  puts "repetição do loop for " + item.to_s + " vezes"
end

puts "\nloop foreach starts here\n\n"

#array

avengers = ["ironman", "thor", "hulk"]

avengers.each do |a|
  puts a
end

# hashes (objetos do ruby)

puts "\nobjects stars here\n\n"

carro = Hash[nome: "Fox", marca: "Volks", ano: "2010"]

puts carro[:nome]
puts carro[:marca]
puts carro[:ano]

carro[:modelo] = "flex"

puts carro

carro[:modelo] = "1.0"

puts carro

# Classes em ruby

class Carro
  #Atributo
  attr_accessor :nomeCarro

  #Metodo
  def ligar
    puts "Carro " + nomeCarro.to_s + " ligado"
  end
end

volks = Carro.new
volks.nomeCarro = "Volks"

volks.ligar
