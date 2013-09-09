class CreateMiembros < ActiveRecord::Migration
  def change
    create_table :miembros do |t|
      t.integer :estado
      t.date :retiro
      t.date :inicio
      t.string :detale, limit: 500

      t.timestamps
    end
  end
end
