require 'rails_helper'

RSpec.describe "categoria/index", type: :view do
  before(:each) do
    assign(:categoria, [
      Categorium.create!(
        descricao: "Descricao"
      ),
      Categorium.create!(
        descricao: "Descricao"
      )
    ])
  end

  it "renders a list of categoria" do
    render
    assert_select "tr>td", text: "Descricao".to_s, count: 2
  end
end
