class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :replies, dependent: :destroy
  validates :content, presence: true
  validates :content, length: { maximum: 120}
end
