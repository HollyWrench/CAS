class Event < ApplicationRecord
  validates :name, presence: true
  validates :location, presence: true
  validates :price, presence: true
  CATEGORIES = ["social", "seminar", "other"]
  validates :category, inclusion: { in: CATEGORIES, message: "Please enter a valid category - social, seminar, other" }
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  validates :description, presence: true
  # validates :category, inclusion: { in: %(social seminar other),
                                    # message: "Please enter a valid type: social, seminar, or other." }
  has_one_attached :photo
end
