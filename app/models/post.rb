class Post < ApplicationRecord
  belongs_to :user
  belongs_to :channel
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :bookmarks, dependent: :destroy
  validates :content, length: { maximum: 400 }
  validates :content, presence: true
end
