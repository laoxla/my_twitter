class TweetsController < ApplicationController


  before_action :authenticate_user!

  def index
    @users = User.where("id != ?", @current_user.id)
    @people = @current_user.following_users

  end

  def show
    @tweet = Tweet.find params[:id]

  end

  def new
     @tweet = Tweet.new
  end

  def create
   @tweet = Tweet.new(article_params)
   if @tweet.save
     redirect_to root_path
   else
     render :new
   end
 end

  def edit
    @tweet = Tweet.find params[:id]
  end

  def delete
    @tweet = Tweet.find params[:id]
    @tweet.destroy
    redirect_to root_path
  end

  def like
      @tweet = Tweet.find params[:id]
      @tweet.update view_count: (@tweet.view_count + 1)
      redirect_to root_path
    end

end
