class Review < ApplicationRecord
  RATINGS = [0, 1, 2, 3, 4, 5]
  belongs_to :cocktail
  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true }, inclusion: { in: RATINGS }
end
