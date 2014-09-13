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

ActiveRecord::Schema.define(version: 20140913041849) do

  create_table "centros", force: true do |t|
    t.string   "nombre"
    t.integer  "regional_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ciudad"
    t.string   "codigo"
  end

  add_index "centros", ["regional_id"], name: "index_centros_on_regional_id"

  create_table "estudiantes", force: true do |t|
    t.string   "nombres"
    t.string   "apellidos"
    t.string   "cedula"
    t.boolean  "sexo"
    t.string   "email"
    t.integer  "ficha_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "estudiantes", ["ficha_id"], name: "index_estudiantes_on_ficha_id"

  create_table "fichas", force: true do |t|
    t.string   "numeroficha"
    t.integer  "programa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fichas", ["programa_id"], name: "index_fichas_on_programa_id"

  create_table "instructors", force: true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "titulo"
    t.integer  "centro_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.string   "cedula"
  end

  add_index "instructors", ["centro_id"], name: "index_instructors_on_centro_id"

  create_table "programas", force: true do |t|
    t.string   "nombre"
    t.integer  "centro_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "programas", ["centro_id"], name: "index_programas_on_centro_id"

  create_table "regionals", force: true do |t|
    t.string   "departamento"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
