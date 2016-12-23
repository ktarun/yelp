class Review < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  # Direct associations

  belongs_to :user

  belongs_to :businesses

  # Indirect associations

  # Validations

end
