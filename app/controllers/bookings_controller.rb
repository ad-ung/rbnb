class BookingsController < ApplicationController

  def create
    @villa = Villa.find(params[:villa_id])
    @booking = Booking.new(booking_params)
    @booking.villa = @villa
    @booking.user = current_user
    @booking.save
  end

  def index
    @bookings_future = Booking.where(user: current_user).where('starts_on > ?', DateTime.now)
    @bookings_past = Booking.where(user: current_user).where('starts_on < ?', DateTime.now)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_on, :ends_on)
  end
end


