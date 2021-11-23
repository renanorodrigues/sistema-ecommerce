class SessionController < ApplicationController
  def new
    @usuario = Usuario.new
  end

  def create
    @usuario = Usuario.find_by(email: usuario_params[:email])

    if @usuario
      session[:usuario_id] = @usuario.id
      redirect_to loja_loja_path, success: 'Login realizado com sucesso!'
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

  def usuario_params
    params.require(:usuario).permit(:email, :senha)
  end
end
