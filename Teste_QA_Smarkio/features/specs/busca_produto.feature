#language: pt
@compra
Funcionalidade: Colocar um produto no carrinho de compra

@pesquisando_produto
Cenario: Pesquisar produto
Dado Que acesso o site
Quando pesquiso no campo de busca o produto que eu desejo comprar
Então retorna o resultado da pesquisa

@colocando_produto_no_carrinho
Cenario: Colocando produto no carrinho
Dado que tenho o retorno de uma pesquisa de produto
Quando clico no botão conferir
E clico em adicionar ao carrinho
Então o produto é inserido no meu carrinho de compras