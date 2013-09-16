class Persona < ActiveRecord::Base
  belongs_to :lugar
  has_many	:persona
  has_many	:red_social
  has_many	:peticion
  has_one	:convertido
  belongs_to :ubigeo
  belongs_to	:iglesia
  belongs_to	:estado_civil
  belongs_to	:red
end
