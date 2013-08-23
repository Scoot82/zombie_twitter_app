class TweetsController < ApplicationController
  
  def new
    @tweet = Tweet.new
  end
  
  def create
    @tweet = Tweet.new(params[:tweet])
    @tweet.save
    redirect_to tweets_path
  end
  
  def index
    @tweets = Tweet.all
  end
  
  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    redirect_to tweets_path
  end
  
end
