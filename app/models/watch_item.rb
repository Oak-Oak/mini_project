class WatchItem < ApplicationRecord
  has_one_attached :image

  validates :title, presence: true
  validates :genre, presence: true
  validates :summary, presence: true
end
