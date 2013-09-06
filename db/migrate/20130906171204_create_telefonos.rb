class CreateTelefonos < ActiveRecord::Migration
  def change
    create_table :telefonos do |t|
      t.string :numero, limit: 16
      t.string :tipo, limit: 3
      t.references :persona, index: true

      t.timestamps
    end
  end
end
