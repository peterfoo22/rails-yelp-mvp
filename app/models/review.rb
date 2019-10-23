class Review < ApplicationRecord
  belongs_to :restaurant
  validates_associated :restaurant
  OPTIONS = [0, 1, 2, 3, 4, 5]

  validates_numericality_of :rating
  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: OPTIONS }
end
