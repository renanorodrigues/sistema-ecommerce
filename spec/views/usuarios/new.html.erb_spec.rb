require 'rails_helper'

RSpec.describe "usuarios/new", type: :view do
  before(:each) do
    assign(:usuario, Usuario.new(
      nome: "MyString",
      email: "MyString",
      endereco: "MyString",
      login: "MyString",
      senha: "MyString",
      administrador: "MyString"
    ))
  end

  it "renders new usuario form" do
    render

    assert_select "form[action=?][method=?]", usuarios_path, "post" do

      assert_select "input[name=?]", "usuario[nome]"

      assert_select "input[name=?]", "usuario[email]"

      assert_select "input[name=?]", "usuario[endereco]"

      assert_select "input[name=?]", "usuario[login]"

      assert_select "input[name=?]", "usuario[senha]"

      assert_select "input[name=?]", "usuario[administrador]"
    end
  end
end
