class CreateProdutos < ActiveRecord::Migration[6.1]
  def change
    create_table :produtos do |t|
      t.string :descricao, null: false
      t.decimal :preco, null: false
      t.string :foto, null: false
      t.integer :quantidade, null: false

      t.timestamps
    end
  end
end
