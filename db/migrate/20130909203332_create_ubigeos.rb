class CreateUbigeos < ActiveRecord::Migration
  def change
    create_table :ubigeos do |t|
      t.integer :nUbigeo_id
      t.string :cUbigeoDesc, limit: 50
      t.integer :nUbigeoDpt
      t.integer :nUbigeoProv
      t.integer :nUbigeoDist
      t.integer :nUbigeoDep
      t.float :nUbigeoLat
      t.float :nUbigeoLng

      t.timestamps
    end
  end
end
