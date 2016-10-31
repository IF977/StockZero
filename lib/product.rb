class Product
    attr_accessor :nome_produto, :preco, :qtd_produtos, :tempo_entrega, :validade, :min_qtd_entrega, :descricao_produto, :composicao_produto, :categoria_produto, :user_id
    def initialize
        @nome_produto = "Arroz"
        @preco = "R$ 20"
        @qtd_produtos = "20"
        @tempo_entrega = "12 dias"
        @validade = "1 ano"
        @min_qtd_entrega= "20 unidades" 
        @descricao_produto = "Produto organico"
        @composicao_produto = "30mg de sódio"
        @categoria_produto = "Não perecivel"
        @user_id = "0"
        
    end
end