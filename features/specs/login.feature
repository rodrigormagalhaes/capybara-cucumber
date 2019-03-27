#language: pt

@login
Funcionalidade: Login
    Como usuário do sistema devo ser capaz de efetuar login

    Contexto: 
        Dado que estou na página de login
    
    Esquema do Cenário: Login com sucesso
        Quando efetuo login com '<userName>' e '<password>'
        Então sou redirecionado para página de Produtos

    Exemplos:
        | userName                | password     |
        | standard_user           | secret_sauce |
        | problem_user            | secret_sauce |
        | performance_glitch_user | secret_sauce |

    @blocked
    Cenário: Tentativa de login com usuário bloqueado
        Quando realizo login com usuário bloqueado
        Então login não é realizado
        E é exibida mensagem de usuário bloqueado

    @invalid
    Cenário: Tentativa de login com usuário inexistente
        Quando realizo login com usuário inexistente
        Então login não é realizado
        E é exibida mensagem de usuário inexistente