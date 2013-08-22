class Tweet < ActiveRecord::Base
  scope :recent, -> { order('created_at desc').limit(10) }
  attr_accessible :status, :location, :user_id
  belongs_to :user
end
