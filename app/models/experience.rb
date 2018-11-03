class Experience < ApplicationRecord
  belongs_to :user
  has_many :participants
  has_many :tags
  has_many :types
  has_many :themes

  validates_presence_of :name

  def titlelize #capitalize first letter of experience
    "#{self.name.split(' ')[0].capitalize} " + self.name.split(' ').drop(1).join(' ')
  end

  def self.total_experiences
    Experience.all.count
  end

end
