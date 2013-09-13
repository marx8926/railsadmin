class CreateReds < ActiveRecord::Migration
  def change
    create_table :reds do |t|
      t.string :code, limit: 10
      t.integer :tipo
      t.string :direccion, limit: 300
      t.string :referencia, limit: 350
      t.float :latitud
      t.float :longitud
      t.boolean :activo
      t.date :fin
      t.date :creacion

      t.timestamps
    end

    add_index :reds, :code, :unique=>true, :name=>'red_index'
  end
end
