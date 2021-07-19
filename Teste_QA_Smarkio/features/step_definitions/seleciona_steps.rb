Dado("que tenho o retorno de uma pesquisa de produto") do
    @seleciona_page=ColocaCarrinho.new
    @seleciona_page.load
 end

  Quando("clico no botão conferir") do
    @seleciona_page.confere_produto
  end

  Quando("clico em adicionar ao carrinho") do
    @seleciona_page.adiciona_carrinho
  end
  
  Então("o produto é inserido no meu carrinho de compras") do
    @seleciona_page.valida_carrinho
  end