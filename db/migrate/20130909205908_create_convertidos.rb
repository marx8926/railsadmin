class CreateConvertidos < ActiveRecord::Migration
  def change
    create_table :convertidos do |t|
      t.date :conversion
      t.string :detalle, limit: 255
      t.boolean :termino_h
      t.boolean :inicio_h
      t.boolean :termino_l_e
      t.date :inicio_l
      t.date :termino_h
      t.date :termino_l
      t.references :persona, index: true
      t.references  :consolidador, index: true

      t.timestamps
    end
  end
end
