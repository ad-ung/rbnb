class Feature < ApplicationRecord
  belongs_to :villa
  validates :guest_nb, presence: true, numericality: { only_integer: true }
  validates :bedroom_nb, presence: true, numericality: { only_integer: true }
  validates :bathroom_nb, presence: true, numericality: { only_integer: true }
end
