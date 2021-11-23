class Usuario < ApplicationRecord
  has_many :vendas
  validates :senha, length: { minimum:5 }
end
