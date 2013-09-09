class AddInvitadoRefToPeticion < ActiveRecord::Migration
  def change
    add_reference :peticions, :invitado, index: true
  end
end
