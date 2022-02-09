class Produto < ApplicationRecord
  has_many :categorias_produtos
  has_many :categorias, through: :categorias_produtos
  has_many :detalhes_vendas
  has_many :vendas, through: :detalhes_vendas
end
