class Like < ApplicationRecord
  belongs_to :user
  belongs_to :comment, optional: true
  belongs_to :channel, optional: true
  belongs_to :post, optional: true
  belongs_to :reply, optional: true
  validates :user_id, uniqueness: {scope: :post_id}
  validates :user_id, uniqueness: {scope: :channel_id}
  validates :user_id, uniqueness: {scope: :comment_id}
  validates :user_id, uniqueness: {scope: :reply_id}
end
