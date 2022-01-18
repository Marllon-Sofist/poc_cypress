    
Dado('que faça um get na lista de votos da lista de gatos') do
    @response = getYourVotesRequest.getYourVotes
end

Entao('tenho o rotorno {string} da lista de votos') do |retorno|
    expect(@response.code.to_s).to eql retorno
end

Quando('tenho um payload válido para votar e faço um voto de forma randomica') do
    @ramdom = @response.sample
    @payload = payload_create_votes(@ramdom)
    @response_vote = createVotesRequest.createVotes(@payload)
end

Entao('tenho o rotorno {string} e meu voto foi criado corretamente') do |retorno|
    expect(@response_vote.code.to_s).to eql retorno
    @response_create = getVoteByIdRequest.getVoteById(@response_vote["id"])
    expect(@response_create.code.to_s).to eql retorno
    expect(@response_create["id"]).to eql @response_vote["id"]
end

Entao('deleto o voto que acabei de fazer e tenho o retorno {string}') do |retorno|
    @response_delete = deleteVotesRequest.deleteVotes(@response_vote["id"])
    expect(@response_delete.code.to_s).to eql retorno
end