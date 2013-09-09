class CreateHerramienta < ActiveRecord::Migration
  def change
    create_table :herramienta do |t|
      t.string :nombre, limit: 100
      t.integer :duracion
      t.integer :repeticion

      t.timestamps
    end
  end
end
