class LojaController < ActionController::Base
  layout 'loja'
  helper_method :usuario_atual

  def usuario_atual
    if session[:usuario_id]
      Usuario.find(session[:usuario_id])
    end
  end
end
