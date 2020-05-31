class Review < ApplicationRecord
  belongs_to :villa
  belongs_to :user
end
