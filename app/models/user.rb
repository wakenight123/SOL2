class User < ApplicationRecord
  has_many :experiences
  has_many :participants, through: :experiences
end
