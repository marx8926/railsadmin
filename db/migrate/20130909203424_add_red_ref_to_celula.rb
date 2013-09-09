class AddRedRefToCelula < ActiveRecord::Migration
  def change
    add_reference :celulas, :red, index: true
  end
end
