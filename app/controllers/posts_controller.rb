class PostsController < ApplicationController
before_action :set_posts, only: [:index, :new, :create]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @user = User.find(current_user.id)
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @post.channel_id = @channel.id
    if @post.save
      redirect_to channel_path(@channel)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to @post.channel
  end


  private

  def set_posts
    @channel = Channel.find(params[:channel_id])
  end

  def post_params
    params.require(:post).permit(:content, :user_id, :channel_id)
  end
end
