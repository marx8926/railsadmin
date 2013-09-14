class CreateLugars < ActiveRecord::Migration
  def change
    create_table :lugars do |t|
      t.string :nombre, limit: 40

      t.timestamps
    end
  end
end
