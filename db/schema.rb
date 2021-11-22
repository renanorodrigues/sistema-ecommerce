# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_22_105414) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categorias", force: :cascade do |t|
    t.string "descricao", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "detalhes_vendas", force: :cascade do |t|
    t.integer "quantidade", null: false
    t.bigint "produto_id", null: false
    t.bigint "venda_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["produto_id"], name: "index_detalhes_vendas_on_produto_id"
    t.index ["venda_id"], name: "index_detalhes_vendas_on_venda_id"
  end

  create_table "produtos", force: :cascade do |t|
    t.string "descricao", null: false
    t.decimal "preco", null: false
    t.string "foto", null: false
    t.integer "quantidade", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nome", null: false
    t.string "email", null: false
    t.string "endereco", null: false
    t.string "login", null: false
    t.string "senha", null: false
    t.boolean "administrador", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "vendas", force: :cascade do |t|
    t.datetime "data_hora", null: false
    t.bigint "usuario_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["usuario_id"], name: "index_vendas_on_usuario_id"
  end

  add_foreign_key "detalhes_vendas", "produtos"
  add_foreign_key "detalhes_vendas", "vendas"
  add_foreign_key "vendas", "usuarios"
end
