test_api_httparty_cucumber

####
Configurações
1 - instalar a versão 2.7.0 do Ruby
####

1- Passo de um clone no projeto

2- Passo de entre na pasta do projeto

3- Passo instale as dependências
rodar o comando:

1 - gem install bundler
2 - bundle install (para instalar as depedência do projeto)

3- Passo rode o projeto:

cucumber -t @tagEspecífica (pode rodar apenas um teste em específico rodando cucumber -t @tag do teste desejado)
ou
cucumber (e ja iram rodar todos os testes) 


4 - é gerado um relatório da execução dos testes ma Raiz do Projeto com o nome feature.html