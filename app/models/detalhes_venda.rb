class DetalhesVenda < ApplicationRecord
  belongs_to :produto
  belongs_to :venda
end
