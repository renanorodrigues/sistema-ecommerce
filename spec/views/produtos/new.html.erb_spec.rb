require 'rails_helper'

RSpec.describe "produtos/new", type: :view do
  before(:each) do
    assign(:produto, Produto.new(
      descricao: "MyString",
      preco: "9.99",
      foto: "MyString",
      quantidade: 1
    ))
  end

  it "renders new produto form" do
    render

    assert_select "form[action=?][method=?]", produtos_path, "post" do

      assert_select "input[name=?]", "produto[descricao]"

      assert_select "input[name=?]", "produto[preco]"

      assert_select "input[name=?]", "produto[foto]"

      assert_select "input[name=?]", "produto[quantidade]"
    end
  end
end
