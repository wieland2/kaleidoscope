class Channel < ApplicationRecord
  belongs_to :user
  has_many :posts
  has_many :likes
  has_many :bookmarks
  validates :description, length: { maximum: 150, too_long: "%{count} characters is the maximum allowed" }
  validates :title, presence: true
end
