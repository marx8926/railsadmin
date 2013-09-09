class CreateAvanzadas < ActiveRecord::Migration
  def change
    create_table :avanzadas do |t|
      t.string :direccion, limit: 300
      t.string :referencia, limit: 350
      t.float :latitud
      t.float :longitud
      t.date :creacion
      t.integer :cant_miembros
      t.integer :cant_conv
      t.integer :cant_bau
      t.boolean :activo
      t.date :fin

      t.timestamps
    end
  end
end
