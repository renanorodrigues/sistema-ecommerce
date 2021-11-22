FactoryBot.define do
  factory :produto do
    descricao { "MyString" }
    preco { "9.99" }
    foto { "MyString" }
    quantidade { 1 }
  end
end
