require 'rails_helper'

RSpec.describe "produtos/edit", type: :view do
  before(:each) do
    @produto = assign(:produto, Produto.create!(
      descricao: "MyString",
      preco: "9.99",
      foto: "MyString",
      quantidade: 1
    ))
  end

  it "renders the edit produto form" do
    render

    assert_select "form[action=?][method=?]", produto_path(@produto), "post" do

      assert_select "input[name=?]", "produto[descricao]"

      assert_select "input[name=?]", "produto[preco]"

      assert_select "input[name=?]", "produto[foto]"

      assert_select "input[name=?]", "produto[quantidade]"
    end
  end
end
