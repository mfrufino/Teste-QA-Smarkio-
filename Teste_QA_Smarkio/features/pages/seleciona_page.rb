class ColocaCarrinho < SitePrism::Page
    set_url '/busca?nsCat=Natural&q=fone'

    element :btn_comprar, '.buy-button-now'
    

    def confere_produto
        first('.item-card__images__image-link', visible: false).click
    end

    def adiciona_carrinho
       btn_comprar.click
    end

    def valida_carrinho
        expect(@pesquisa_page).to have_content 'fone'
        click_button 'Escolher Mais Produtos'
    end

 end 