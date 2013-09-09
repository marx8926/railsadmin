class CreateHerramientaConvertidos < ActiveRecord::Migration
  def change
    create_table :herramienta_convertidos do |t|
      t.date :inicio
      t.date :fin
      t.string :detalle, limit: 300
      t.references :herramienta, index: true

      t.timestamps
    end
  end
end
