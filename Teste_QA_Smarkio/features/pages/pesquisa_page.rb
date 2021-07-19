class Pesquisa < SitePrism::Page
    set_url '/'

    element :cmp_busca, '#search-input'
    element :lista, '.iten-list'
        
    def preencher_cmp_busca
        cmp_busca.set 'fone'
        click_button 'Buscar'
    end
 end