class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @user_channels = Channel.where(user_id: params[:id])
  end
end
