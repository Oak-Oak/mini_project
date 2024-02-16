class WatchItem < ApplicationRecord
    validates :title, presence: true
    validates :genre, presence: true
    validates :completed, inclusion: { in: [true, false] }
  end
  