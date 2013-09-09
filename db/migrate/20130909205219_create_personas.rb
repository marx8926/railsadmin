class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.string :nombres, limit: 100
      t.string :apellidos, limit: 100
      t.integer :edad
      t.date :nacimiento
      t.string :dni, limit: 12
      t.string :ocupacion, limit: 30
      t.string :profesion, limit: 30
      t.string :estado, limit: 5
      t.string :dia, limit: 15
      t.timestamp :hora
      t.string :invitado, limit: 255
      t.string :direccion, limit: 255
      t.string :referencia, limit: 255
      t.float :longitud
      t.float :latitud
      t.date :conversion
      t.references :lugar, index: true
      t.references :ubigeo, index: true
      t.references :iglesia, index: true

      t.timestamps
    end
    add_index :personas, :dni
  end
end
