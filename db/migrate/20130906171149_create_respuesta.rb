class CreateRespuesta < ActiveRecord::Migration
  def change
    create_table :respuesta do |t|
      t.integer :estado
      t.string :detalle, limit: 255
      t.references :peticion, index: true

      t.timestamps
    end
  end
end
