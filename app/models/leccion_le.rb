class LeccionLe < ActiveRecord::Base
  belongs_to :leche_esp
  belongs_to :archivo
end
