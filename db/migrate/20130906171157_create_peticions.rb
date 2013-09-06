class CreatePeticions < ActiveRecord::Migration
  def change
    create_table :peticions do |t|
      t.string :descripcion, limit: 400

      t.timestamps
    end
  end
end
