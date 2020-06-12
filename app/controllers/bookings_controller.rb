class BookingsController < ApplicationController
  before_action :only_see_own_bookings, only: [:show]

  def create
    @villa = Villa.find(params[:villa_id])
    @booking = Booking.new(booking_params)
    @booking.villa = @villa
    @booking.user = current_user
    @booking.save
  end

  def index
<<<<<<< HEAD
    @bookings = Booking.where(user: current_user)
=======
    @bookings_future = Booking.where(user: current_user).where('starts_on > ?', DateTime.now)
    @bookings_past = Booking.where(user: current_user).where('starts_on < ?', DateTime.now)
>>>>>>> 1153a761177f671a7abfd62b8f0be19f1acbe8fb
  end

  def show
    # @booking = Booking.find(params[:id])
    @markers = [ {
      lat: @booking.villa.latitude,
      lng: @booking.villa.longitude
    } ]
    @review = Review.new
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_on, :ends_on)
  end

  def only_see_own_bookings
    @booking = Booking.find(params[:id])
    if current_user != @booking.user
      redirect_to bookings_path, notice: "Désolé, vous n'avez pas accès à cette page."
    end
  end
end


