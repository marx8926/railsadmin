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

ActiveRecord::Schema.define(version: 20130906171234) do

  create_table "convertidos", force: true do |t|
    t.date     "conversion"
    t.string   "detalle"
    t.date     "termino_h"
    t.boolean  "inicio_h"
    t.boolean  "termino_l_e"
    t.date     "inicio_l"
    t.date     "termino_l"
    t.integer  "persona_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "convertidos", ["persona_id"], name: "index_convertidos_on_persona_id", using: :btree

  create_table "iglesia", force: true do |t|
    t.date     "creacion"
    t.string   "telefono"
    t.string   "direccion"
    t.string   "referencia"
    t.float    "latitud"
    t.float    "longitud"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lugars", force: true do |t|
    t.string   "nombre",      limit: 40
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personas", force: true do |t|
    t.string   "nombres",    limit: 100
    t.string   "apellidos",  limit: 100
    t.integer  "edad"
    t.date     "nacimiento"
    t.string   "dni",        limit: 12
    t.string   "ocupacion",  limit: 30
    t.string   "profesion",  limit: 30
    t.string   "estado",     limit: 5
    t.string   "dia",        limit: 15
    t.datetime "hora"
    t.string   "invitado"
    t.string   "direccion"
    t.string   "referencia"
    t.float    "longitud"
    t.float    "latitud"
    t.date     "conversion"
    t.integer  "lugar_id"
    t.integer  "ubigeo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "personas", ["dni"], name: "index_personas_on_dni", using: :btree
  add_index "personas", ["lugar_id"], name: "index_personas_on_lugar_id", using: :btree
  add_index "personas", ["ubigeo_id"], name: "index_personas_on_ubigeo_id", using: :btree

  create_table "peticions", force: true do |t|
    t.string   "descripcion", limit: 400
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "red_socials", force: true do |t|
    t.string   "url"
    t.string   "short",      limit: 100
    t.string   "user"
    t.string   "tipo",       limit: 5
    t.integer  "persona_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "red_socials", ["persona_id"], name: "index_red_socials_on_persona_id", using: :btree

  create_table "reds", force: true do |t|
    t.string   "code"
    t.string   "tipo"
    t.string   "direccion"
    t.string   "referencia"
    t.float    "latitud"
    t.float    "longitud"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "telefono"
  end

  create_table "respuesta", force: true do |t|
    t.integer  "estado"
    t.string   "detalle"
    t.integer  "peticion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "respuesta", ["peticion_id"], name: "index_respuesta_on_peticion_id", using: :btree

  create_table "telefonos", force: true do |t|
    t.string   "numero",     limit: 16
    t.string   "tipo",       limit: 3
    t.integer  "persona_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "telefonos", ["persona_id"], name: "index_telefonos_on_persona_id", using: :btree

  create_table "ubigeos", force: true do |t|
    t.integer  "nUbigeo_id"
    t.string   "cUbigeoDesc"
    t.integer  "nUbigeoDpt"
    t.integer  "nUbigeoProv"
    t.integer  "nUbigeoDist"
    t.integer  "nUbigeoDep"
    t.float    "nUbigeoLat"
    t.float    "nUbigeoLng"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
