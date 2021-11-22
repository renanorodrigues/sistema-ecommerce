json.extract! usuario, :id, :nome, :email, :endereco, :login, :senha, :administrador, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
