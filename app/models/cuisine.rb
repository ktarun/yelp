class Cuisine < ApplicationRecord
  # Direct associations

  belongs_to :tag

  belongs_to :businesses

  # Indirect associations

  # Validations

end
