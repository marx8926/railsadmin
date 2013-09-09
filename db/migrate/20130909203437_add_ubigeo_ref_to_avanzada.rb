class AddUbigeoRefToAvanzada < ActiveRecord::Migration
  def change
    add_reference :avanzadas, :ubigeo, index: true
  end
end
