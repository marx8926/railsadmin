class AddIglesiaRefToAvanzada < ActiveRecord::Migration
  def change
    add_reference :avanzadas, :iglesia, index: true
  end
end
