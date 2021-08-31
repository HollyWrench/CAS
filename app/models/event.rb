class Event < ApplicationRecord
  validates :name, presence: true
  validates :location, presence: true
  validates :price, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  validates :description, presence: true
  has_one_attached :photo
end
