class TweetsController < ApplicationController
  
  def new
    @tweet = Tweet.new
  end
  
  def create
    @tweet = Tweet.new(params[:tweet])
    @tweet.save
    redirect_to users_path
  end
  
end
