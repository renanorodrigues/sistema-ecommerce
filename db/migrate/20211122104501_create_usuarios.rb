class CreateUsuarios < ActiveRecord::Migration[6.1]
  def change
    create_table :usuarios do |t|
      t.string :nome, null: false
      t.string :email, null: false
      t.string :endereco, null: false
      t.string :login, null: false
      t.string :senha, null: false
      t.boolean :administrador, null: false

      t.timestamps
    end
  end
end
