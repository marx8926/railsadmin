class AddUbigeoRefToCelula < ActiveRecord::Migration
  def change
    add_reference :celulas, :ubigeo, index: true
  end
end
