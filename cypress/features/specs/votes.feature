  # language: pt
  # utf-8
  
  Funcionalidade: Testar os votos da api de Gatos

      @getvotes @smoke
        Cenario: Obter os votos da lista de gatos
        Dado que faça um get na lista de votos da lista de gatos
        Entao tenho o rotorno "200" da lista de votos

      @createVotes @smoke
        Cenario: criar voto randomico na lista de gatos
        Dado que faça um get na lista de votos da lista de gatos
        Quando tenho um payload válido para votar e faço um voto de forma randomica
        Entao tenho o rotorno "200" e meu voto foi criado corretamente

      @deleteVotes @smoke
        Cenario: deletar um voto 
        Dado que faça um get na lista de votos da lista de gatos
        Quando tenho um payload válido para votar e faço um voto de forma randomica
        Entao deleto o voto que acabei de fazer e tenho o retorno "200"