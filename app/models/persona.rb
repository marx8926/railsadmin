class Persona < ActiveRecord::Base
  belongs_to	:lugar
  has_one	:convertido
  belongs_to	:ubigeo
  has_many	:red_socials
  has_many	:peticions
  has_many	:telefonos
end
