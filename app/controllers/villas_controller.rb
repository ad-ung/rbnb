class VillasController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @villas = Villa.all
  end

  def show
    @villa = Villa.find(params[:id])
    @booking = Booking.new
  end
end
