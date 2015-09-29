class TweetsController < ApplicationController


  before_action :authenticate_user!

  def index
    @users = User.where("id != ?", @current_user.id)
    group = @current_user.following_users

   follower_ids = group.pluck(:id)
   all_ids = follower_ids << @current_user.id
    @people = Tweet.where(user_id: all_ids).order("post_at DESC")
  end


  def show
    @tweet = Tweet.find params[:id]

  end

  def new
     @tweet = Tweet.new
  end

  def create
   @tweet = Tweet.new tweet_params
   @tweet = @current_user
   if @tweet.save
     redirect_to root_path
   else
     render :new
   end
 end

  def edit
    @tweet = @current_user.tweets.find params[:id]

  end

  def update
    @tweet = @current_user.tweets.find params[:id]
   if @tweet.update params.require(:tweet).permit(:text)
     redirect_to root_path
   else
     render :edit
   end
 end


  def delete
    @tweet = @current_user.tweets.find params[:id]
    # @tweet = Tweet.find params[:id]
    @tweet.destroy
    redirect_to root_path
  end


  def like
      @tweet = Tweet.find params[:id]
      @tweet.update view_count: (@tweet.view_count + 1)
      redirect_to root_path
    end

    def tweet_params
     params.require(:tweet).permit(:text, :user_id)
   end

end
