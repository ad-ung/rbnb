class BookingsController < ApplicationController
  def index
    @bookings= Booking.all? { |e|  }
  end

  def create
  end

  def show
  end
end
