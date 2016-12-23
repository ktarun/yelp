class Tag < ApplicationRecord
  # Direct associations

  belongs_to :tag_name

  belongs_to :business

  # Indirect associations

  # Validations

end
