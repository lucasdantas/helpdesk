# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110127141611) do

  create_table "comments", :force => true do |t|
    t.integer  "ticket_id"
    t.integer  "operator_id"
    t.text     "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", :force => true do |t|
    t.string   "nome"
    t.string   "email"
    t.string   "senha"
    t.string   "departamento"
    t.integer  "institution_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "institutions", :force => true do |t|
    t.string   "nome"
    t.string   "fone1"
    t.string   "fone2"
    t.string   "email"
    t.string   "responsavel"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "operators", :force => true do |t|
    t.string   "nome"
    t.string   "email"
    t.string   "senha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tickets", :force => true do |t|
    t.string   "titulo"
    t.integer  "customer_id"
    t.string   "status",       :default => "ABERTO"
    t.text     "descricao"
    t.text     "conclusao"
    t.integer  "operator_ini"
    t.integer  "operator_fim"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
