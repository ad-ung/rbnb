class BookingsController < ApplicationController
  def index
  end

  def create
    @villa = Villa.find(params[:villa_id])
    @booking = Booking.new(booking_params)
    @booking.villa = @villa
    @booking.user = current_user
    @booking.save
  end

  def show
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_on, :ends_on)
  end
end


