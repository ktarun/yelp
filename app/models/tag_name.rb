class TagName < ApplicationRecord
  # Direct associations

  has_many   :tags,
             :dependent => :destroy

  # Indirect associations

  has_many   :businesses,
             :through => :tags,
             :source => :business

  # Validations

end
