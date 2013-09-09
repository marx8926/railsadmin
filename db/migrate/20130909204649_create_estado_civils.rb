class CreateEstadoCivils < ActiveRecord::Migration
  def change
    create_table :estado_civils do |t|
      t.string :nombre, limit: 80
      t.references :regla, index: true

      t.timestamps
    end
  end
end
