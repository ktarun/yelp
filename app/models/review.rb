class Review < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  # Direct associations

  belongs_to :user

  belongs_to :businesses,
             :foreign_key => "business_id"

  # Indirect associations

  # Validations

end
