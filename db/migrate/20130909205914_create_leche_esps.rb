class CreateLecheEsps < ActiveRecord::Migration
  def change
    create_table :leche_esps do |t|
      t.string :autor, limit: 100
      t.string :resumen, limit: 300
      t.integer :numero
      t.date :creacion

      t.timestamps
    end
  end
end
