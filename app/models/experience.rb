class Experience < ApplicationRecord
  belongs_to :user
  has_many :participants
  has_many :tags
  has_many :types
  has_many :themes

  validates_presence_of :name

end
