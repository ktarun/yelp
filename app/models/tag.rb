class Tag < ApplicationRecord
  # Direct associations

  has_many   :cuisines,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
