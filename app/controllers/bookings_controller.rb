class BookingsController < ApplicationController

  def create
    @villa = Villa.find(params[:villa_id])
    @booking = Booking.new(booking_params)
    @booking.villa = @villa
    @booking.user = current_user
    @booking.save
  end

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
    @markers = [ {
      lat: @booking.villa.latitude,
      lng: @booking.villa.longitude
    } ]
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_on, :ends_on)
  end
end


