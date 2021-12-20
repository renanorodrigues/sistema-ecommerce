class LojaController < ActionController::Base
  layout 'loja'
  helper_method :usuario_atual

  def usuario_atual
    Usuario.find(session[:usuario_id]) if session[:usuario_id]
  end
end
