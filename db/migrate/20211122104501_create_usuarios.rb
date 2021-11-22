class CreateUsuarios < ActiveRecord::Migration[6.1]
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :email
      t.string :endereco
      t.string :login
      t.string :senha
      t.boolean :administrador

      t.timestamps
    end
  end
end
