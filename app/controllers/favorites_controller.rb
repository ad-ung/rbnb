class FavoritesController < ApplicationController

  def index
    @favorites = Favorite.all
  end

  def create
    @villa = Villa.find(params[:villa_id])
    @favorite = Favorite.new
    @favorite.villa = @villa
    @favorite.user = current_user
    @favorite.save
  end



  def destroy
    @villa = Villa.find(params[:id])
    @favorite = Favorite.where(user_id: current_user.id, villa_id: @villa.id)
    Favorite.destroy(@favorite.first.id)
  end

  private


end
