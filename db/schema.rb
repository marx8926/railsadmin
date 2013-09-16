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

ActiveRecord::Schema.define(version: 20130909210804) do

  create_table "archivos", force: true do |t|
    t.string   "titulo",     limit: 100
    t.text     "path"
    t.text     "key"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "avanzadas", force: true do |t|
    t.string   "direccion",     limit: 300
    t.string   "referencia",    limit: 350
    t.float    "latitud"
    t.float    "longitud"
    t.date     "creacion"
    t.integer  "cant_miembros"
    t.integer  "cant_conv"
    t.integer  "cant_bau"
    t.boolean  "activo"
    t.date     "fin"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "iglesia_id"
    t.integer  "ubigeo_id"
  end

  add_index "avanzadas", ["iglesia_id"], name: "index_avanzadas_on_iglesia_id", using: :btree
  add_index "avanzadas", ["ubigeo_id"], name: "index_avanzadas_on_ubigeo_id", using: :btree

  create_table "celulas", force: true do |t|
    t.string   "codigo",     limit: 20
    t.string   "anfitrion",  limit: 300
    t.date     "creacion"
    t.integer  "tipo"
    t.string   "direccion",  limit: 300
    t.string   "referencia", limit: 350
    t.float    "latitud"
    t.float    "longitud"
    t.boolean  "activo"
    t.date     "fin"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "red_id"
    t.integer  "ubigeo_id"
  end

  add_index "celulas", ["red_id"], name: "index_celulas_on_red_id", using: :btree
  add_index "celulas", ["ubigeo_id"], name: "index_celulas_on_ubigeo_id", using: :btree

  create_table "consolidadors", force: true do |t|
    t.string   "nombre",     limit: 300
    t.date     "inicio"
    t.date     "fin"
    t.boolean  "termino"
    t.boolean  "pausa"
    t.string   "detalle",    limit: 300
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "convertidos", force: true do |t|
    t.date     "conversion"
    t.string   "detalle"
    t.date     "termino_h"
    t.boolean  "inicio_h"
    t.boolean  "termino_l_e"
    t.date     "inicio_l"
    t.date     "termino_l"
    t.integer  "persona_id"
    t.integer  "consolidador_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "convertidos", ["consolidador_id"], name: "index_convertidos_on_consolidador_id", using: :btree
  add_index "convertidos", ["persona_id"], name: "index_convertidos_on_persona_id", using: :btree

  create_table "descartars", force: true do |t|
    t.date     "fecha"
    t.string   "detalle",       limit: 300
    t.integer  "convertido_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "descartars", ["convertido_id"], name: "index_descartars_on_convertido_id", using: :btree

  create_table "detalle_miembros", force: true do |t|
    t.string   "tipo",         limit: 10
    t.boolean  "activo"
    t.date     "fecha_asig"
    t.date     "fecha_retiro"
    t.date     "fecha_pausa"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "estado_civils", force: true do |t|
    t.string   "nombre",     limit: 80
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "herramienta", force: true do |t|
    t.string   "nombre",     limit: 100
    t.integer  "duracion"
    t.integer  "repeticion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "herramienta_convertidos", force: true do |t|
    t.date     "inicio"
    t.date     "fin"
    t.string   "detalle",        limit: 300
    t.integer  "herramienta_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "herramienta_convertidos", ["herramienta_id"], name: "index_herramienta_convertidos_on_herramienta_id", using: :btree

  create_table "iglesia", force: true do |t|
    t.date     "creacion"
    t.string   "telefono",   limit: 20
    t.string   "direccion",  limit: 300
    t.string   "referencia", limit: 350
    t.float    "latitud"
    t.float    "longitud"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ubigeo_id"
  end

  add_index "iglesia", ["ubigeo_id"], name: "index_iglesia_on_ubigeo_id", using: :btree

  create_table "invitados", force: true do |t|
    t.string   "nombres",    limit: 100
    t.string   "apellidos",  limit: 100
    t.string   "telefono",   limit: 20
    t.string   "celular",    limit: 20
    t.string   "email",      limit: 200
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "leccion_les", force: true do |t|
    t.string   "titulo",       limit: 100
    t.integer  "leche_esp_id"
    t.integer  "archivo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "leccion_les", ["archivo_id"], name: "index_leccion_les_on_archivo_id", using: :btree
  add_index "leccion_les", ["leche_esp_id"], name: "index_leccion_les_on_leche_esp_id", using: :btree

  create_table "leche_esps", force: true do |t|
    t.string   "autor",      limit: 100
    t.string   "resumen",    limit: 300
    t.integer  "numero"
    t.date     "creacion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lugars", force: true do |t|
    t.string   "nombre",     limit: 40
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "miembros", force: true do |t|
    t.integer  "estado"
    t.date     "retiro"
    t.date     "inicio"
    t.string   "detale",     limit: 500
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ministerios", force: true do |t|
    t.string   "nombre",      limit: 100
    t.date     "creacion"
    t.string   "descripcion", limit: 400
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "iglesia_id"
  end

  add_index "ministerios", ["iglesia_id"], name: "index_ministerios_on_iglesia_id", using: :btree

  create_table "pastors", force: true do |t|
    t.date     "inicio"
    t.date     "fin"
    t.integer  "tipo"
    t.string   "detalle",    limit: 300
    t.string   "estado",     limit: 100
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personals", force: true do |t|
    t.date     "inicio_contrato"
    t.boolean  "pausa"
    t.date     "fin_contrato"
    t.boolean  "fin"
    t.date     "fin_inesperado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personas", force: true do |t|
    t.string   "nombres",         limit: 100
    t.string   "apellidos",       limit: 100
    t.integer  "edad"
    t.date     "nacimiento"
    t.string   "dni",             limit: 12
    t.string   "ocupacion",       limit: 30
    t.string   "profesion",       limit: 30
    t.string   "estado",          limit: 5
    t.string   "dia",             limit: 15
    t.datetime "hora"
    t.string   "invitado"
    t.string   "direccion"
    t.string   "referencia"
    t.float    "longitud"
    t.float    "latitud"
    t.date     "conversion"
    t.integer  "lugar_id"
    t.integer  "ubigeo_id"
    t.integer  "iglesia_id"
    t.integer  "estado_civil_id"
    t.integer  "red_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "personas", ["dni"], name: "index_personas_on_dni", using: :btree
  add_index "personas", ["estado_civil_id"], name: "index_personas_on_estado_civil_id", using: :btree
  add_index "personas", ["iglesia_id"], name: "index_personas_on_iglesia_id", using: :btree
  add_index "personas", ["lugar_id"], name: "index_personas_on_lugar_id", using: :btree
  add_index "personas", ["red_id"], name: "index_personas_on_red_id", using: :btree
  add_index "personas", ["ubigeo_id"], name: "index_personas_on_ubigeo_id", using: :btree

  create_table "peticions", force: true do |t|
    t.string   "descripcion", limit: 400
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "persona_id"
    t.integer  "invitado_id"
  end

  add_index "peticions", ["invitado_id"], name: "index_peticions_on_invitado_id", using: :btree
  add_index "peticions", ["persona_id"], name: "index_peticions_on_persona_id", using: :btree

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
    t.string   "code",       limit: 10
    t.integer  "tipo"
    t.string   "direccion",  limit: 300
    t.string   "referencia", limit: 350
    t.float    "latitud"
    t.float    "longitud"
    t.boolean  "activo"
    t.date     "fin"
    t.date     "creacion"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "iglesia_id"
    t.integer  "ubigeo_id"
  end

  add_index "reds", ["code"], name: "red_index", unique: true, using: :btree
  add_index "reds", ["iglesia_id"], name: "index_reds_on_iglesia_id", using: :btree
  add_index "reds", ["ubigeo_id"], name: "index_reds_on_ubigeo_id", using: :btree

  create_table "reglas", force: true do |t|
    t.string   "regla",           limit: 200
    t.integer  "desde"
    t.integer  "hasta"
    t.integer  "estado_civil_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reglas", ["estado_civil_id"], name: "index_reglas_on_estado_civil_id", using: :btree

  create_table "respuesta", force: true do |t|
    t.integer  "estado"
    t.string   "detalle"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "peticion_id"
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
    t.string   "cUbigeoDesc", limit: 50
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
