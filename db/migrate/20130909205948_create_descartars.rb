class CreateDescartars < ActiveRecord::Migration
  def change
    create_table :descartars do |t|
      t.date :fecha
      t.string :detalle, limit: 300
      t.references :convertido, index: true
      t.timestamps
    end
  end
end
