class Iglesia < ActiveRecord::Base
	has_one	:ubigeo
	has_many	:ministerio
	has_many	:red
	has_many	:avanzada
	has_many	:persona
end
