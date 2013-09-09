class CreateCelulas < ActiveRecord::Migration
  def change
    create_table :celulas do |t|
      t.string :codigo, limit: 20
      t.string :anfitrion, limit: 300
      t.date :creacion
      t.integer :tipo
      t.string :direccion, limit: 300
      t.string :referencia, limit: 350
      t.float :latitud
      t.float :longitud
      t.boolean :activo
      t.date :fin

      t.timestamps
    end
  end
end
