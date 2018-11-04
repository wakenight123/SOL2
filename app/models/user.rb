class User < ApplicationRecord
  has_secure_password
  mount_uploader :avatar, AvatarUploader

  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h
  after_update :crop_avatar

  def crop_avatar
    avatar.recreate_versions! if crop_x.present?
  end

  has_many :experiences
  has_many :participants, through: :experiences

  validates_presence_of :first_name, :last_name, :email, :password_digest
end
