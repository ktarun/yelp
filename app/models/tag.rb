class Tag < ApplicationRecord
  # Direct associations

  has_many   :cuisines,
             :dependent => :destroy

  # Indirect associations

  has_many   :businesses,
             :through => :cuisines,
             :source => :businesses

  # Validations

end
