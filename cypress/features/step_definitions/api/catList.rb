  
  Dado('que a api the cats api tenha o total de {string} gatos cadastrados') do |quantidade|
    $quantidade = quantidade
  end
  
  Quando('realizo a chamada da api consultando a lista de gatos') do
    @response = catListBreeds.getCatListBreeds
  end
  
  Entao('tenho o rotorno {string} e a valido se a quantidade está correta') do |retorno|
    expect(@response.code.to_s).to eql retorno
    expect(@response.size).to eql $quantidade.to_i
  end

  Quando('realizo a chamada da api e tenho retorno {string}') do |retorno|
    @response = catListBreeds.getCatListBreeds
    expect(@response.code.to_s).to eql retorno
    expect(@response.size).to eql $quantidade.to_i
  end
  
  Entao('valido se cada raça cada gato tem {string} e {string} e {string}') do |name, image, wikipedia_url|
    @response.each { |list|
        expect(list.include?(name) && list[name] != nil?)
        expect(list.include?(wikipedia_url) && list[wikipedia_url] != nil?)
        expect(list.include?(image) && list[image] != nil?)
    }
  end