class Business < ApplicationRecord
  # Direct associations

  belongs_to :ownership

  has_many   :reviews,
             :foreign_key => "businesses_id",
             :dependent => :destroy

  has_many   :cuisines,
             :foreign_key => "businesses_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
