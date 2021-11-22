require 'rails_helper'

RSpec.describe "usuarios/show", type: :view do
  before(:each) do
    @usuario = assign(:usuario, Usuario.create!(
      nome: "Nome",
      email: "Email",
      endereco: "Endereco",
      login: "Login",
      senha: "Senha",
      administrador: "Administrador"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Endereco/)
    expect(rendered).to match(/Login/)
    expect(rendered).to match(/Senha/)
    expect(rendered).to match(/Administrador/)
  end
end
