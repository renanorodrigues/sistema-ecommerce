class Produto < ApplicationRecord
  has_many :categorias_produtos
  has_many :categorias, through: :categorias_produtos
end
