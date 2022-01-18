Feature: Navigation

@login
Scenario: Clicking the Home link on the homepage shows home page
Given que tenha acessado a pagina inicial de login
When preencho o login "professorSofist" e a senha "sof123"
Then realizo o login com sucesso

