class AddTelefonoToRed < ActiveRecord::Migration
  def change
    add_column :reds, :telefono, :string
  end
end
