class Tweet < ActiveRecord::Base
  attr_accessible :status, :location, :user_id
  belongs_to :user
end
