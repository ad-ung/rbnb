class Villa < ApplicationRecord
  has_many :bookings
  has_many :reviews
  has_many :favorites

  validates :name, presence: true, length: { minimum: 8 }
  validates :description, presence: true, length: { maximum: 500, too_long: "%{count} characters is the maximum allowed" }
  validates :city, presence: true
  validates :price_per_day, presence: true, numericality: { only_integer: true }
  validates :address, presence: true
end
