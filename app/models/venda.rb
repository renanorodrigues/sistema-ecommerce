class Venda < ApplicationRecord
  belongs_to :usuario
  has_many :detalhes_vendas
end
