class BookingsController < ApplicationController

  def create
    @villa = Villa.find(params[:villa_id])
    @booking = Booking.new(booking_params)
    @booking.villa = @villa
    @booking.user = current_user
    @booking.save
  end

  def index

    @bookings_future = []
    @bookings_past = []
    Booking.all.each do |booking|
      if booking.starts_on > Time.now
        @bookings_future << booking
      else
        @bookings_past << booking
      end
    end


  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_on, :ends_on)
  end
end


