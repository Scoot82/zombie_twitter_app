class User < ActiveRecord::Base
  attr_accessible :login, :password, :password_confirmation, :email, :location, :death
  has_secure_password
  has_many :tweets, dependent: :destroy
end
