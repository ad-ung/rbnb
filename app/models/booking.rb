class AvailabilityValidator < ActiveModel::EachValidator

  def validate_each(record, attribute, value)
    bookings = Booking.where(["villa_id =?", record.villa_id])
    date_ranges = bookings.map { |b| b.starts_on..b.ends_on }

    date_ranges.each do |range|
      if range.include? value
        record.errors.add(attribute, "not available")
      end
    end
  end
end

class Booking < ApplicationRecord
  belongs_to :villa
  belongs_to :user

  validates :starts_on, :ends_on, presence: true, availability: true
  validate :ends_on_after_starts_on

  private

  def ends_on_after_starts_on
    return if ends_on.blank? || starts_on.blank?

    if ends_on < starts_on
      errors.add(:ends_on, "must be after the start date")
    end
  end
end
