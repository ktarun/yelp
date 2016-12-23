class Business < ApplicationRecord
  # Direct associations

  has_many   :cuisines,
             :foreign_key => "businesses_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
