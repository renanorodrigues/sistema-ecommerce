json.extract! produto, :id, :descricao, :preco, :foto, :quantidade, :created_at, :updated_at
json.url produto_url(produto, format: :json)
