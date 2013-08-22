class CreateIglesia < ActiveRecord::Migration
  def change
    create_table :iglesia do |t|
      t.date :creacion
      t.string :telefono
      t.string :direccion
      t.string :referencia
      t.float :latitud
      t.float :longitud

      t.timestamps
    end
  end
end
