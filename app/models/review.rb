class Review < ApplicationRecord
  belongs_to :villa
  belongs_to :user

  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: { in: [1, 2, 3, 4, 5]}
  validates :title, presence: true
end
