Dado("Que acesso o site") do
    @pesquisa_page=Pesquisa.new
    @pesquisa_page.load
  end
  
  Quando("pesquiso no campo de busca o produto que eu desejo comprar") do
    @pesquisa_page.preencher_cmp_busca
  end
  
  Então("retorna o resultado da pesquisa") do
    expect(@pesquisa_page).to have_content 'fone'
  end