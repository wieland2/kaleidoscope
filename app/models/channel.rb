class Channel < ApplicationRecord
  belongs_to :user
  has_many :posts, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :bookmarks, dependent: :destroy
  validates :description, length: { maximum: 150, too_long: "%{count} characters is the maximum allowed" }
  validates :title, presence: true
  validates :title, length: { maximum: 50}
end
