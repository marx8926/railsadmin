class CreatePeticions < ActiveRecord::Migration
  def change
    create_table :peticions do |t|
      t.string :descripcion, limit: 400

      t.timestamps
      t.references :persona, index: true
    end
  end
end
