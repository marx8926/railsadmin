class Peticion < ActiveRecord::Base
	has_many	:respuesta
	has_one	:invitado
	belongs_to :persona
end
