class User < ActiveRecord::Base
  attr_accessible :login, :password, :password_confirmation, :email, :location, :death, :image
  has_secure_password
  has_many :tweets, dependent: :destroy
  mount_uploader :image, ImageUploader
end
