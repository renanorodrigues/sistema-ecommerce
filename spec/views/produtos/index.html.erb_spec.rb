require 'rails_helper'

RSpec.describe "produtos/index", type: :view do
  before(:each) do
    assign(:produtos, [
      Produto.create!(
        descricao: "Descricao",
        preco: "9.99",
        foto: "Foto",
        quantidade: 2
      ),
      Produto.create!(
        descricao: "Descricao",
        preco: "9.99",
        foto: "Foto",
        quantidade: 2
      )
    ])
  end

  it "renders a list of produtos" do
    render
    assert_select "tr>td", text: "Descricao".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: "Foto".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
