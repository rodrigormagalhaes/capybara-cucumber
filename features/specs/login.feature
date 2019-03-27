#language: pt

@login
Funcionalidade: Login
    Como usuário do sistema devo ser capaz de efetuar login

    Esquema do Cenário: Login com sucesso
        Dado que estou na página de login
        Quando efetuo login com 'userName' e '<password>'
        Então sou redirecionado para página de Produtos

    Exemplos:
        | userName                | password     |
        | standard_user           | secret_sauce |
        #| problem_user            | secret_sauce |
        #| performance_glitch_user | secret_sauce |