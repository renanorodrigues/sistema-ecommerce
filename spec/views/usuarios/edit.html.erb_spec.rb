require 'rails_helper'

RSpec.describe "usuarios/edit", type: :view do
  before(:each) do
    @usuario = assign(:usuario, Usuario.create!(
      nome: "MyString",
      email: "MyString",
      endereco: "MyString",
      login: "MyString",
      senha: "MyString",
      administrador: "MyString"
    ))
  end

  it "renders the edit usuario form" do
    render

    assert_select "form[action=?][method=?]", usuario_path(@usuario), "post" do

      assert_select "input[name=?]", "usuario[nome]"

      assert_select "input[name=?]", "usuario[email]"

      assert_select "input[name=?]", "usuario[endereco]"

      assert_select "input[name=?]", "usuario[login]"

      assert_select "input[name=?]", "usuario[senha]"

      assert_select "input[name=?]", "usuario[administrador]"
    end
  end
end
