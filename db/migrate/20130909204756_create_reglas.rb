class CreateReglas < ActiveRecord::Migration
  def change
    create_table :reglas do |t|
      t.string :regla, limit: 200
      t.integer :desde
      t.integer :hasta
      t.references :estado_civil, index: true
      t.timestamps
    end
  end
end
