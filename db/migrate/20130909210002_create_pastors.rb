class CreatePastors < ActiveRecord::Migration
  def change
    create_table :pastors do |t|
      t.date :inicio
      t.date :fin
      t.integer :tipo
      t.string :detalle, limit: 300
      t.string :estado, limit: 100

      t.timestamps
    end
  end
end
