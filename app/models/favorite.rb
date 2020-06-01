class Favorite < ApplicationRecord
  belongs_to :villa
  belongs_to :user

  validates :villa_id, uniqueness: { scope: :user_id }
end
