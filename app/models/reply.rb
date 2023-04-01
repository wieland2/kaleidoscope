class Reply < ApplicationRecord
  belongs_to :comment
  belongs_to :user
  has_many :likes, dependent: :destroy
  validates :content, length: { maximum: 120 }
end
