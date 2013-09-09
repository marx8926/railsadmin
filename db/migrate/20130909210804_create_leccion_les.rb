class CreateLeccionLes < ActiveRecord::Migration
  def change
    create_table :leccion_les do |t|
      t.string :titulo, limit: 100
      t.references :leche_esp, index: true
      t.references :archivo, index: true

      t.timestamps
    end
  end
end
