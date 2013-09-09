class Convertido < ActiveRecord::Base
  belongs_to :persona
  has_many :descartar
end
