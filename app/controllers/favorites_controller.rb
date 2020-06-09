class FavoritesController < ApplicationController

  def index
    @favorites = Favorite.all
  end

  def create
    @villa = Villa.find(params[:villa_id])
    @favorite = Favorite.new
    @favorite.villa = @villa
    @booking.user = current_user
    @booking.save
  end
end
