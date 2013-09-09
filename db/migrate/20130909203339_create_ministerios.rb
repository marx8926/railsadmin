class CreateMinisterios < ActiveRecord::Migration
  def change
    create_table :ministerios do |t|
      t.string :nombre, limit: 100
      t.date :creacion
      t.string :descripcion, limit: 400

      t.timestamps
    end
  end
end
