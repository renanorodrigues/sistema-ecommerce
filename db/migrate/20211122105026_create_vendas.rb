class CreateVendas < ActiveRecord::Migration[6.1]
  def change
    create_table :vendas do |t|
      t.timestamp :data_hora
      t.references :usuario, null: false, foreign_key: true

      t.timestamps
    end
  end
end
