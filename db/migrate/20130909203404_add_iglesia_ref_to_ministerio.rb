class AddIglesiaRefToMinisterio < ActiveRecord::Migration
  def change
    add_reference :ministerios, :iglesia, index: true
  end
end
