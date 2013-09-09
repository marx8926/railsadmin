class CreateIglesia < ActiveRecord::Migration
  def change
    create_table :iglesia do |t|
      t.date :creacion
      t.string :direccion, limit: 300
      t.string :referencia, limit: 350
      t.float :latitud
      t.float :longitud

      t.timestamps
    end
  end
end
