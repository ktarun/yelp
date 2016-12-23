class Ownership < ApplicationRecord
  # Direct associations

  has_many   :businesses,
             :dependent => :destroy

  belongs_to :user

  # Indirect associations

  # Validations

end
