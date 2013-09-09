class Ubigeo < ActiveRecord::Base
	belongs_to	:iglesia
	has_many	:red
	has_many	:avanzada
	has_many	:celula
	has_many	:persona
end
