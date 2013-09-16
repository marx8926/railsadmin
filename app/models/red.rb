class Red < ActiveRecord::Base
	belongs_to	:iglesia
	belongs_to	:ubigeo
	has_many	:persona
end
