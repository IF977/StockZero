class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :nome_produto
      t.string :preco
      #t.binary :imagem_produto
      t.string :qtd_produtos
      t.string :tempo_entrega
      t.string :validade
      t.string :min_qtd_entrega
      t.string :descricao_produto
      t.string :composicao_produto
      t.string :categoria_produto
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
