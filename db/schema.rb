# encoding: UTF-8
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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151106235013) do

  create_table "alunos", force: :cascade do |t|
    t.string   "nome",            limit: 255
    t.string   "ra",              limit: 255
    t.string   "rg",              limit: 255
    t.string   "cpf",             limit: 255
    t.string   "email",           limit: 255
    t.string   "image_file_name", limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "cursos", force: :cascade do |t|
    t.string   "nome",       limit: 255
    t.string   "area",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "nota", force: :cascade do |t|
    t.integer  "curso_id",     limit: 4
    t.integer  "aluno_id",     limit: 4
    t.integer  "professor_id", limit: 4
    t.string   "data",         limit: 255
    t.string   "nota1",        limit: 255
    t.string   "nota2",        limit: 255
    t.string   "nota3",        limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "nota", ["aluno_id"], name: "fk_rails_4daa5b88b6", using: :btree
  add_index "nota", ["curso_id"], name: "fk_rails_95d516fd38", using: :btree
  add_index "nota", ["professor_id"], name: "fk_rails_5ef2b85704", using: :btree

  create_table "professors", force: :cascade do |t|
    t.string   "nome",       limit: 255
    t.string   "registro",   limit: 255
    t.string   "disciplina", limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "nome",                   limit: 255
    t.string   "email",                  limit: 255
    t.string   "senha",                  limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true, using: :btree
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "nota", "alunos"
  add_foreign_key "nota", "cursos"
  add_foreign_key "nota", "professors"
end
