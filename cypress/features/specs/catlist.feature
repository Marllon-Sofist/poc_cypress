  # language: pt
  # utf-8
  
  Funcionalidade: Testar a lista de gastos da api the cats api

      @catListSize @smoke
        Cenario: Verificar a quantidade de gatos da lista da api the cats list
        Dado que a api the cats api tenha o total de "67" gatos cadastrados
        Quando realizo a chamada da api consultando a lista de gatos
        Entao tenho o rotorno "200" e a valido se a quantidade está correta

      @valida_parametros_lista @smoke
        Cenario: Validar se a estrutua da lista de gatos contem nome, imagem e url wikipedia
        Dado que a api the cats api tenha o total de "67" gatos cadastrados
        Quando realizo a chamada da api e tenho retorno "200"
        Entao valido se cada raça cada gato tem "name" e "image" e "wikipedia_url"
