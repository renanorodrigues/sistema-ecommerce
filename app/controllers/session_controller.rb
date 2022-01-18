class SessionController < ApplicationController
  before_action :setar_usuario, only: %i(create)

  def new
    @usuario = Usuario.new
  end

  def create
    if @usuario && @usuario.senha == usuario_params[:senha]
      session[:usuario_id] = @usuario.id
      redirect_to_root_path_user(@usuario)
    else
      flash.now[:notice] = 'Senha inválida ou email incorreto'
      render :new
    end
  end

  def logout
    session[:usuario_id] = nil
    redirect_to loja_loja_path
  end

  private

  def setar_usuario
    @usuario ||= Usuario.find_by(email: usuario_params[:email])
  end

  def redirect_to_root_path_user(usuario)
    message_success = 'Login realizado com sucesso!'

    if usuario.administrador?
      redirect_to painel_path, success: message_success
    else
      redirect_to loja_loja_path, success: message_success
    end
  end

  def usuario_params
    params.require(:usuario).permit(:email, :senha)
  end
end
