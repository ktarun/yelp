class Review < ApplicationRecord
  # Direct associations

  belongs_to :user

  belongs_to :businesses

  # Indirect associations

  # Validations

end
