class AddPeticionRefToRespuesta < ActiveRecord::Migration
  def change
    add_reference :respuesta, :peticion, index: true
  end
end
