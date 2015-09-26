class TweetsController < ApplicationController


  before_action :authenticate_user!

  def index
    @users = User.where("id != ?", @current_user.id)
    @people = @current_user.following_users

  end

  def show
  end

  def new
  end

  def edit
  end

  def delete
  end
end
