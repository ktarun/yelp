class User < ApplicationRecord
  # Direct associations

  has_many   :owners,
             :class_name => "Ownership",
             :dependent => :destroy

  has_many   :reviews,
             :dependent => :destroy

  # Indirect associations

  has_many   :businesses,
             :through => :owners,
             :source => :businesses

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
