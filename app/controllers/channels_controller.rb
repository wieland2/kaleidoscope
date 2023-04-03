class ChannelsController < ApplicationController
before_action :set_channel, only: [:show, :edit, :update, :destroy]
  def index
    @channels = Channel.all
  end

  def show
  end

  def new
    @channel =  Channel.new
  end

  def create
    @user = User.find(current_user.id)
    @channel = Channel.new(channel_params)
    @channel.user_id = current_user.id
    if @channel.save
      redirect_to channel_path(@channel)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @channel.update(channel_params)
    redirect_to channel_path(@channel)
  end

  def destroy
    @channel.destroy
    redirect_to current_user, status: :see_other
  end

  private

  def set_channel
    @channel = Channel.find(params[:id])
  end


  def channel_params
    params.require(:channel).permit(:title, :description, :user_id)
  end
end
