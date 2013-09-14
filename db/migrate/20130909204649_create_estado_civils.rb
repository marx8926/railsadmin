class CreateEstadoCivils < ActiveRecord::Migration
  def change
    create_table :estado_civils do |t|
      t.string :nombre, limit: 80


      t.timestamps
    end
  end
end
