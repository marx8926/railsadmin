class AddUbigeoRefToIglesia < ActiveRecord::Migration
  def change
    add_reference :iglesia, :ubigeo, index: true
  end
end
