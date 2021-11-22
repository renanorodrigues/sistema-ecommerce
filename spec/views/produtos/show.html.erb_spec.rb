require 'rails_helper'

RSpec.describe "produtos/show", type: :view do
  before(:each) do
    @produto = assign(:produto, Produto.create!(
      descricao: "Descricao",
      preco: "9.99",
      foto: "Foto",
      quantidade: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Descricao/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Foto/)
    expect(rendered).to match(/2/)
  end
end
