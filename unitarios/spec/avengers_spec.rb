class AvengerHeadQ
  attr_accessor :listaAvengers

  def initialize
    self.listaAvengers = []
  end

  def put(avenger)
    self.listaAvengers.push(avenger)
  end

  def del(pos)
    self.listaAvengers.delete_at(pos)
  end

  def tamanhoEquipe
    self.listaAvengers.length
  end
end

describe AvengerHeadQ do
  hq = AvengerHeadQ.new

  it "Adicionando um heroi" do
    hq.put("Spiderman")
    hq.put("hulk")
    expect(hq.listaAvengers[0].to_s).to eql "Spiderman"
  end

  it "Deletando um heroi do grupo" do
    hq.del(1)
    expect(hq.tamanhoEquipe()).to eql 1
  end

  it "O Spiderman deve estar no grupo" do
    hq.put("Thor")
    hq.put("Ironman")

    expect(hq.listaAvengers).to include "Spiderman"
    #Verifica se o valor existe na lista
  end

  it "Deve ser um grupo" do
    res = hq.listaAvengers.size > 0
    expect(hq.listaAvengers.size).to be >= 3
    expect(res).to be true
    #Verifica que deve ser igual, podendo ser true, false, maior, menor etc
  end

  it "Spiderman deve ser o primeiro" do
    expect(hq.listaAvengers).to start_with("Spiderman")
    #Verifica qual o primeiro elemento do lista
  end

  it "Ironman deve ser o ultimo" do
    expect(hq.listaAvengers).to end_with("Ironman")
    #Verifica qual o ultimo elemento da lista
  end

  it "Deve conter o sobrenome" do
    #passando uma expressão regular
    avenger = /I/

    #Verifica se o ultimo elemento na lista [-1] tem algum caracterer da expressão regular
    #expect(hq.listaAvengers[-1]).to match(avenger)
    #Verifica se não tem
    expect(hq.listaAvengers[-1]).not_to match(avenger)

    it 'Não deve existir herois DC' do
        

    end
  end
end
