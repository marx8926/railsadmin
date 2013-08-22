class CreateReds < ActiveRecord::Migration
  def change
    create_table :reds do |t|
      t.string :code
      t.string :tipo
      t.string :direccion
      t.string :referencia
      t.float :latitud
      t.float :longitud

      t.timestamps
    end
  end
end
