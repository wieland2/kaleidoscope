class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @user_channels = Channel.where(user_id: params[:id])
    @posts = Post.where(user_id: params[:id])
  end

  def index
    @users = User.all
  end
end
