class Categoria < ApplicationRecord
  has_many :categorias_produtos
  has_many :produtos, through: :categorias_produtos
end
