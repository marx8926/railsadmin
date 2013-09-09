class AddIglesiaRefToRed < ActiveRecord::Migration
  def change
    add_reference :reds, :iglesia, index: true
  end
end
