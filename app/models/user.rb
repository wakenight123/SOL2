class User < ApplicationRecord
  has_secure_password
  
  has_many :experiences
  has_many :participants, through: :experiences

  validates_presence_of :first_name, :last_name, :email, :password_digest
end
