class BookingsController < ApplicationController
  def index
  end

  def create
    @villa = Villa.find(params[:id])
    @booking = Booking.new(booking_params)
    @booking.villa = @villa
    @booking.user = current.user
    @booking.save
  end

  def show
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end


