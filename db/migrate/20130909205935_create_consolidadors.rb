class CreateConsolidadors < ActiveRecord::Migration
  def change
    create_table :consolidadors do |t|
      t.string :nombre, limit: 300
      t.date :inicio
      t.date :fin
      t.boolean :termino
      t.boolean :pausa
      t.string :detalle, limit: 300

      t.timestamps
    end
  end
end
