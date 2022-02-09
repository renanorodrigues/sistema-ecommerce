class Loja::VendasController < ApplicationController
  before_action :set_venda, only: %i(destroy show)

  def index
    @vendas = Venda.all
  end

  def show
    render :show
  end

  def destroy
    if @venda.detalhes_vendas
      @venda.detalhes_vendas.destroy_all
      @venda.destroy
      respond_to do |format|
        format.html { redirect_to painel_path, notice: "Venda foi removida!" }
        format.json { head :no_content }
      end
    end
  end

  private

  def set_venda
    @venda = Venda.find(params[:id])
  end
end
