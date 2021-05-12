#
class Review < ApplicationRecord
  RANGE = (0..5)
  validates :restaurant_id, presence: true
  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true },
  inclusion: { in: RANGE }
  belongs_to :restaurant
end
