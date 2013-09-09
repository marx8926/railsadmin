class AddUbigeoRefToRed < ActiveRecord::Migration
  def change
    add_reference :reds, :ubigeo, index: true
  end
end
