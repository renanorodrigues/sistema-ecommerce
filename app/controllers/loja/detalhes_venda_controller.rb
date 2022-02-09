class Loja::DetalhesVendaController < ApplicationController
  def new
    @venda = Venda.new
    render :new
  end

  def carrinho
    @itens = Produto.where() 
  end

  def create
    venda = Venda.new(usuario_id: params[:usuario_id])
  end

  private

  def set_venda
    @venda = Venda.find params[:venda_id]
  end
end
