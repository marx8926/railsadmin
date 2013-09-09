class CreateArchivos < ActiveRecord::Migration
  def change
    create_table :archivos do |t|
      t.string :titulo, limit: 100
      t.text :path
      t.text :key

      t.timestamps
    end
  end
end
