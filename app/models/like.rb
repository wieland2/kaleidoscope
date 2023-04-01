class Like < ApplicationRecord
  belongs_to :user
  belongs_to :comment
  belongs_to :channel
  belongs_to :post
  validates :user_id, uniqueness: {scope: :post_id}
  validates :user_id, uniqueness: {scope: :channel_id}
  validates :user_id, uniqueness: {scope: :comment_id}
  validates :user_id, uniqueness: {scope: :reply_id}
end
