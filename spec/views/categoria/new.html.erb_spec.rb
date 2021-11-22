require 'rails_helper'

RSpec.describe "categoria/new", type: :view do
  before(:each) do
    assign(:categorium, Categorium.new(
      descricao: "MyString"
    ))
  end

  it "renders new categorium form" do
    render

    assert_select "form[action=?][method=?]", categoria_path, "post" do

      assert_select "input[name=?]", "categorium[descricao]"
    end
  end
end
