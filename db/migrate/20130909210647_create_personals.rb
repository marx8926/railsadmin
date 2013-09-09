class CreatePersonals < ActiveRecord::Migration
  def change
    create_table :personals do |t|
      t.date :inicio_contrato
      t.date :pausa
      t.date :fin_contrato
      t.boolean :pausa
      t.boolean :fin
      t.date :fin_inesperado

      t.timestamps
    end
  end
end
