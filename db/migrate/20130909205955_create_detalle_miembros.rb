class CreateDetalleMiembros < ActiveRecord::Migration
  def change
    create_table :detalle_miembros do |t|
      t.string :tipo, limit: 10
      t.boolean :activo
      t.date :fecha_asig
      t.date :fecha_retiro
      t.date :fecha_pausa

      t.timestamps
    end
  end
end
