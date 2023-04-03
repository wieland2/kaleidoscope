class LikesController < ApplicationController
  def index
    @likes = Like.all
  end

  private

  def channel_params
    params.require(:like).permit(:user_id, :channel_id, :reply_id, :post_id, :comment_id)
  end
end
