class PainelController < ApplicationController
  before_action :verify_admin

  # GET /categoria or /categoria.json
  def index
    @usuario = Usuario.find(session[:usuario_id])
  end

  private

  def verify_admin
    usuario = Usuario.find(session[:usuario_id])

    unless usuario.administrador?
      session[:usuario_id] = nil
      redirect_to new_session_path, notice: 'Acessado negado!'
    end
  end
end
