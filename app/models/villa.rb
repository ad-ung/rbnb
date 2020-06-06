class Villa < ApplicationRecord
  has_many :bookings
  has_many :reviews
  has_many :favorites
  has_one :feature

  validates :name, presence: true, length: { minimum: 8 }
  validates :description, presence: true, length: { maximum: 600, too_long: "%{count} characters is the maximum allowed" }
  validates :city, presence: true
  validates :price_per_day, presence: true, numericality: { only_integer: true }
  validates :address, presence: true
  
def unavailable_dates
  bookings.map { |b| b.starts_on..b.ends_on } [0]
end

def unavailable_dates_bis #for datepicker only
  bookings.pluck(:starts_on, :ends_on).map do |range|
    { from: range[0].strftime("%d/%m/%Y"), to: range[1].strftime("%d/%m/%Y") }
  end
end 