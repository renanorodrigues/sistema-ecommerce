class Loja::UsuariosController < LojaController
  before_action :set_usuario, only: %i[ show edit update destroy ]

  def index
    @usuarios = Usuario.all
  end

  def show
  end

  def new
    @usuario = Usuario.new
  end

  def edit
  end

  def create
    @usuario = Usuario.new(usuario_params)

    respond_to do |format|
      if @usuario.save
        format.html { redirect_to loja_usuario_path(@usuario), notice: "Usuario cadastrado com sucesso!" }
        format.json { render :show, status: :created, location: @usuario }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @usuario.update(usuario_params)
        format.html { redirect_to @usuario, notice: "Usuario atualizado com sucesso!" }
        format.json { render :show, status: :ok, location: @usuario }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @usuario.destroy
    session[:usuario_id] = nil
    respond_to do |format|
      format.html { redirect_to new_session_path, notice: 'Usuario foi removido com sucesso!' }
      format.json { head :no_content }
    end
  end

  private

  def set_usuario
    @usuario = Usuario.find(params[:id])
  end

  def usuario_params
    params.require(:usuario).permit(:nome, :email, :endereco, :login, :senha, :administrador)
  end
end
