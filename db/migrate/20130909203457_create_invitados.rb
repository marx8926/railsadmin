class CreateInvitados < ActiveRecord::Migration
  def change
    create_table :invitados do |t|
      t.string :nombres, limit: 100
      t.string :apellidos, limit: 100
      t.string :telefono, limit: 20
      t.string :celular, limit: 20
      t.string :email, limit: 200

      t.timestamps
    end
  end
end
