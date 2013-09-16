class EstadoCivil < ActiveRecord::Base
  has_many :regla
  has_many :persona
end
