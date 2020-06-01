class Review < ApplicationRecord
  belongs_to :villa
  belongs_to :user

  validates :content, presence: true
end
