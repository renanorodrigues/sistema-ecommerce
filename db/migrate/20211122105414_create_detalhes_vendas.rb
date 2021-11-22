class CreateDetalhesVendas < ActiveRecord::Migration[6.1]
  def change
    create_table :detalhes_vendas do |t|
      t.integer :quantidade, null: false
      t.references :produto, null: false, foreign_key: true
      t.references :venda, null: false, foreign_key: true

      t.timestamps
    end
  end
end
