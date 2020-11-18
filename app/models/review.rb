class Review < ApplicationRecord
  belongs_to :restaurant

  RATINGS = (0..5).to_a

  validates :rating, presence: true
  validates :content, presence: true

  validates :rating, inclusion: { in: RATINGS }, numericality: { only_integer: true }

end
