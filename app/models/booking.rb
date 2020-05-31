class Booking < ApplicationRecord
  belongs_to :villa
  belongs_to :user
end
