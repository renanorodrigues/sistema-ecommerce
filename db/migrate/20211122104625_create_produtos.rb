class CreateProdutos < ActiveRecord::Migration[6.1]
  def change
    create_table :produtos do |t|
      t.string :descricao
      t.decimal :preco
      t.string :foto
      t.integer :quantidade

      t.timestamps
    end
  end
end
