class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  has_many :likes
  has_many :replies
  validates :content, presence: true
  validates :content, length: { maximum: 120}
end
