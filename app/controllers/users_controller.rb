class UsersController < ApplicationController
  def index
    @post_new = Post.new
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end
  
  def create

  end
  
  private

end
