class Review < ApplicationRecord
  validates :content, presence: true
  validates :rating, numericality: true
  validates :rating, presence: true, inclusion: { in: [0, 1, 2, 3, 4, 5] }

  belongs_to :restaurant
end
