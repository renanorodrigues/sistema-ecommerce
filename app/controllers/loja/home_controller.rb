class Loja::HomeController < LojaController
  def index
    @produtos = Produto.all
  end
end
