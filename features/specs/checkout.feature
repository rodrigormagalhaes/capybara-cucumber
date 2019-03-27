#language: pt

@checkout
Funcionalidade: Checkout
    Como usuário do sistema devo ser capaz de comprar um produto

    Contexto: 
        Dado que realizo login na aplicação

    Cenário: Compra de um produto com sucesso
        Quando seleciono um produto para comprar
        E confirmo a compra
        E preencho as informações de finalização da compra
        E finalizo a compra
        Então a compra é realizada com sucesso