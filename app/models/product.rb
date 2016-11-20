class Product < ActiveRecord::Base
  belongs_to :user
  has_attached_file :image, styles: { medium: "400x400>"}, default_url: "/assets/image_default.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  validates_presence_of :nome_produto, message: ' Não pode ser deixado em branco'
  validates_presence_of :preco, message: ' Não pode ser deixado em branco'
  validates_presence_of :qtd_produtos, message: ' Não pode ser deixado em branco'
  validates_presence_of :tempo_entrega, message: ' Não pode ser deixado em branco'
  validates_presence_of :validade, message: ' Não pode ser deixado em branco'
  validates_presence_of :min_qtd_entrega, message: ' Não pode ser deixado em branco'
  validates_presence_of :descricao_produto, message: ' Não pode ser deixado em branco'
  validates_presence_of :composicao_produto, message: ' Não pode ser deixado em branco'
  validates_presence_of :categoria_produto, message: ' Não pode ser deixado em branco'
  validates :nome_produto, length: {in: 5..30, message: ' Deve ter entre 5 e 30 caracteres'}
  validates :preco, length: { in: 3..15, message: ' Deve ter entre 3 e 15 caracteres'}
  validates :tempo_entrega, length: {in: 5..30, message: ' Deve ter entre 5 e 30 caracteres' }
  validates :validade, length: { minimum: 10, message: ' Deve ter no máximo 10 caracteres' }
  validates :min_qtd_entrega, length: { minimum: 1, message: ' Deve ter pelo menos 1 caracteres'}
  validates :qtd_produtos, length: { minimum: 1, message: ' Deve ter pelo menos 1 caracteres'}
  validates :descricao_produto, length: {in: 5..140, message: ' Deve ter entre 5 e 140 caracteres'}
  
   
  
end
